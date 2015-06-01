package compiler.semantic;


import compiler.STL.Getchar;
import compiler.STL.Malloc;
import compiler.STL.Printf;
import compiler.ast.nodes.*;
import compiler.ast.nodes.Symbol;
import compiler.ast.visitor.Visitor;
import compiler.tables.MemberTable;
import compiler.tables.SUTable;
import compiler.tables.VarTable;

import java.io.OutputStream;
import java.util.LinkedList;
import java.util.List;

import static java.lang.Integer.*;

/**
 * Created by Chen on 2015/4/27.
 */


/*
* TODO list:
* 1.modify the lexer
* */
public class SemanticCheck implements Visitor {
    public SUTable suTable;
    public VarTable varTable;

    private int inPrmtr;

    public SemanticCheck() {
        inPrmtr = 0;
        functionStack = new LinkedList<>();
        loopStack = new LinkedList<>();
        suTable = new SUTable();
        varTable = new VarTable();
        stl = new LinkedList<>();
        loadSTL();
    }

    private LinkedList<FunctionDef> stl;
    private void loadSTL() {
        stl.add(new Malloc());
        stl.add(new Getchar());
        stl.add(new Printf());
        for (FunctionDef functionDef : stl) {
            varTable.add(functionDef.name.num, functionDef.type);
        }
    }

    public void setOutputStream(OutputStream out){
    }

    /*
    * In order to check whether the BreakStmt and ContinueStmt is in a loop,
    * we need to build a loop stack,
    * and the operations include
    * pushLoop(), popLoop(), topLoop(), inLoop().
    * */
    private LinkedList<ItrStmt> loopStack;

    private void pushLoop(ItrStmt itrStmt) {
        loopStack.push(itrStmt);
    }

    private ItrStmt popLoop() {
        return loopStack.pop();
    }

    private ItrStmt topLoop() {
        return loopStack.peek();
    }

    private boolean inLoop() {
        return (!loopStack.isEmpty());
    }


    /*
    * Similarly, considering the return statement must be in the body of a function
    * we should build a function stack to check whether the present statement is in a function
    * the operation include
    * pushFunction(), popFunction(), topFunction(), inFunction()
    * */
    private LinkedList<FunctionDef> functionStack;

    private void pushFunction(FunctionDef functionDef) {
        functionStack.push(functionDef);
    }

    private FunctionDef popFunction() {
        return functionStack.pop();
    }

    private FunctionDef topFunction() {
        return functionStack.peek();
    }

    private boolean inFunction() {
        return (!functionStack.isEmpty());
    }


    public boolean checkICP(Type type) {
        return (type instanceof IntType || type instanceof CharType || type instanceof PointerType);
    }

    public boolean checkIC(Type type) {
        return (type instanceof IntType || type instanceof  CharType);
    }

    public boolean isGlobal() {
        return functionStack.isEmpty();
    }

    public boolean typeEqual(Type t1, Type t2) {
        if (t1 instanceof IntType && t2 instanceof IntType) return true;
        if (t1 instanceof CharType && t2 instanceof CharType) return true;
        if (t1 instanceof VoidType && t2 instanceof VoidType) return true;
        if (t1 instanceof ArrayType && t2 instanceof ArrayType) {
            boolean tmp = ((ArrayType) t1).size == ((ArrayType) t2).size;
            tmp = tmp && typeEqual(((ArrayType) t1).baseType, ((ArrayType) t2).baseType);
            return tmp;
        }
        if (t1 instanceof PointerType && t2 instanceof PointerType) {
            if (typeEqual(((PointerType) t1).baseType, ((PointerType) t2).baseType)) return true;
        }
        if (t1 instanceof FunctionType && t2 instanceof FunctionType) {
            boolean tmp = ((FunctionType) t1).returnType.equals(((FunctionType) t2).returnType);
            tmp = tmp && (((FunctionType) t1).prmtrs.size() == ((FunctionType) t2).prmtrs.size());
            if (!tmp) {
                for (int i = 0; i < ((FunctionType) t1).prmtrs.size(); i++) {
                    if (!typeEqual(((FunctionType) t1).prmtrs.get(i), ((FunctionType) t2).prmtrs.get(i))){
                        tmp = false;
                        break;
                    }
                }
            }
            return tmp;
        }
        if (t1 instanceof StructType && t2 instanceof StructType){
            return ((StructType) t1).members.equals(((StructType) t2).members)
                    && (((StructType) t1).name.toString().equals(((StructType) t2).name.toString())
                        || ((StructType) t1).name.toString().length() == 0
                            && ((StructType) t2).name.toString().length() == 0);
        }
        if (t1 instanceof UnionType && t2 instanceof  UnionType){
            return ((UnionType) t1).members.equals(((UnionType) t2).members)
                    && (((UnionType) t1).name.toString().equals(((UnionType) t2).name.toString())
                    || ((UnionType) t1).name.toString().length() == 0
                    && ((UnionType) t2).name.toString().length() == 0);
        }
        return false;
    }

    public boolean isVoidPointter(Type type) {
        if (type instanceof PointerType)
            return ((PointerType) type).baseType instanceof VoidType;
        else
            return false;
    }
    /*
    * Check the initializer of variable declaration valid or not
    * */
    public void initCheck(Type type, Initializer init) throws RuntimeException{
        if (type instanceof ArrayType) {
            ArrayType arrayType = (ArrayType) type;
            if (init instanceof InitList) {
                List<Initializer> list = ((InitList) init).inits;
                if ((Integer)arrayType.arraySize.returnType.value < list.size()) {
                    throw new RuntimeException("Initializer is too long");
                }
                else {
                    for (Initializer initializer : list)
                        initCheck(arrayType.baseType, initializer);
                }
            }
            else {
                if (((InitValue) init).expr instanceof StringConst){
                    int length = ((String) ((InitValue) init).expr.returnType.value).length();
                    if (arrayType.baseType instanceof CharType) {
                        if ((Integer) arrayType.arraySize.returnType.value < length)
                            throw new RuntimeException("String initializer is too long");
                    }
                    if (arrayType.baseType instanceof IntType) {
                        if ((Integer) arrayType.arraySize.returnType.value < length * 4)
                            throw new RuntimeException("String initializer is too long");
                    }
                }
                else {
                    throw new RuntimeException("The array is not properly initialized");
                }
            }
        }
        else {
            if (type instanceof PointerType) {
                if (init instanceof InitList) {
                    /*
                    * Nothing is needed here
                    * example: int *a = {{1}, {2}};
                    *          int *a = {"fasf"};
                    * They are all right.
                    * Actually, we don't do this as there is no such data
                    * */
                 }
                else {
                    InitValue initValue = (InitValue) init;
                    if (!(checkICP(initValue.expr.returnType)))
                        throw new RuntimeException("Pointer type is not properly initialized");
                }
            }
            else {
                if (init instanceof InitList) {
                    //throw new RuntimeException("Non pointer type initializer is not a list");
                    initCheck(type, ((InitList) init).inits.get(0));
                }
                else {
                    InitValue initValue = (InitValue) init;
                    if (!(typeEqual(type, initValue.expr.returnType)
                            || (checkIC(type) && checkIC(initValue.expr.returnType))
                            ||(type instanceof CharType && ((InitValue) init).expr instanceof StringConst)
                            ))
                        throw new RuntimeException("Non pointer type is not properly initialized");
                }
            }
        }
    }

    public void visit(AST ast) {
        ast.decls.accept(this);
    }

    public void visit(DeclList declList) {
        for (Decl decl : declList.decls)
            decl.accept(this);
    }

    public void visit(VarDecl varDecl) throws RuntimeException{
        varDecl.name.accept(this);
        varDecl.type.accept(this);
        if (varTable.containsInThisScope(varDecl.name.num)) {
            if (!(isGlobal()
                    && typeEqual(varDecl.type, varTable.getType(varDecl.name.num))
                    && isVoidPointter(varDecl.type) == isVoidPointter(varTable.getType(varDecl.name.num))))
                throw new RuntimeException("Redeclared the variable: " +  varDecl.name.toString());
            else {

                if (varTable.defined(varDecl.name.num)) {
                    if (varDecl.init != null)
                        throw new RuntimeException("Redefined the variable: " + varDecl.name.toString());
                }
                else
                    if (varDecl.init != null){
                        varDecl.init.accept(this);
                        initCheck(varDecl.type, varDecl.init);
                        varTable.define(varDecl.name.num, varDecl.type);
                    }
            }
        }
        else {
            varTable.add(varDecl.name.num, varDecl.type);
            if (varDecl.init != null) {
                varDecl.init.accept(this);
                initCheck(varDecl.type, varDecl.init);
                varTable.define(varDecl.name.num, varDecl.type);
            }
        }
        if (varDecl.type instanceof VoidType)
            throw new RuntimeException("Variable " + varDecl.name.toString() + "is delcared as void type");
        //System.out.println(varDecl.name.toString() + " size: " + varDecl.type.size);
    }

    public void visit(FunctionDecl functionDecl) {
        /*
        * Empty
        * As the grammar doesn't require functionDecl.
        * */
    }

    public void visit(FunctionDef functionDef) throws RuntimeException{
        functionDef.type.accept(this);
        if (varTable.containsInThisScope(functionDef.name.num)) {
            if (!typeEqual(varTable.getType(functionDef.name.num), functionDef.type))
               throw new RuntimeException("Function" + functionDef.name.toString() + "is declared as other types");
            else if (varTable.defined(functionDef.name.num))
                throw new RuntimeException("The function" + functionDef.name.toString() + "has been defined");
        }
        else {
            varTable.add(functionDef.name.num, functionDef.type);
        }
        varTable.beginScope();
        suTable.beginScope();
        inPrmtr++;
        functionDef.prmrts.accept(this);
        inPrmtr--;
        pushFunction(functionDef);
        functionDef.body.accept(this);
        popFunction();
        varTable.endScope();
        suTable.endScope();
    }

    public void visit(TypeDecl typeDecl) {
        typeDecl.type.accept(this);
    }

    public void visit(InitValue initValue) throws RuntimeException{
        if (inPrmtr > 0) throw new RuntimeException("parameters cannot be initialized");
        initValue.expr.accept(this);
        if (isGlobal() && !initValue.expr.returnType.isConst && !(initValue.expr.returnType instanceof PointerType)) {
            throw new RuntimeException("The global initializer must be a constant");
        }
    }

    public void visit(InitList initList) {
        for (Initializer initializer : initList.inits)
            initializer.accept(this);
    }

    public void visit(MarkerType markerType) {
        /*
        * Nothing needed to do here.
        * */
    }

    public void visit(FunctionType functionType) throws RuntimeException {
        functionType.returnType.accept(this);
        functionType.size = functionType.returnType.size;
        if (functionType.returnType instanceof ArrayType)
            throw new RuntimeException("The return type of a function cannot be an array");
        else {
            List<Type> tmp = new LinkedList<>();
            for (Type type : functionType.prmtrs){
                type.accept(this);
                tmp.add(type);
            }
            functionType.prmtrs = tmp;
        }
    }

    public void visit(ArrayType arrayType) throws RuntimeException{
        arrayType.baseType.accept(this);
        arrayType.arraySize.accept(this);
        arrayType.baseType.isLeft = true;
        arrayType.isConst = false;
        arrayType.isLeft = false;
        if (!(arrayType.arraySize.returnType.isConst)) {
            throw new RuntimeException("The size of an array must be const");
        }
        else {
            if (!checkIC(arrayType.arraySize.returnType)) {
                throw new RuntimeException("The size of an array must be an integer");
            }
            else {
                if (!((Integer) arrayType.arraySize.returnType.value > 0 )) {
                    throw new RuntimeException("The size of an array must be positive");
                }
                else {
                    arrayType.size = max(4, arrayType.baseType.size) * ((Integer) arrayType.arraySize.returnType.value);
                }
            }
        }
    }

    public void visit(CharType charType) {
        charType.size = 4;
        charType.realSize = 1;
    }

    public void visit(IntType intType) {
        intType.size = intType.realSize = 4;
    }

    public void visit(VoidType voidType) {
        voidType.size = 0;
    }

    public void visit(PointerType pointerType) {
        pointerType.baseType.accept(this);
        pointerType.baseType.isLeft = true;
        pointerType.isLeft = true;
        pointerType.size = pointerType.realSize = 4;
        pointerType.isConst = false;
    }

    public void visit(StructType structType) throws RuntimeException{
       // structType.size = 0;
       // structType.realSize = 0;
        if (suTable.containsInAllScope(structType.name.num)) {
            if (structType.declrs == null) {
                if (suTable.getType(structType.name.num) instanceof UnionType)
                    throw new RuntimeException("union " + structType.name.toString() + "has been declared as a struct");
                else {
                    structType.declrs = ((StructType) suTable.getType(structType.name.num)).declrs;
                    structType.members = ((StructType) suTable.getType(structType.name.num)).members;
                    structType.size = ((StructType) suTable.getType(structType.name.num)).size;
                    structType.realSize = ((StructType) suTable.getType(structType.name.num)).realSize;
                }
            }
           // else
           //     throw new RuntimeException("union" + structType.name.toString() + "redeclared");
        }
        else {
            if (structType.declrs == null)
                throw new RuntimeException("Undefined union" + structType.name.toString());
            else {
                structType.members = new MemberTable();
                suTable.add(structType.name.num, structType);
                for (Decl decl : structType.declrs.decls) {
                    decl.type.accept(this);
                    decl.type.isLeft = true;
                    if (structType.members.contains(decl.name.num))
                        throw new RuntimeException("Redefine the variable" + decl.name.toString() + "in member table of struct" + structType.name.toString());
                 /*
                    int maxSize = 0;
                    int offset = structType.size;
                    maxSize = max(maxSize, min(decl.type.size, 4));
                    if (offset % min(decl.type.size, 4) != 0)
                        offset = offset + min(decl.type.size, 4) - offset % min(decl.type.size, 4);
                 */
                    int offset = structType.size;
                    if (decl.type.realSize >= 4 && structType.realSize % 4 != 0) {
                        structType.realSize += 4 - structType.realSize % 4;
                    }
                    structType.realSize += decl.type.realSize;
                    structType.members.add(decl.name.num, decl.type, offset);
                    structType.size += 4;
                }
                structType.size += 4;
            }
        }
    }

    public void visit(UnionType unionType) throws RuntimeException {
        unionType.size = 0;
        if (suTable.containsInAllScope(unionType.name.num)) {
            if (unionType.declrs == null) {
                if (suTable.getType(unionType.name.num) instanceof StructType)
                    throw new RuntimeException("union " + unionType.name.toString() + "has been declared as a struct");
                else {
                    unionType.members = ((UnionType) suTable.getType(unionType.name.num)).members;
                    unionType.size = ((UnionType) suTable.getType(unionType.name.num)).size;
                }
            }
            else
                throw new RuntimeException("union" + unionType.name.toString() + "redeclared");
        }
        else {
            if (unionType.declrs == null)
                throw new RuntimeException("Undefined union" + unionType.name.toString());
            else {
                unionType.members = new MemberTable();
                suTable.add(unionType.name.num, unionType);
                for (Decl decl : unionType.declrs.decls) {
                    decl.type.accept(this);
                    decl.type.isLeft = true;
                    if (unionType.members.contains(decl.name.num))
                        throw new RuntimeException("Redefine the variable" + decl.name.toString() + "in member table of struct" + unionType.name.toString());
                    else unionType.members.add(decl.name.num, decl.type, 0);
                    unionType.size = max(decl.type.size, unionType.size);
                    unionType.size += 4;
                }
            }
        }
    }

    public void visit(ExprList exprList) {
        if (exprList != null)
            for (Expr expr : exprList.exprs) {
                expr.accept(this);
            }
    }

    public Type checkBinExpr(BinaryOp op, Type t1, Type t2) throws RuntimeException{
        Type ret = null;
        switch (op) {
            case COMMA:
                ret = t1.clone();
                ret.isLeft = false;
                break;
            case ASSIGN:
                if (!t1.isLeft) {
                    throw new RuntimeException("The left of ASSIGN must be a left value");
                }
                else {
                    if (typeEqual(t1, t2) || (checkICP(t1) && checkICP(t2))) {
                        ret = t1.clone();
                    }
                    else {
//                        System.out.println(t1.getClass() + "  " + t2.getClass());
                        throw new RuntimeException("The left and right side of ASSIGN must be consistent");
                    }
                }
                break;


            case ASSIGN_MUL:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.MUL, t1, t2));
                break;
            case ASSIGN_DIV:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.DIV, t1, t2));
                break;
            case ASSIGN_MOD:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.MOD, t1, t2));
                break;
            case ASSIGN_ADD:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.ADD, t1, t2));
                break;
            case ASSIGN_SUB:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.SUB, t1, t2));
                break;
            case ASSIGN_SHL:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.SHL, t1, t2));
                break;
            case ASSIGN_SHR:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.SHR, t1, t2));
                break;
            case ASSIGN_AND:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.AND, t1, t2));
                break;
            case ASSIGN_XOR:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.XOR, t1, t2));
                break;
            case ASSIGN_OR:
                ret = checkBinExpr(BinaryOp.ASSIGN, t1, checkBinExpr(BinaryOp.OR, t1, t2));
                break;


            case ADD:
                if (!checkICP(t1)) {
                    throw new RuntimeException("The type of left side of ADD must int or char or pointer");
                }
                if (!checkICP(t2)) {
                    throw new RuntimeException("The type of right side of ADD must int or char or pointer");
                }
                if (t1 instanceof PointerType && t2 instanceof PointerType){
                    throw new RuntimeException("The left and right sides of ADD must not be pointertype at the same time");
                }
                if (t1 instanceof PointerType || t2 instanceof PointerType) {
                    if (t1 instanceof PointerType) ret = t1.clone();
                    if (t2 instanceof PointerType) ret = t2.clone();
                }
                else {
                    ret = new IntType();
                    ret.size = 4;
                    ret.isLeft = false;
                    if (t1.isConst && t2.isConst) {
                        ret.isConst = true;
                        ret.value = ((int) t1.value) + ((int) t2.value);
                    }
                }
                break;
            case SUB:
                if (!checkICP(t1)) {
                    throw new RuntimeException("The type of the left side of SUB must be int or char or pointer");
                }
                if (!checkICP(t2)) {
                    throw new RuntimeException("The type of the right side of the SUB must be int or char or pointer");
                }
                if (t1 instanceof PointerType) {
                    if (t2 instanceof PointerType){
                        if (typeEqual(t1, t2)){
                            ret = new IntType();
                            ret.size = 4;
                            ret.isConst = false;
                            ret.isLeft = false;
                        }
                        else {
                            throw new RuntimeException("The both sides of SUB are instances of pointer, then the two types must be strictly the same");
                        }
                    }
                    if (checkIC(t2)) {
                        ret = t1.clone();
                        ret.isLeft = false;
                    }
                }
                else {
                    if (t2 instanceof PointerType){
                        throw new RuntimeException("It cannot be int SUB pointer");
                    }
                    else {
                        ret = new IntType();
                        ret.size = 4;
                        ret.isLeft = false;
                        if (t1.isConst && t2.isConst){
                            ret.isConst = true;
                            ret.value = (int) t1.value - (int) t2.value;
                        }
                    }
                }
                break;
            case EQ:case NE:
                if (!(checkICP(t1) && checkICP(t2)))
                    throw new RuntimeException("Both sides of EQ or NE should be int or char or pointer");
                else {
                    ret = new IntType();
                    ret.size = 4;
                    ret.isLeft = false;
                    if (checkIC(t1) && checkIC(t2) && t1.isConst && t2.isConst){
                        ret.isConst = true;
                        if (op == BinaryOp.EQ) ret.value = (t1.value.equals(t2.value)) ? 1 : 0;
                        if (op == BinaryOp.NE) ret.value = !(t1.value.equals(t2.value)) ? 1 : 0;
                    }
                }
                break;
            default:
                if (!(checkICP(t1) && checkICP(t2)))
                    throw new RuntimeException("Both sides of " + BinaryOpToString.get(op.ordinal()) + "must be int or char or pointer");
                else {
                    ret = new IntType();
                    ret.size = 4;
                    ret.isLeft = false;
                    if (checkIC(t1) && t1.isConst) {
                        int l = (int) t1.value;
                        if (op == BinaryOp.OR && l != 0){
                            ret.isConst = true;
                            ret.value = 1;
                        }
                        if (op == BinaryOp.AND && l == 0) {
                            ret.isConst = true;
                            ret.value = 0;
                        }
                    }
                    if (checkIC(t1) && t1.isConst && t2.isConst) {
                        int l = (int) t1.value;
                        int r = (int) t2.value;
                        ret.isConst = true;
                        switch (op){
                            case LOGICAL_OR:
                                ret.value = l | r;
                                break;
                            case LOGICAL_AND:
                                ret.value = l & r;
                                break;
                            case OR:
                                ret.value = (l != 0 || r != 0) ? 1 : 0;
                                break;
                            case XOR:
                                ret.value = l ^ r;
                                break;
                            case AND:
                                ret.value = (l != 0 && r != 0) ? 1 : 0;
                                break;
                            case LT:
                                ret.value = (l < r) ? 1 : 0;
                                break;
                            case GT:
                                ret.value = (l > r) ? 1 : 0;
                                break;
                            case LE:
                                ret.value = (l <= r) ? 1 : 0;
                                break;
                            case GE:
                                ret.value = (l >= r) ? 1 : 0;
                                break;
                            case SHL:
                                ret.value = l << r;
                                break;
                            case SHR:
                                ret.value = l >> r;
                                break;
                            case MUL:
                                ret.value = l * r;
                                break;
                            case DIV:
                                ret.value = l / r;
                                break;
                            default:
                                throw new RuntimeException("Something wrong in the checkBIn");
                        }
                    }
                }
                break;
        }
        return ret;
    }

    public void visit(BinaryExpr binaryExpr) throws RuntimeException{
        binaryExpr.left.accept(this);
        binaryExpr.right.accept(this);
        if (binaryExpr.left.returnType.isConst == true) {
            binaryExpr.left = new IntConst((int) binaryExpr.left.returnType.value);
            binaryExpr.left.accept(this);
        }
        if (binaryExpr.right.returnType.isConst == true) {
            binaryExpr.right = new IntConst((int) binaryExpr.right.returnType.value);
            binaryExpr.right.accept(this);
        }
        Type t1 = binaryExpr.left.returnType;
        Type t2 = binaryExpr.right.returnType;
        BinaryOp op = binaryExpr.op;
        binaryExpr.returnType = checkBinExpr(op, t1, t2);
    }

    public void visit(EmptyExpr  emptyExpr) {
        /*Empty*/
    }

    public void visit(SizeofExpr sizeofExpr) {
        sizeofExpr.type.accept(this);
        sizeofExpr.returnType = new IntType();
        if (sizeofExpr.type instanceof StructType)
            sizeofExpr.returnType.value = ((StructType) sizeofExpr.type).size;
        else
            sizeofExpr.returnType.value = sizeofExpr.type.size;
        sizeofExpr.returnType.size = 4;
        sizeofExpr.returnType.isLeft = false;
        sizeofExpr.returnType.isConst = true;
    }


    public Object castValue(Type type, Integer integer) throws RuntimeException{
        if (!checkIC(type))
            throw new RuntimeException("Something is wrong in castValue");
        if (type instanceof IntType)
            return integer;
        if (type instanceof CharType)
            return (char) (integer & 255);
        return null;
    }

    public void visit(CastExpr castExpr) throws RuntimeException{
        castExpr.cast.accept(this);
        castExpr.expr.accept(this);
        if (castExpr.cast instanceof  VoidType)
            throw new RuntimeException("cannot cast to the type void");
        else {
            if (castExpr.cast instanceof RecordType && castExpr.expr.returnType instanceof RecordType){
                if (!typeEqual(castExpr.cast, castExpr.expr.returnType))
                    throw new RuntimeException("Different record types cannot not cast");
            }
            else{
                castExpr.returnType = castExpr.cast.clone();
                castExpr.returnType.isLeft = false;
                castExpr.expr.accept(this);
                if (castExpr.expr.returnType.isConst && checkIC(castExpr.returnType) && checkIC(castExpr.expr.returnType)) {
                    castExpr.returnType.value = castValue(castExpr.returnType, (Integer) castExpr.expr.returnType.value);
                }
            }
        }

    }

    public Type checkUnExpr(UnaryOp op, Type type) throws RuntimeException{
        Type ret;
        switch (op){
            case ASTERISK:
                if (!(type instanceof PointerType)){
                    throw new RuntimeException("The pointer operation must operate on pointer");
                }
                else {
                    if (((PointerType) type).baseType instanceof VoidType){
                        throw new RuntimeException("The pointer operation cannot operate on a void pointer");
                    }
                    else {
                        ret = ((PointerType) type).baseType.clone();
                        ret.isLeft = true;
                        ret.isConst = false;
                    }
                }
                break;
            case AMPERSAND:
                if (!type.isLeft) {
                    throw new RuntimeException("The address operation must operate on a left value");
                }
                else{
                    ret = new PointerType(type);
                    ret.size =  4;
                    ret.isLeft = false;
                    ret.isConst = false;
                }
                break;
            case INC: case DEC:
                if (!checkICP(type)) {
                    throw new RuntimeException("The unary operation INC and DEC can only operate on int or char or pointer");
                }
                else {
                    if (!type.isLeft) {
                        throw new RuntimeException("The unary operation INC and DEC can only operate on left value");
                    }
                    else {
                        ret = type.clone();
                        ret.isLeft = false;
                        ret.isConst = false;
                    }
                }
                break;
            case SIZEOF:
                ret = new IntType();
                ret.size = 4;
                ret.isConst = true;
                ret.value = type.size;
                ret.isLeft = false;
                break;
            case PLUS: case MINUS: case TILDE: case NOT:
                if (!checkICP(type))
                    throw new RuntimeException("The unary operation Plus, Minus, Tilde, Not must operate on int or char or pointer");
                else {
                    ret = type.clone();
                    ret.isLeft = false;
                    if (type.isConst) {
                        switch (op) {
                            case PLUS:
                                break;
                            case MINUS:
                                ret.value = castValue(type, -(int) ret.value);
                                break;
                            case TILDE:
                                ret.value = castValue(type, ~(int) ret.value);
                                break;
                            case NOT:
                                ret.value = castValue(type, ((int) ret.value) != 0 ? 1 : 0 );
                                break;
                            default:
                                break;
                        }
                    }
                }
                break;
            default:
                throw new RuntimeException("There is something wrong in the checkUnaExpr");
        }
        return ret;
    }

    public void visit(UnaryExpr unaryExpr) {
        unaryExpr.expr.accept(this);
        if (unaryExpr.expr.returnType.isConst == true) {
            unaryExpr.expr = new IntConst((Integer)unaryExpr.expr.returnType.value);
            unaryExpr.expr.accept(this);
        }
        unaryExpr.returnType = checkUnExpr(unaryExpr.op, unaryExpr.expr.returnType);
    }

    public void visit(PointerAccess pointerAccess) {
        pointerAccess.body.accept(this);
        pointerAccess.attribute.accept(this);
        if (!(pointerAccess.body.returnType instanceof PointerType))
            throw new RuntimeException("PointerAccess must operate on pointer type");
        else {
            Type type = ((PointerType) pointerAccess.body.returnType).baseType;
            if (!(type instanceof RecordType))
                throw new RuntimeException("Pointer in PointerAccess must be a pointer to a record type");
            else {
                if (!((RecordType) type).members.contains(pointerAccess.attribute.num))
                    throw new RuntimeException(pointerAccess.attribute.toString() + "not found in the filed list");
                else {
                    pointerAccess.returnType = ((RecordType) type).members.getType(pointerAccess.attribute.num).clone();
                    pointerAccess.returnType.isConst = false;
                    pointerAccess.returnType.isLeft = true;
                }
            }
        }
    }

    public void visit(RecordAccess recordAccess) {
        recordAccess.body.accept(this);
        recordAccess.attribute.accept(this);
        if (!(recordAccess.body.returnType instanceof RecordType))
            throw new RuntimeException("RecordAccess must operate on a record type");
        else {
            RecordType recordType = (RecordType) recordAccess.body.returnType;
            if (!recordType.members.contains(recordAccess.attribute.num))
                throw new RuntimeException(recordAccess.attribute.toString() + "not found in the field list");
            else {
                recordAccess.returnType = recordType.members.getType(recordAccess.attribute.num).clone();
                recordAccess.returnType.isConst = false;
                recordAccess.returnType.isLeft = true;
            }
        }
    }

    public void visit(SelfDecrement selfDecrement) {
        selfDecrement.body.accept(this);
        if (!checkICP(selfDecrement.body.returnType)) {
            throw new RuntimeException("SelfDecrement must operate on int or char or pointer");
        }
        else {
            if (!(selfDecrement.body.returnType.isLeft))
                throw new RuntimeException("Selfdrement must operate on left value");
            else {
                selfDecrement.returnType = selfDecrement.body.returnType.clone();
                selfDecrement.returnType.isLeft = false;
                selfDecrement.returnType.isConst = false;
            }
        }
    }

    public void visit(SelfIncrement selfIncrement) throws RuntimeException{
        selfIncrement.body.accept(this);
        if (!checkICP(selfIncrement.body.returnType)) {
            throw new RuntimeException("SelfIncrement must operate on int or char or pointer");
        }
        else {
            if (!(selfIncrement.body.returnType.isLeft))
                throw new RuntimeException("SelfIncrement must operate on left value");
            else {
                selfIncrement.returnType = selfIncrement.body.returnType.clone();
                selfIncrement.returnType.isLeft = false;
                selfIncrement.returnType.isConst = false;
            }
        }
    }

    public void visit(ArrayAccess arrayAccess) {
        arrayAccess.body.accept(this);
        arrayAccess.subscript.accept(this);
        if (!(arrayAccess.body.returnType instanceof PointerType))
            throw new RuntimeException("ArrayAccess must operate on array type");
        else {
            if (!checkIC(arrayAccess.subscript.returnType))
                throw new RuntimeException("ArrayAccess subscript must be int or char");
            else {
                arrayAccess.returnType = ((PointerType) arrayAccess.body.returnType).baseType.clone();
                arrayAccess.returnType.isConst = false;
                arrayAccess.returnType.isLeft = true;
            }
        }
    }

    public boolean matchParam(FunctionType functionType, ExprList exprList){
        List<Type> l1 = functionType.prmtrs;
        List<Type> l2 = new LinkedList<>();
        for (Expr expr : exprList.exprs) {
            l2.add(expr.returnType);
        }
        int i , j;
        i = j = 0;
        while (i < l1.size() || j < l2.size()) {
            if (i == l1.size()) return false;
            else {
                if (j == l2.size() && !(l1.get(i) instanceof MarkerType))
                    return false;
                else {
                    if (l1.get(i) instanceof MarkerType) {
                        if (j < l2.size()) j++;
                        else i++;
                    } else {
                        if (!(typeEqual(l1.get(i), l2.get(j))))
                            throw new RuntimeException("Parameters doesn't match during the call of function");
                        i++;
                        j++;
                    }
                }
            }
        }
        return true;
    }

    public void visit(FunctionCall functionCall) {
        functionCall.expr.accept(this);
        if (functionCall.args != null) functionCall.args.accept(this);
        if (!(functionCall.expr.returnType instanceof FunctionType)) {
            throw new RuntimeException("The return type of function call must be function type");
        }
        else {
            if (!matchParam((FunctionType) functionCall.expr.returnType, functionCall.args))
                throw new RuntimeException("The call parameter of function " + functionCall.expr.toString() + "not matched");
            else {
                functionCall.returnType = ((FunctionType) functionCall.expr.returnType).returnType.clone();
                functionCall.returnType.isLeft = false;
                functionCall.returnType.isConst = false;
            }

        }
    }

    public void visit(Identifier identifier) {
        identifier.symbol.accept(this);
        if (!varTable.containsInAllScope(identifier.symbol.num)) {
            throw new RuntimeException("Variable " + identifier.symbol.toString() + " undeclared!");
        }
        else {
            identifier.returnType = varTable.getType(identifier.symbol.num).clone();
            identifier.returnType.isConst = false;
            if (identifier.returnType instanceof ArrayType)
                identifier.returnType.isLeft = false;
            else identifier.returnType.isLeft = true;
        }
    }


    public void visit(IntConst intConst) {
        intConst.returnType = new IntType();
        intConst.returnType.size = 4;
        intConst.returnType.value = intConst.value;
        intConst.returnType.isConst = true;
    }

    public void visit(CharConst charConst) {
        charConst.returnType = new CharType();
        charConst.returnType.size = 4;
        charConst.returnType.realSize = 1;
        charConst.returnType.value = (Integer)charConst.value;
        charConst.returnType.isConst = true;
    }

    public void visit(StringConst stringConst) {
        stringConst.returnType = new PointerType(new CharType());
        stringConst.returnType.value = stringConst.value;
        stringConst.returnType.isConst = false;
        stringConst.returnType.isLeft = false;
        stringConst.returnType.size = 4;
    }

    public void visit(Symbol symbol) {
        /*Empty*/
    }

    public void visit(StmtList stmtList) {
        for (Stmt stmt : stmtList.stmts)
            stmt.accept(this);
    }

    public void visit(BreakStmt breakStmt) throws RuntimeException{
        if (inLoop()) {
            breakStmt.location = topLoop();
        }
        else throw new RuntimeException("break statement must be in a loop");
    }

    public void visit(ContinueStmt continueStmt) throws RuntimeException{
        if (inLoop()) {
            continueStmt.location = topLoop();
        }
        else throw new RuntimeException("continue statement must be in a loop");
    }

    public boolean conditionCheck(Type type) {
        return checkICP(type);
    }

    public void visit(IfStmt ifStmt) throws RuntimeException{
        ifStmt.condition.accept(this);
        if (!conditionCheck(ifStmt.condition.returnType))
            throw new RuntimeException("the returntype of if condition must be IntType or CharType or PointerType");

        suTable.beginScope();
        varTable.beginScope();
        ifStmt.consequent.accept(this);
        suTable.endScope();
        varTable.endScope();

        suTable.beginScope();
        varTable.beginScope();
        ifStmt.alternative.accept(this);
        suTable.endScope();
        varTable.endScope();
    }

    public void visit(ForLoop forLoop) throws RuntimeException{
        forLoop.init.accept(this);
        forLoop.condition.accept(this);
        if (!(conditionCheck(forLoop.condition.returnType) || forLoop.condition instanceof EmptyExpr))
            throw new RuntimeException("the return type condition statement of for loop must be int or char or pointer");
        forLoop.step.accept(this);

        suTable.beginScope();
        varTable.beginScope();
        pushLoop(forLoop);
        forLoop.body.accept(this);
        popLoop();
        suTable.endScope();
        varTable.endScope();
    }

    public void visit(WhileLoop whileLoop) throws RuntimeException{
        whileLoop.condition.accept(this);
        if (!conditionCheck(whileLoop.condition.returnType))
            throw new RuntimeException("the return type of the condition of while loop must be int or char or pointer");

        suTable.beginScope();
        varTable.beginScope();
        pushLoop(whileLoop);
        whileLoop.body.accept(this);
        popLoop();
        suTable.endScope();
        varTable.endScope();
    }

    public void visit(ReturnStmt returnStmt) throws RuntimeException{
        returnStmt.expr.accept(this);
        if (!inFunction())
            throw new RuntimeException("the return statement must be in a function body");
        else {
            if ((returnStmt.expr instanceof EmptyExpr) && !(topFunction().returnType instanceof VoidType))
                throw new RuntimeException("the return statement does not match the function's return type(VOID)");
            else
                if (checkICP(returnStmt.expr.returnType) && !checkICP(topFunction().returnType))
                    throw new RuntimeException("the return statement does not match the funciton's return type(ICP)");
        }
    }

    public void visit(CompoundStmt compoundStmt) {
  //      varTable.beginScope();
   //     suTable.beginScope();
        compoundStmt.decls.accept(this);
        compoundStmt.stmts.accept(this);
   //     varTable.endScope();
   //     suTable.endScope();
    }

}

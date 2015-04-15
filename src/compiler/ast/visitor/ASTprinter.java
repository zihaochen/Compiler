package compiler.ast.visitor;

import compiler.ast.nodes.*;

import java.io.PrintStream;

/**
 * Created by Chen on 2015/4/15.
 */
public class ASTprinter implements Visitor{

    public int level;

    public PrintStream out;

    public ASTprinter(PrintStream out) {
        this.out = out;
        level = 0;
    }

    public ASTprinter() {
        level = 0;
    }

    public void print(String string) {
        for (int i = 0; i < level; i++)
            out.print("\t");
        out.println("<" + string + ">");
    }

    public void visit(AST ast){
        print("AST");
        level++;
        ast.decls.accept(this);
        level--;
    }

    public void visit(DeclList declList){
        print("DeclList");
        level++;
        for (Decl decl : declList.decls){
            decl.type.accept(this);
            decl.name.accept(this);
            decl.init.accept(this);
        }
        level--;
    }

    public void visit(VarDecl varDecl){
        print("VarDecl");
        level++;
        varDecl.type.accept(this);
        varDecl.name.accept(this);
        varDecl.init.accept(this);
        level--;
    }

    public void visit(FunctionDecl functionDecl){
        print("FunctionDecl");
        level++;
        functionDecl.type.accept(this);
        functionDecl.name.accept(this);
        functionDecl.init.accept(this);
        functionDecl.prmtrs.accept(this);
        level--;
    }

    public void visit(FunctionDef functionDef){
        print("FunctionDef");
        level++;
        functionDef.returnType.accept(this);
        functionDef.name.accept(this);
        functionDef.prmrts.accept(this);
        functionDef.body.accept(this);
        level--;
    }

    public void visit(TypeDecl typeDecl){
        print("TypeDecl");
        level++;
        typeDecl.type.accept(this);
        level--;
    }

    public void visit(InitValue initValue){
        print("InitValue");
        level++;
        initValue.expr.accept(this);
        level--;
    }

    public void visit(InitList initList){
        print("InitList");
        level++;
        for (Initializer i : initList.inits)
            i.accept(this);
        level--;
    }

    public void visit(ArrayType arrayType){
        print("ArrayType");
        level++;
        arrayType.baseType.accept(this);
        arrayType.arraySize.accept(this);
        level--;
    }

    public void visit(CharType charType){
        print("CharType");
    }

    public void visit(IntType intType){
        print("IntType");
    }

    public void visit(VoidType voidType){
        print("VoidType");
    }

    public void visit(PointerType pointerType){
        print("PointerType");
        level++;
        pointerType.baseType.accept(this);
        level--;
    }

    public void visit(StructType structType){
        print("StructType");
        level++;
        structType.name.accept(this);
        structType.declrs.accept(this);
        level--;
    }

    public void visit(UnionType unionType){
        print("UnionType");
        level++;
        unionType.name.accept(this);
        unionType.declrs.accept(this);
        level--;
    }

    public void visit(ExprList exprList){
        print("ExprList");
        level++;
        for (Expr e : exprList.exprs)
            e.accept(this);
        level--;
    }

    public void visit(BinaryExpr binaryExpr){
        print("BinaryExpr");
        level++;
        print(BinaryOpToString.get((binaryExpr.op.ordinal())));
        binaryExpr.left.accept(this);
        binaryExpr.right.accept(this);
        level--;
    }

    public void visit(EmptyExpr  emptyExpr){
    }

    public void visit(SizeofExpr sizeofExpr){
        print("SizeofExpr");
        level++;
        sizeofExpr.type.accept(this);
        level--;
    }

    public void visit(CastExpr castExpr){
        print("CastExpr");
        level++;
        castExpr.cast.accept(this);
        castExpr.expr.accept(this);
        level--;
    }

    public void visit(UnaryExpr unaryExpr){
        print("UnaryExpr");
        level++;
        print(UnaryOpToString.get((unaryExpr.op.ordinal())));
        unaryExpr.expr.accept(this);
        level--;
    }

    public void visit(PointerAccess pointerAccess){
        print("PointerAccess");
        level++;
        pointerAccess.body.accept(this);
        pointerAccess.attribute.accept(this);
        level--;
    }

    public void visit(RecordAccess recordAccess){
        print("RecordAccess");
        level++;
        recordAccess.body.accept(this);
        recordAccess.attribute.accept(this);
        level--;
    }

    public void visit(SelfDecrement selfDecrement){
        print("SelfDecrement");
        level++;
        selfDecrement.body.accept(this);
        level--;
    }

    public void visit(SelfIncrement selfIncrement){
        print("SelfIncrement");
        level++;
        selfIncrement.body.accept(this);
        level--;
    }

    public void visit(ArrayAccess arrayAccess){
        print("ArrayAccess");
        level++;
        arrayAccess.body.accept(this);
        arrayAccess.subscript.accept(this);
        level--;
    }

    public void visit(FunctionCall functionCall){
        print("FunctionCall");
        level++;
        functionCall.body.accept(this);
        functionCall.args.accept(this);
        level--;
    }

    public void visit(Identifier identifier){
        print("Identifier");
        level++;
        identifier.accept(this);
        level--;
    }

    public void visit(IntConst intConst){
        print("IntConst: "+ intConst.value);
    }

    public void visit(CharConst charConst){
        print("CharConst: " + charConst.value);
    }

    public void visit(StringConst stringConst){
        print("StringConst: " + stringConst.value);
    }

    public void visit(Symbol symbol){
        print(symbol.toString());
    }

    public void visit(StmtList stmtList){
        print("StmtList");
        level++;
        for (Stmt s : stmtList.stmts)
            s.accept(this);
        level--;
    }

    public void visit(BreakStmt breakStmt){
        print("BreakStmt");
    }

    public void visit(ContinueStmt continueStmt){
        print("ContinueStmt");
    }

    public void visit(IfStmt ifStmt){
        print("If");
        level++;
        ifStmt.condition.accept(this);
        ifStmt.consequent.accept(this);
        ifStmt.alternative.accept(this);
        level--;
    }

    public void visit(ForLoop forLoop){
        print("ForLoop");
        level++;
        forLoop.init.accept(this);
        forLoop.condition.accept(this);
        forLoop.step.accept(this);
        forLoop.body.accept(this);
        level--;
    }

    public void visit(WhileLoop whileLoop){
        print("WhileLoop");
        level++;
        whileLoop.condition.accept(this);
        whileLoop.body.accept(this);
        level--;
    }

    public void visit(ReturnStmt returnStmt){
        print("ReturnStmt");
        level++;
        returnStmt.expr.accept(this);
        level--;
    }

    public void visit(CompoundStmt compoundStmt) {
        print("CompoundStmt");
        level++;
        compoundStmt.decls.accept(this);
        compoundStmt.stmts.accept(this);
        level--;
    }
}

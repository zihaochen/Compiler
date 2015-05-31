package compiler.IR;

import compiler.IR.Nodes.Address.*;
import compiler.IR.Nodes.Control.*;
import compiler.IR.Nodes.Expression.*;
import compiler.IR.Nodes.Function.*;
import compiler.IR.Nodes.Root.IR;
import compiler.STL.Getchar;
import compiler.STL.Malloc;
import compiler.STL.Printf;
import compiler.ast.nodes.*;
import compiler.ast.visitor.Visitor;
import compiler.tables.AddressTable;
import compiler.tables.MemberTable;
import compiler.tables.SUTable;
import compiler.tables.VarTable;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by Chen on 2015/5/9.
 */

/*
* Translator must visit an AST that is annotated after the semantic check
* */


/*
* */

public class Translator implements Visitor {
   public SUTable suTable;
   public VarTable varTable;
   public AddressTable addressTable;
   public IR ir;
   public Function curFunction;
   private Label fall;
   private OutputStream out;
   private int stringCnt;
   private int offset;
   public Translator() {
      Label tmp = new Label();
      tmp.setZero();
      Temp temp = new Temp();
      temp.setZero();
      ir = new IR();
      suTable = new SUTable();
      varTable = new VarTable();
      addressTable = new AddressTable();
      stl = new LinkedList<>();
      functionsStack = new LinkedList<>();
      Function start = new Function();
      start.name = new Symbol("_start").toString();

      pushFunction(start);
      Name printf_cnt = new Name("printf_cnt");
      curFunction.vars.add(new Variable(printf_cnt, 4));
      curFunction.body.add(new Assign(printf_cnt, new IntegerConst(0)));
      ir.fragments.add(start);
      loadSTL();
      inPrmtr = 0;
      stringCnt = 0;
      offset = 0;
      fall = new Label();
      loopBreak = new LinkedList<>();
      loopContinue = new LinkedList<>();
      curReturn = null;
   }
   public class Pair {
      Address arrayAddress;
      int offset;
      int baseSize;

      public Pair(Address arrayAddress, int baseSize) {
         this.arrayAddress = arrayAddress;
         this.baseSize = baseSize;
         this.offset = 0;
      }

      public Pair(Address arrayAddress, int offset, int baseSize) {
         this.arrayAddress = arrayAddress;
         this.offset = offset;
         this.baseSize = baseSize;
      }
   }

   public class StringPair {
      public Address address;
      public String string;

      public StringPair(Address address, String string) {
         this.address = address;
         this.string = string;
      }
   }

   private LinkedList<FunctionDef> stl;
   private void loadSTL() {
      stl.add(new Malloc());
      stl.add(new Getchar());
      stl.add(new Printf());
      for (FunctionDef functionDef : stl) {
         defineFunction(functionDef);
      }
   }

   /*
   * get whether the variable is in parameter declaration
   * if so, add it to the current function's parameter list
   * */
   private int inPrmtr;
   private ReturnStmt curReturn;

   /*
   * different from the function stack in semantic check,
   * this function stack is to get
   * */
   private LinkedList<Function> functionsStack;

   private void pushFunction(Function function) {
      functionsStack.push(function);
      curFunction = function;
   }

   private Function popFunction() {
      Function tmp = functionsStack.pop();
      curFunction = topFunction();
      return tmp;
   }

   private Function topFunction() {
      return functionsStack.peek();
   }

   public void defineFunction(FunctionDef functionDef){
      varTable.add(functionDef.name.num, functionDef.type);
      Function function = new Function();
      function.name = "_" + functionDef.name.toString();
      function.size = ((FunctionType) functionDef.type).returnType.size;
      ir.fragments.add(function);
      pushFunction(function);
      offset = 0;

      varTable.beginScope();
      suTable.beginScope();
      addressTable.beginScope();
      inPrmtr++;
      functionDef.prmrts.accept(this);
      inPrmtr--;
      functionDef.body.accept(this);
      varTable.endScope();
      suTable.endScope();
      addressTable.endScope();


      popFunction();
   }

   public boolean checkIC(Type type) {
      return (type instanceof IntType || type instanceof CharType);
   }

   public boolean checkASU(Type type) {
      return (type instanceof ArrayType || type instanceof StructType || type instanceof UnionType);
   }

   public void dealWithCondition(Expr expr) {
      if (isBoolExpr(expr)) expr.accept(this);
      else {
         expr.accept(this);
         curFunction.body.add(new IfNEZGoto(expr.address, expr.True));
         curFunction.body.add(new Goto(expr.False));
      }
   }

   public void setOutputStream(OutputStream out) {
      this.out = out;
   }

   /*-------------------DECLARATION----------------------------*/
   public void visit(AST ast) {
      ast.decls.accept(this);

      for (Function function : ir.fragments) {
         for (Variable variable : function.vars) {
            if (variable.address instanceof Name)
               ((Name) variable.address).name = "_" + ((Name) variable.address).name;
            if (variable.size > 4) {
               ir.ASUList.add(variable);
               function.ASUList.add(variable);
            }
         }

      }

      for (Function function : ir.fragments) {
         offset = 0;
         if (function.name.equals("_start")) continue;
         for (Variable variable : function.vars) {
            //offset += variable.size;
            offset += 4;
            variable.address.loc = -offset;
         }
         function.localSize = offset;
      }

      //merger();
   }

   public void visit(DeclList declList) {
      for (Decl decl : declList.decls)
         decl.accept(this);
   }

   public void arrayInitAssign(Address address, Type type, int offset, Initializer init) {
      if (init instanceof InitList) {
         for (int i = 0; i < ((InitList) init).inits.size(); i++) {
            arrayInitAssign(address, ((ArrayType) type).baseType, offset + ((ArrayType) type).baseType.size * i, ((InitList) init).inits.get(i));
         }
      }
      else if (init instanceof InitValue) {
         curFunction.body.add(new ArrayWrite(address, offset, ((InitValue) init).expr.address, 4));
      }
   }

   public void initAssign(VarDecl varDecl) {
      Type type = varDecl.type;
      Initializer init = varDecl.init;
      Address address = addressTable.getAddress(varDecl.name.num);
      if (type instanceof ArrayType) {
         if (init instanceof InitList) {
            arrayInitAssign(address, type, 0, init);
         }
         else {
            if (((InitValue)init).expr instanceof StringConst) {
               curFunction.body.add(new Assign(address, ((InitValue) init).expr.address));
            }
         }
      }
      else {
         if (type instanceof StructType && init instanceof InitValue) {
            SUAssign(address, ((InitValue) init).expr.address, (StructType)type);
         }
         else {
            if (type instanceof PointerType) {
               curFunction.body.add(new Assign(address, ((InitValue) init).expr.address));
            } else {
               if (init instanceof InitList) {
                  while (init instanceof InitList)
                     init = ((InitList) init).inits.get(0);
                  curFunction.body.add(new Assign(address, ((InitValue) init).expr.address));
               } else {
                  curFunction.body.add(new Assign(address, ((InitValue) init).expr.address));
               }
            }
         }
      }
   }

   int forStructArray = 0;
   int count = 0;

   public void visit(VarDecl varDecl) {
      varDecl.name.accept(this);
      if (varTable.containsInThisScope(varDecl.name.num)) {
         if (!varTable.defined(varDecl.name.num) && varDecl.init != null) {
            varDecl.init.accept(this);
            initAssign(varDecl);
            varTable.define(varDecl.name.num, varDecl.type);
         }
       }
      else {
         varTable.add(varDecl.name.num, varDecl.type);
         if (addressTable.containsInThisScope(varDecl.name.num))
            throw new RuntimeException("something wrong in varDecl");
         addressTable.add(varDecl.name.num, new Name(varDecl.name.toString()));
         Variable tmp;
         int size = varDecl.type.size;
         if (varDecl.type instanceof ArrayType) size += 4;
         //if (varDecl.type instanceof ArrayType || varDecl.type instanceof RecordType) size += 4;
         tmp = new Variable(addressTable.getAddress(varDecl.name.num), size);

         if (inPrmtr == 0) {
            curFunction.vars.add(tmp);
         }
         else {
            curFunction.args.add(tmp);
            return;
         }



         if (varDecl.type instanceof StructType) {
            for (Decl decl : ((StructType) varDecl.type).declrs.decls) {
               if (decl.type instanceof ArrayType) {
                  count++;
                  Name name = new Name("struct_member_" + count);
                  curFunction.vars.add(new Variable(name, decl.type.size + 4));
                  curFunction.body.add(new ArrayWrite(tmp.address, ((StructType) varDecl.type).members.getOffset(decl.name.num), name, 4));
               }
               else {
                  if (decl.type instanceof StructType) {
                     count++;
                     Name name = new Name("struct_member_" + count);
                     curFunction.vars.add(new Variable(name, decl.type.size));
                     //curFunction.vars.add(new Variable(name, decl.type.size + 4));
                     curFunction.body.add(new ArrayWrite(tmp.address, ((StructType) varDecl.type).members.getOffset(decl.name.num), name, 4));
                  }
                  else {
                     /*pointer, int, char
                     * do nothing*/
                  }
               }
            }
         }

         if (varDecl.type instanceof ArrayType && ((ArrayType)varDecl.type).baseType instanceof StructType) {
            for (int i = 0; i < (Integer)((ArrayType) varDecl.type).arraySize.returnType.value; i++) {
               ++forStructArray;
               Name name = new Name("forStructArray_" + forStructArray);
               curFunction.vars.add(new Variable(name, ((ArrayType) varDecl.type).baseType.size));
               StructType structType = (StructType)((ArrayType) varDecl.type).baseType;
               for (Decl decl : structType.declrs.decls) {
                  if (decl.type instanceof ArrayType) {
                     count++;
                     Name tmpName = new Name("struct_member_" + count);
                     curFunction.vars.add(new Variable(tmpName, decl.type.size + 4));
                     curFunction.body.add(new ArrayWrite(name, structType.members.getOffset(decl.name.num), tmpName, 4));
                  }
                  else {
                     if (decl.type instanceof StructType) {
                        count++;
                        Name tmpName = new Name("struct_member_" + count);
                        curFunction.vars.add(new Variable(tmpName, decl.type.size));
                        //curFunction.vars.add(new Variable(tmpName, decl.type.size + 4));
                        curFunction.body.add(new ArrayWrite(name, structType.members.getOffset(decl.name.num), tmpName, 4));
                     }
                     else {
                        /*pointer, int, char
                        * do nothing*/
                     }
                  }
               }

               curFunction.body.add(new ArrayWrite(tmp.address, i * ((ArrayType) varDecl.type).baseType.size, name, 4));
            }
         }
         if (varDecl.init != null) {
            if (varDecl.type instanceof PointerType)
               if (((PointerType) varDecl.type).baseType instanceof StructType)
                  if (varDecl.init instanceof InitValue)
                     if (((InitValue) varDecl.init).expr instanceof FunctionCall && ((Identifier)((FunctionCall) ((InitValue) varDecl.init).expr).expr).symbol.toString().equals("malloc")) {
                        structMallocSwitcher = true;
                     }
            varDecl.init.accept(this);
            initAssign(varDecl);
            varTable.define(varDecl.name.num, varDecl.type);
         }

      }
   }

   public void visit(FunctionDecl functionDecl) {}

   public void visit(FunctionDef functionDef) {
      defineFunction(functionDef);
   }

   public void visit(TypeDecl typeDecl) {}

   public void visit(InitValue initValue) {
      initValue.expr.accept(this);
   }

   public void visit(InitList initList) {
      for (Initializer initializer : initList.inits)
         initializer.accept(this);
   }

   /*-------------------TYPES---------------------------------*/
   public void visit(MarkerType markerType) {}
   public void visit(FunctionType functionType) {}
   public void visit(ArrayType arrayType) {}
   public void visit(CharType charType) {}
   public void visit(IntType intType) {}
   public void visit(VoidType voidType) {}
   public void visit(PointerType pointerType) {}
   public void visit(StructType structType) {

   }
   public void visit(UnionType unionType) {}


   /*------------------EXPRESSIONS----------------------------*/
   /**
   *  When dealing with the op of expressions, we first use the brutal approach here,
    * that is, the relation op is considered as arithmetic op
    *
   * */

   public void visit(ExprList exprList) {
      for (Expr expr : exprList.exprs)
         expr.accept(this);
   }

   public boolean isRelationOp(BinaryOp op) {
      switch (op) {
         case EQ:case NE:case LT:
         case GT:case LE:case GE:
            return true;
         default:
            return false;
      }
   }

   public boolean isAssignOp(BinaryOp op) {
      switch (op) {
         case ASSIGN:case ASSIGN_MUL:case ASSIGN_DIV:
         case ASSIGN_MOD:case ASSIGN_ADD:case ASSIGN_SUB:
         case ASSIGN_SHL:case ASSIGN_SHR:case ASSIGN_AND:
         case ASSIGN_XOR:case ASSIGN_OR:
            return true;
         default:
            return false;
      }
   }

   public boolean isArithOp(BinaryOp op) {
      switch (op) {
         case LOGICAL_OR:case LOGICAL_AND:case XOR:
         case SHL:case SHR:case ADD:case SUB:
         case MUL:case DIV:case MOD:
            return true;
         default:
            return false;
      }
   }

   public boolean isAndOrOp(BinaryOp op) {
      return (op == BinaryOp.AND || op == BinaryOp.OR);
   }

   public void visit(BinaryExpr binaryExpr) {
      if (isRelationOp(binaryExpr.op)) arithmeticExpr(binaryExpr);
      if (binaryExpr.op == BinaryOp.COMMA) commaExpr(binaryExpr);
      if (isAssignOp(binaryExpr.op)) assignExpr(binaryExpr);
      if (isAndOrOp(binaryExpr.op)) andOrExpr(binaryExpr);
      if (isArithOp(binaryExpr.op)) arithmeticExpr(binaryExpr);
   }

   public boolean isBoolExpr(Expr expr) {
      if (expr instanceof BinaryExpr && isAndOrOp(((BinaryExpr) expr).op)) return true;
      if (expr instanceof UnaryExpr && ((UnaryExpr) expr).op == UnaryOp.NOT) return true;
      return  false;
   }

   public void andOrExpr(BinaryExpr binaryExpr) {
      Expr B, B1, B2;
      B = binaryExpr;
      B1 = binaryExpr.left;
      B2 = binaryExpr.right;
      if (binaryExpr.op == BinaryOp.OR) {
         B1.True = B.True;
         B1.False = new Label();
         B2.True = B.True;
         B2.False = B.False;
         binaryExpr.left.accept(this);
         if (!isBoolExpr(B1)) {
            curFunction.body.add(new IfNEZGoto(B1.address, B.True));
            curFunction.body.add(new Goto(B1.False));
         }
         curFunction.body.add(B1.False);
         binaryExpr.right.accept(this);
         if (!isBoolExpr(B2)) {
            curFunction.body.add(new IfNEZGoto(B2.address, B2.True));
            curFunction.body.add(new Goto(B.False));
         }
      }

      if (binaryExpr.op == BinaryOp.AND) {
         B1.True = new Label();
         B1.False = B.False;
         B2.True = B.True;
         B2.False = B.False;
         binaryExpr.left.accept(this);
         if (!isBoolExpr(B1)) {
            curFunction.body.add(new IfNEZGoto(B1.address, B1.True));
            curFunction.body.add(new Goto(B.False));
         }
         curFunction.body.add(B1.True);
         binaryExpr.right.accept(this);
         if (!isBoolExpr(B2)) {
            curFunction.body.add(new IfNEZGoto(B2.address, B2.True));
            curFunction.body.add(new Goto(B.False));
         }
      }
   }

   public void relationExpr(BinaryExpr binaryExpr) {
      RelationalOp op = null;
      switch (binaryExpr.op){
         case EQ: op = RelationalOp.EQ; break;
         case NE: op = RelationalOp.NE; break;
         case LT: op = RelationalOp.LT; break;
         case GT: op = RelationalOp.GT; break;
         case LE: op = RelationalOp.LE; break;
         case GE: op = RelationalOp.GE; break;
      }
      binaryExpr.left.accept(this);
      binaryExpr.right.accept(this);
      if (binaryExpr.True != fall && binaryExpr.False != fall) {
         curFunction.body.add(new IfTrueGoto(binaryExpr.left.address, op, binaryExpr.right.address, binaryExpr.True));
         curFunction.body.add(new Goto(binaryExpr.False));
      }
      else if (binaryExpr.True != fall)
         curFunction.body.add(new IfTrueGoto(binaryExpr.left.address, op, binaryExpr.right.address, binaryExpr.True));
      else if (binaryExpr.False != fall)
         curFunction.body.add(new IfFalseGoto(binaryExpr.left.address, op, binaryExpr.right.address, binaryExpr.False));
   }

   public void arithmeticExpr(BinaryExpr binaryExpr) {
      ArithmeticOp op = null;
      switch (binaryExpr.op) {
         case LOGICAL_OR:     op = ArithmeticOp.LOGICAL_OR; break;
         case LOGICAL_AND:    op = ArithmeticOp.LOGICAL_AND; break;
         case XOR:            op = ArithmeticOp.XOR; break;
         case SHL:            op = ArithmeticOp.SHL; break;
         case SHR:            op = ArithmeticOp.SHR; break;
         case ADD:            op = ArithmeticOp.ADD; break;
         case SUB:            op = ArithmeticOp.SUB; break;
         case MUL:            op = ArithmeticOp.MUL; break;
         case DIV:            op = ArithmeticOp.DIV; break;
         case MOD:            op = ArithmeticOp.MOD; break;
         case EQ:             op = ArithmeticOp.EQ; break;
         case NE:             op = ArithmeticOp.NE; break;
         case LT:             op = ArithmeticOp.LT; break;
         case GT:             op = ArithmeticOp.GT; break;
         case LE:             op = ArithmeticOp.LE; break;
         case GE:             op = ArithmeticOp.GE; break;
      }
      binaryExpr.left.accept(this);
      binaryExpr.right.accept(this);
      binaryExpr.address = new Temp();
      curFunction.vars.add(new Variable(binaryExpr.address, 4));

      if (!((op == ArithmeticOp.ADD || op == ArithmeticOp.SUB) && binaryExpr.left.returnType instanceof PointerType)) {
         curFunction.body.add(new ArithmeticExpr(binaryExpr.address, binaryExpr.left.address, op, binaryExpr.right.address));
      }
      else {
         int baseSize;
         baseSize = ((PointerType)(binaryExpr.left.returnType)).baseType.size;
         if (op == ArithmeticOp.ADD || (op == ArithmeticOp.SUB && binaryExpr.right instanceof IntConst)) {
            Temp temp = new Temp();
            curFunction.vars.add(new Variable(temp, 4));
            curFunction.body.add(new ArithmeticExpr(temp, binaryExpr.right.address, ArithmeticOp.MUL, new IntegerConst(baseSize)));
            curFunction.body.add(new ArithmeticExpr(binaryExpr.address, binaryExpr.left.address, op, temp));
         }
         if (op == ArithmeticOp.SUB) {
            Temp tmp = new Temp();
            curFunction.vars.add(new Variable(tmp, 4));
            curFunction.body.add(new ArithmeticExpr(tmp, binaryExpr.left.address, op, binaryExpr.right.address));
            IntegerConst integerConst = new IntegerConst(baseSize);
            curFunction.vars.add(new Variable(integerConst, 4));
            curFunction.body.add(new ArithmeticExpr(binaryExpr.address, tmp, ArithmeticOp.DIV, integerConst));
         }
      }
   }

   boolean structMallocSwitcher = false;
   public void assignExpr(BinaryExpr binaryExpr) {
      if (binaryExpr.right instanceof CastExpr && ((CastExpr) binaryExpr.right).expr instanceof FunctionCall && ((((Identifier)((FunctionCall) ((CastExpr) binaryExpr.right).expr).expr).symbol.toString().equals("malloc")))) {
         if (binaryExpr.left.returnType instanceof PointerType && ((PointerType)binaryExpr.left.returnType).baseType instanceof StructType)
            structMallocSwitcher = true;
      }
      if (binaryExpr.right instanceof FunctionCall && ((Identifier)((FunctionCall) binaryExpr.right).expr).symbol.toString().equals("malloc")) {
         if (binaryExpr.left.returnType instanceof PointerType && ((PointerType)binaryExpr.left.returnType).baseType instanceof StructType)
            structMallocSwitcher = true;
      }
      binaryExpr.address = new Temp();
      curFunction.vars.add(new Variable(binaryExpr.address, 4));
      Expr source = null;
      switch (binaryExpr.op) {
         case ASSIGN:
            binaryExpr.right.accept(this);
            source = binaryExpr.right;
            break;
         case ASSIGN_MUL:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.MUL, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_DIV:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.DIV, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_MOD:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.MOD, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_ADD:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.ADD, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_SUB:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.SUB, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_SHL:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.SHL, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_SHR:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.SHR, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_AND:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.LOGICAL_AND, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_XOR:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.XOR, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
         case ASSIGN_OR:
            source = new BinaryExpr(binaryExpr.left, BinaryOp.LOGICAL_OR, binaryExpr.right);
            arithmeticExpr((BinaryExpr)source);
            break;
      }
      if (binaryExpr.left.returnType instanceof RecordType){
         binaryExpr.left.accept(this);
         SUAssign(binaryExpr.left.address, source.address, (RecordType)binaryExpr.left.returnType);
         curFunction.body.add(new Assign(binaryExpr.address, binaryExpr.left.address));
         return;
      }
      if (!(
              binaryExpr.left instanceof UnaryExpr && ((UnaryExpr) binaryExpr.left).op == UnaryOp.ASTERISK
              || binaryExpr.left instanceof PointerAccess
              || binaryExpr.left instanceof RecordAccess
              || binaryExpr.left instanceof ArrayAccess
              )) {
         binaryExpr.left.accept(this);
         curFunction.body.add(new Assign(binaryExpr.left.address, source.address));
         curFunction.body.add(new Assign(binaryExpr.address, binaryExpr.left.address));
      }
      else {
         /*TODO: check that the address of expression is a reference*/
         if (binaryExpr.left instanceof UnaryExpr) {
            binaryExpr.left.accept(this);
            curFunction.body.add(new MemoryWrite(((UnaryExpr) binaryExpr.left).expr.address, source.address, ((PointerType) ((UnaryExpr) binaryExpr.left).expr.returnType).baseType.size));
            curFunction.body.add(new MemoryRead(binaryExpr.address, ((UnaryExpr) binaryExpr.left).expr.address, 4));
         }
         if (binaryExpr.left instanceof PointerAccess) {
            PointerAccess pointerAccess = (PointerAccess) binaryExpr.left;
            pointerAccess.body.accept(this);
            Temp temp = new Temp();
            curFunction.vars.add(new Variable(temp, 4));
            curFunction.body.add(new MemoryRead(temp, pointerAccess.body.address, ((PointerType) pointerAccess.body.returnType).baseType.size));
            RecordType type = (RecordType)((PointerType) pointerAccess.body.returnType).baseType;
            int offset = type.members.getOffset(pointerAccess.attribute.num);
            int size = type.members.getType(pointerAccess.attribute.num).size;
            curFunction.body.add(new ArrayWrite(temp, offset, source.address, size));
            curFunction.body.add(new ArrayRead(binaryExpr.address, temp, offset, size));
         }
         if (binaryExpr.left instanceof RecordAccess) {
            RecordAccess recordAccess = (RecordAccess)binaryExpr.left;
            recordAccess.body.accept(this);
            int offset = ((RecordType)recordAccess.body.returnType).members.getOffset(recordAccess.attribute.num);
            int size = ((RecordType) recordAccess.body.returnType).members.getType(recordAccess.attribute.num).size;
            curFunction.body.add(new ArrayWrite(recordAccess.body.address, offset, source.address, size));
         }
         if (binaryExpr.left instanceof ArrayAccess) {
            ArrayAccess arrayAccess = (ArrayAccess) binaryExpr.left;
            if (digArrayAccessBaseReturnType(arrayAccess) instanceof ArrayType) {
               Pair pair = calArrayAccess(arrayAccess);
               Address arrayAddress = pair.arrayAddress;
               int offset = pair.offset;
               int baseSize = pair.baseSize;
               if (offset > 0) {
                  curFunction.body.add(new ArrayWrite(arrayAddress, offset, source.address, baseSize));
                  curFunction.body.add(new ArrayRead(binaryExpr.address, arrayAddress, offset, 4));
               }
               if (offset == 0) {
                  curFunction.body.add(new MemoryWrite(arrayAddress, source.address, baseSize));
                  curFunction.body.add(new MemoryRead(binaryExpr.address, arrayAddress, baseSize));
               }
               if (offset < 0)
                  curFunction.body.add(new MemoryWrite(arrayAddress, source.address, baseSize));
                  curFunction.body.add(new MemoryRead(binaryExpr.address, arrayAddress, baseSize));
            }
            else {
               Expr expr = arrayAccess;
               LinkedList<Address> offsets = new LinkedList<>();
               while (expr instanceof ArrayAccess) {
                  ((ArrayAccess) expr).subscript.accept(this);
                  offsets.push(((ArrayAccess) expr).subscript.address);
                  expr = ((ArrayAccess) expr).body;
               }
               expr.accept(this);
               Address temp = expr.address;
               while (offsets.size() > 1) {
                  temp = pointerArrayAccess(temp, offsets.pop());
               }
               Temp tmp = new Temp();
               curFunction.vars.add(new Variable(tmp, 4));
               Temp offset = new Temp();
               curFunction.vars.add(new Variable(offset, 4));
               curFunction.body.add(new ArithmeticExpr(offset, new IntegerConst(4), ArithmeticOp.MUL, offsets.pop()));
               curFunction.body.add(new ArithmeticExpr(tmp, temp, ArithmeticOp.ADD, offset));
               curFunction.body.add(new MemoryWrite(tmp, source.address, 4));
               curFunction.body.add(new MemoryRead(binaryExpr.address, tmp, 4));
            }
         }
      }
   }

   public void commaExpr(BinaryExpr binaryExpr) {
      binaryExpr.left.accept(this);
      binaryExpr.right.accept(this);
      binaryExpr.address = binaryExpr.right.address;
   }


   public void visit(EmptyExpr  emptyExpr) {/* nothing */}
   public void visit(SizeofExpr sizeofExpr) {
      sizeofExpr.address = new IntegerConst((int)sizeofExpr.returnType.value);
      curFunction.vars.add(new Variable(sizeofExpr.address, 4));
   }
   public void visit(CastExpr castExpr) {
      castExpr.expr.accept(this);
      castExpr.address = castExpr.expr.address;
   }

   public void visit(UnaryExpr unaryExpr) {
      /**
       * Here we only consider the case when the order of ! operator is only not higher than || and &&
       * */
      if (unaryExpr.op == UnaryOp.NOT) {
         Expr B = unaryExpr;
         Expr B1 = unaryExpr.expr;
         B1.True = B.False;
         B1.False = B.True;
         B1.accept(this);
         if (!isBoolExpr(B1)) {
            curFunction.body.add(new IfNEZGoto(B1.address, B1.True));
            curFunction.body.add(new Goto(B1.False));
         }
         return;
      }
      switch (unaryExpr.op) {
         case INC:
           // if (unaryExpr.expr.returnType instanceof PointerType)
           {
               BinaryExpr binaryExpr = new BinaryExpr(unaryExpr.expr, BinaryOp.ASSIGN_ADD, new IntConst(1));
               assignExpr(binaryExpr);
               unaryExpr.address = binaryExpr.address;
            }
         /*
            else
            {
               unaryExpr.expr.accept(this);
               curFunction.body.add(new ArithmeticExpr(unaryExpr.expr.address, unaryExpr.expr.address, ArithmeticOp.ADD, new IntegerConst(1)));
               unaryExpr.address = unaryExpr.expr.address;
            }
           */
            break;
         case DEC:
           // if (unaryExpr.expr.returnType instanceof PointerType)
            {
               BinaryExpr binaryExpr = new BinaryExpr(unaryExpr.expr, BinaryOp.ASSIGN_SUB, new IntConst(1));
               assignExpr(binaryExpr);
               unaryExpr.address = binaryExpr.address;
            }
         /*
            else {
               unaryExpr.expr.accept(this);
               curFunction.body.add(new ArithmeticExpr(unaryExpr.expr.address, unaryExpr.expr.address, ArithmeticOp.ADD, new IntegerConst(1)));
               unaryExpr.address = unaryExpr.expr.address;
            }
           */

            break;
         case SIZEOF:
            unaryExpr.expr.accept(this);
            unaryExpr.address = new IntegerConst((int) unaryExpr.returnType.value);
            break;
         case AMPERSAND:
            unaryExpr.expr.accept(this);
            unaryExpr.address = new Temp();
            curFunction.vars.add(new Variable(unaryExpr.address, 4));
            curFunction.body.add(new AddressOf(unaryExpr.address, (Name)unaryExpr.expr.address));
            break;
         case ASTERISK:
            unaryExpr.expr.accept(this);
            unaryExpr.address = new Temp();
            curFunction.vars.add(new Variable(unaryExpr.address, 4));
            curFunction.body.add(new MemoryRead(unaryExpr.address, unaryExpr.expr.address, ((PointerType) unaryExpr.expr.returnType).baseType.size));
            break;
         case PLUS:
            unaryExpr.expr.accept(this);
            break;
         case MINUS:
            unaryExpr.expr.accept(this);
            unaryExpr.address = new Temp();
            curFunction.vars.add(new Variable(unaryExpr.address, 4));
            curFunction.body.add(new ArithmeticExpr(unaryExpr.address, ArithmeticOp.MINUS, unaryExpr.expr.address));
            break;
         case TILDE:
            unaryExpr.expr.accept(this);
            unaryExpr.address = new Temp();
            curFunction.vars.add(new Variable(unaryExpr.address, 4));
            curFunction.body.add(new ArithmeticExpr(unaryExpr.address, ArithmeticOp.TILDE, unaryExpr.expr.address));
            break;
      }
   }

   public void visit(PointerAccess pointerAccess) {
      pointerAccess.body.accept(this);
      Temp temp = new Temp();
      curFunction.vars.add(new Variable(temp, 4));
      curFunction.body.add(new MemoryRead(temp, pointerAccess.body.address, ((PointerType) pointerAccess.body.returnType).baseType.size));
      RecordType type = (RecordType)((PointerType) pointerAccess.body.returnType).baseType;
      int offset = type.members.getOffset(pointerAccess.attribute.num);
      int size = type.members.getType(pointerAccess.attribute.num).size;
      pointerAccess.address = new Temp();
      curFunction.vars.add(new Variable(pointerAccess.address, 4));
      curFunction.body.add(new ArrayRead(pointerAccess.address, temp, offset, size));
   }

   public void visit(RecordAccess recordAccess) {
      recordAccess.body.accept(this);
      int offset = ((RecordType)recordAccess.body.returnType).members.getOffset(recordAccess.attribute.num);
      int size = ((RecordType) recordAccess.body.returnType).members.getType(recordAccess.attribute.num).size;
      recordAccess.address = new Temp();
      curFunction.vars.add(new Variable(recordAccess.address, 4));
      curFunction.body.add(new ArrayRead(recordAccess.address, recordAccess.body.address, offset, size));
   }

   public void visit(SelfDecrement selfDecrement) {
     // selfDecrement.body.accept(this);
      BinaryExpr binaryExpr = new BinaryExpr(selfDecrement.body, BinaryOp.ASSIGN_SUB, new IntConst(1));
      selfDecrement.address = new Temp();
      curFunction.vars.add(new Variable(selfDecrement.address, 4));
      assignExpr(binaryExpr);
      curFunction.body.add(new ArithmeticExpr(selfDecrement.address, binaryExpr.address, ArithmeticOp.ADD, new IntegerConst(1)));
      //curFunction.body.add(new Assign(selfDecrement.address, selfDecrement.body.address));
      //curFunction.body.add(new ArithmeticExpr(selfDecrement.body.address, selfDecrement.body.address, ArithmeticOp.SUB, new IntegerConst(1)));
   }

   public void visit(SelfIncrement selfIncrement) {
      //selfIncrement.body.accept(this);
      BinaryExpr binaryExpr = new BinaryExpr(selfIncrement.body, BinaryOp.ASSIGN_ADD, new IntConst(1));
      selfIncrement.address = new Temp();
      curFunction.vars.add(new Variable(selfIncrement.address, 4));
      assignExpr(binaryExpr);
      curFunction.body.add(new ArithmeticExpr(selfIncrement.address, binaryExpr.address, ArithmeticOp.SUB, new IntegerConst(1)));
      //curFunction.body.add(new Assign(selfIncrement.address, selfIncrement.body.address));
      //curFunction.body.add(new ArithmeticExpr(selfIncrement.body.address, selfIncrement.body.address, ArithmeticOp.ADD, new IntegerConst(1)));
   }

   public Type digArrayAccessBaseReturnType(ArrayAccess arrayAccess) {
      Expr tmp = arrayAccess;
      while (tmp instanceof ArrayAccess)
         tmp = ((ArrayAccess) tmp).body;
      return tmp.returnType;
   }

   public Pair calArrayAccess(ArrayAccess arrayAccess) {
      /*Step 1: check whether the subscripts are all integers*/
      /*Step 2: if so, create the list of subscripts and the list of sizes of subarrays
      *         otherwise, create the list of subscripts' address and the list of sizes of subarrays*/
      /* Step 3: use the arrayread or memoryread respectively. */

      Expr tmp = arrayAccess;
      LinkedList<Integer> subscriptList = new LinkedList<>(); /*the top is the leftmost*/
      LinkedList<Address> subscriptAddressList = new LinkedList<>();
      boolean allInteger = true;
      while (tmp instanceof ArrayAccess) {
         if (!(((ArrayAccess) tmp).subscript instanceof IntConst)) {
            allInteger = false;
            break;
         }
         subscriptList.addLast((Integer) (((ArrayAccess) tmp).subscript.returnType.value));
         tmp = ((ArrayAccess) tmp).body;
      }

      if (!(allInteger == true)) {
         tmp = arrayAccess;
         while (tmp instanceof ArrayAccess) {
            ((ArrayAccess) tmp).subscript.accept(this);
            subscriptAddressList.addLast(((ArrayAccess) tmp).subscript.address);
            tmp = ((ArrayAccess) tmp).body;
         }
      }
      tmp.accept(this);
      Address arrayAddress = tmp.address;

      LinkedList<Integer> arraySizeList = new LinkedList<>(); /*the top is the lestmost*/
      //Type type = varTable.getType(((Identifier) tmp).symbol.num);
      Type type = tmp.returnType;
      while (type instanceof ArrayType) {
         arraySizeList.push(((PointerType) type).baseType.size);
         type = ((PointerType) type).baseType;
      }
      int baseSize = type.size;



      if (allInteger) {
         int offset  = 0;
         boolean partial =  false;
         if (subscriptList.size() != arraySizeList.size()) {
            partial = true;
            System.out.println("1.The size of subscriptList and the size of arraySizeList is not equal");
         }
         for (int i = 0; i < subscriptList.size(); i++){
            offset += subscriptList.get(subscriptList.size() - 1 - i) * arraySizeList.get(arraySizeList.size() - 1 - i);
         }
         arrayAccess.address = new Temp();
         curFunction.vars.add(new Variable(arrayAccess.address, 4));
         if (partial) {
            curFunction.body.add(new ArithmeticExpr(arrayAccess.address, arrayAddress, ArithmeticOp.ADD, new IntegerConst(offset)));
            offset = -1;
         }
         return new Pair(arrayAddress, offset, baseSize);
      }
      else {
         boolean partial = false;
         if (subscriptAddressList.size() != arraySizeList.size()) {
            partial = true;
         }
         Address sum = new Temp();
         curFunction.body.add(new Assign(sum, new IntegerConst(0)));
         curFunction.vars.add(new Variable(sum, 4));
         for (int i = 0; i < subscriptAddressList.size(); i++) {
            Temp temp = new Temp();
            curFunction.vars.add(new Variable(temp, 4));
            if (subscriptAddressList.get(i) == null) System.out.println("index "+ i + " is null");
            curFunction.body.add(new ArithmeticExpr(temp, subscriptAddressList.get(subscriptAddressList.size() - 1 - i), ArithmeticOp.MUL, new IntegerConst(arraySizeList.get(arraySizeList.size() - 1 - i))));
            curFunction.body.add(new ArithmeticExpr(sum, sum, ArithmeticOp.ADD, temp));
         }
         Temp temp = new Temp();
         curFunction.vars.add(new Variable(temp, 4));
         curFunction.body.add(new ArithmeticExpr(temp, arrayAddress, ArithmeticOp.ADD, sum));
         arrayAccess.address = new Temp();
         curFunction.vars.add(new Variable(arrayAccess.address, 4));
         if (!partial) return new Pair(temp, baseSize);
         else {
            curFunction.body.add(new Assign(arrayAccess.address, temp));
            return new Pair(temp, -1, baseSize);
         }
      }
   }

   public void visit(ArrayAccess arrayAccess) {
      Type type = digArrayAccessBaseReturnType(arrayAccess);
      if (type instanceof ArrayType) {
         Pair pair = calArrayAccess(arrayAccess);
         Address arrayAddress = pair.arrayAddress;
         int offset = pair.offset;
         int baseSize = pair.baseSize;
         if (offset > 0)
            curFunction.body.add(new ArrayRead(arrayAccess.address, arrayAddress, offset, baseSize));
         if (offset == 0)
            curFunction.body.add(new MemoryRead(arrayAccess.address, arrayAddress, baseSize));
      }
      else {
         if (!(type instanceof PointerType))
            throw new RuntimeException("ArrayAccess error");
         Expr expr = arrayAccess;
         LinkedList<Address> offsets = new LinkedList<>();
         while (expr instanceof ArrayAccess) {
            ((ArrayAccess) expr).subscript.accept(this);
            offsets.push(((ArrayAccess) expr).subscript.address);
            expr = ((ArrayAccess) expr).body;
         }
         expr.accept(this);
         Address temp = expr.address;
         while (!offsets.isEmpty()) {
            temp = pointerArrayAccess(temp, offsets.pop());
         }
         arrayAccess.address = temp;
      }
   }

   public Address pointerArrayAccess(Address address, Address offset) {
      if (offset == null)
         System.out.println("pointerArrayAccess error");
      Temp temp = new Temp();
      curFunction.vars.add(new Variable(temp, 4));
      Temp read = new Temp();
      curFunction.vars.add(new Variable(read, 4));
      Temp tempOffset = new Temp();
      curFunction.vars.add(new Variable(tempOffset, 4));
      curFunction.body.add(new ArithmeticExpr(tempOffset, offset, ArithmeticOp.MUL, new IntegerConst(4)));
      curFunction.body.add(new ArithmeticExpr(read, address, ArithmeticOp.ADD, tempOffset));
      curFunction.body.add(new MemoryRead(temp, read, 4));
      return temp;
   }

   /*there are new struct and array here*/

   public void SUAssign(Address dest, Address src, RecordType recordType) {
      Iterator<Map.Entry<Integer, Type>> it = recordType.members.list.entrySet().iterator();
      while (it.hasNext()) {
         Map.Entry<Integer, Type> entry = it.next();
         if (entry.getKey() == null || entry.getKey() == 0)
            it.remove();
         Temp temp = new Temp();
         curFunction.vars.add(new Variable(temp, 4));
         int offset = recordType.members.getOffset(entry.getKey());
         curFunction.body.add(new ArrayRead(temp, src, offset, 4));
         if (recordType.members.getType(entry.getKey()) instanceof ArrayType){
            ArrayType arrayType = (ArrayType)recordType.members.getType(entry.getKey());
            Temp destArray = new Temp();
            curFunction.vars.add(new Variable(destArray, 4));
            curFunction.body.add(new ArrayRead(destArray, dest, offset, 4));
            for (int i = 0; i < arrayType.size; i += 4) {
               Temp tmp = new Temp();
               curFunction.vars.add(new Variable(tmp, 4));
               curFunction.body.add(new ArrayRead(tmp, temp, i, 4));
               curFunction.body.add(new ArrayWrite(destArray, i, tmp, 4));
            }
         }
         else {
            curFunction.body.add(new ArrayWrite(dest, offset, temp, 4));
         }
      }
   }

   public void visit(FunctionCall functionCall) {
      functionCall.args.accept(this);
      LinkedList<Param> tmpList = new LinkedList<>();
      for (Expr expr : functionCall.args.exprs) {
         if (expr.address == null)
            System.out.println("find null here");
         if (expr.returnType instanceof StructType) {
            /*new record here*/
            Temp temp = new Temp();
            //curFunction.vars.add(new Variable(temp, expr.returnType.size + 4));
            curFunction.vars.add(new Variable(temp, expr.returnType.size));
            newStruct(temp, (StructType) expr.returnType);
            SUAssign(temp, expr.address, (StructType)expr.returnType);
            tmpList.add(new MemoryParam(temp, expr.returnType.size));
         }
         else
            tmpList.add(new BasicParam(expr.address));
      }

      for (int i = 0; i < tmpList.size(); i++) {
         curFunction.body.add(tmpList.get(i));
      }

      Integer functionName;
      functionName = ((Identifier) functionCall.expr).symbol.num;
      String name = "_" + ((Identifier) functionCall.expr).symbol.toString();

      functionCall.address = new Temp();
      curFunction.vars.add(new Variable(functionCall.address, 4));
      if (name.equals("_printf"))
         curFunction.body.add(new Assign(new Name("_printf_cnt", true), new IntegerConst(functionCall.args.exprs.size())));
      if (name.equals("_malloc") && structMallocSwitcher == true) {
         curFunction.body.add(new Call(functionCall.address, functionName, name + "_struct", functionCall.args.exprs.size()));
         structMallocSwitcher = false;
         return;
      }
      curFunction.body.add(new Call(functionCall.address, functionName, name, functionCall.args.exprs.size()));
   }

   public void visit(Identifier identifier) {
      identifier.address = addressTable.getAddress(identifier.symbol.num);
      if (identifier.address == null) throw new RuntimeException("Identifier error!");
   }

   public void visit(IntConst intConst) {
      intConst.address = new IntegerConst(intConst.value);
   }
   public void visit(CharConst charConst) {
      charConst.address = new IntegerConst((int) charConst.value);
   }
   public void visit(StringConst stringConst) {
      stringCnt++;
      Address tmp;
      if (curFunction.name.equals("_start")) {
         tmp = new Name("str_ptr_" + stringCnt, true);
      }
      else {
         tmp = new Temp();
      }
      curFunction.vars.add(new Variable(tmp, 4));
      curFunction.StringAddressList.add(new StringPair(tmp, stringConst.value));
      ir.stringAddressConstList.add(new StringPair(tmp, stringConst.value));
      stringConst.address = tmp;
   }

   public void visit(Symbol symbol) {/*nothing*/}

   /*------------------STATEMENTS----------------------------*/
   public void visit(StmtList stmtList) {
      for (Stmt stmt : stmtList.stmts)
         stmt.accept(this);
   }

   public void visit(CompoundStmt compoundStmt) {
      compoundStmt.decls.accept(this);
      compoundStmt.stmts.accept(this);
   }

   public void visit(BreakStmt breakStmt) {
      curFunction.body.add(new Goto(loopBreak.peek()));
   }

   public void visit(ContinueStmt continueStmt) {
      curFunction.body.add(new Goto(loopContinue.peek()));
   }

   public void visit(IfStmt ifStmt) {
      Expr B = ifStmt.condition;
      Label next = new Label();
      if ((ifStmt.alternative instanceof EmptyExpr)) {
         B.True = new Label();
         B.False = next;

         dealWithCondition(B);
         curFunction.body.add(B.True);
         ifStmt.consequent.accept(this);
         curFunction.body.add(next);
      }
      else  {
         B.True = new Label();
         B.False = new Label();
         //B.accept(this);
         dealWithCondition(B);
         curFunction.body.add(B.True);
         ifStmt.consequent.accept(this);
         curFunction.body.add(new Goto(next));
         curFunction.body.add(B.False);
         ifStmt.alternative.accept(this);
         curFunction.body.add(next);
      }

   }

   public void visit(ForLoop forLoop) {
      forLoop.init.accept(this);
      Label next = new Label();
      loopBreak.push(next);
      Label begin = new Label();
      loopContinue.push(begin);
      Expr B = forLoop.condition;
      B.True = new Label();
      B.False = next;

      curFunction.body.add(begin);
     // B.accept(this);
      dealWithCondition(B);
      curFunction.body.add(B.True);
      forLoop.body.accept(this);
      forLoop.step.accept(this);
      curFunction.body.add(new Goto(begin));
      curFunction.body.add(next);
      loopBreak.pop();
      loopContinue.pop();
   }

   private LinkedList<Label> loopBreak;
   private LinkedList<Label> loopContinue;

   public void visit(WhileLoop whileLoop) {
      Expr B = whileLoop.condition;
      Label next = new Label();
      loopBreak.push(next);
      Label begin = new Label();
      loopContinue.push(begin);
      B.True = new Label();
      B.False = next;

      curFunction.body.add(begin);
      //B.accept(this);
      dealWithCondition(B);
      curFunction.body.add(B.True);
      whileLoop.body.accept(this);
      curFunction.body.add(new Goto(begin));
      curFunction.body.add(next);
      loopBreak.pop();
      loopContinue.pop();
   }

   public void visit(ReturnStmt returnStmt) {
      if (returnStmt.expr instanceof EmptyExpr) {
         curFunction.body.add(new Return());
         return;
      }
      if (isBoolExpr(returnStmt.expr) && returnStmt.expr instanceof BinaryExpr) {
         returnStmt.expr.True = new Label();
         returnStmt.expr.False = new Label();
         andOrExpr((BinaryExpr) returnStmt.expr);
         curFunction.body.add(returnStmt.expr.True);
         curFunction.body.add(new Return(new BasicParam(new IntegerConst(1))));
         curFunction.body.add(returnStmt.expr.False);
         curFunction.body.add(new Return(new BasicParam(new IntegerConst(0))));
         return;
      }

      returnStmt.expr.accept(this);
      curReturn = returnStmt;
   /*
      if (returnStmt.expr.returnType instanceof StructType) {
         Expr expr = returnStmt.expr;
         Temp temp = new Temp();
         curFunction.vars.add(new Variable(temp, expr.returnType.size));
         newStruct(temp, (StructType) expr.returnType);
         SUAssign(temp, expr.address, (RecordType)expr.returnType);
         curFunction.body.add(new Return(new MemoryParam(temp, returnStmt.expr.returnType.size)));
      }
      else */
      {
         curFunction.body.add(new Return(new BasicParam(returnStmt.expr.address)));
      }
   }

   void newStruct(Address address, StructType structType) {
      for (Decl decl : structType.declrs.decls) {
         if (decl.type instanceof ArrayType) {
            count++;
            Name name = new Name("struct_member_" + count);
            curFunction.vars.add(new Variable(name, decl.type.size + 4));
            curFunction.body.add(new ArrayWrite(address, structType.members.getOffset(decl.name.num), name, 4));
         }
         else {
            if (decl.type instanceof StructType) {
               count++;
               Name name = new Name("struct_member_" + count);
               curFunction.vars.add(new Variable(name, decl.type.size));
               //curFunction.vars.add(new Variable(name, decl.type.size + 4));
               curFunction.body.add(new ArrayWrite(address, structType.members.getOffset(decl.name.num), name, 4));
            }
         }
      }
   }
   /*------------------------Print-----------------------*/
   public void print() throws IOException {
      for (Function function : ir.fragments) {
         out.write((function.name + ": \n").getBytes());
         /*
         for (Variable variable : function.vars) {
            variable.address.printAddress(out);
            out.write((" " + variable.size + "\n").getBytes());
         }
         */
         for (Quadruple quadruple : function.body)
            quadruple.print(out);
         out.write("\n".getBytes());
      }
   }

   /*-----------------------Merge Labels----------------*/
   public void merger() {
      Quadruple last = null;
      for (Function function : ir.fragments) {
         List<Quadruple> removeList = new LinkedList();
         for (Quadruple quadruple : function.body) {
            if (last instanceof Label && quadruple instanceof Label) {
               ((Label) quadruple).num = ((Label) last).num;
               removeList.add(quadruple);
            }
            else last = quadruple;
         }
         for (Quadruple quadruple : removeList)
            function.body.remove(quadruple);
      }
   }

}


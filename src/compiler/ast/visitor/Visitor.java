package compiler.ast.visitor;

/**
 * Created by Chen on 2015/4/14.
 */
import  compiler.ast.nodes.*;

public interface Visitor {
    public void visit(AST ast);

    public void visit(DeclList declList);
    public void visit(VarDecl varDecl);
    public void visit(FunctionDecl functionDecl);
    public void visit(FunctionDef functionDef);
    public void visit(TypeDecl typeDecl);

    public void visit(InitValue initValue);
    public void visit(InitList initList);

    public void visit(ArrayType arrayType);
    public void visit(CharType charType);
    public void visit(IntType intType);
    public void visit(VoidType voidType);
    public void visit(PointerType pointerType);
    public void visit(StructType structType);
    public void visit(UnionType unionType);

    public void visit(ExprList exprList);
    public void visit(BinaryExpr binaryExpr);
    public void visit(EmptyExpr  emptyExpr);
    public void visit(SizeofExpr sizeofExpr);
    public void visit(CastExpr castExpr);
    public void visit(UnaryExpr unaryExpr);
    public void visit(PointerAccess pointerAccess);
    public void visit(RecordAccess recordAccess);
    public void visit(SelfDecrement selfDecrement);
    public void visit(SelfIncrement selfIncrement);
    public void visit(ArrayAccess arrayAccess);
    public void visit(FunctionCall functionCall);
    public void visit(Identifier identifier);
    public void visit(IntConst intConst);
    public void visit(CharConst charConst);
    public void visit(StringConst stringConst);
    public void visit(Symbol symbol);

    public void visit(StmtList stmtList);
    public void visit(BreakStmt breakStmt);
    public void visit(ContinueStmt continueStmt);
    public void visit(IfStmt ifStmt);
    public void visit(ForLoop forLoop);
    public void visit(WhileLoop whileLoop);
    public void visit(ReturnStmt returnStmt);
    public void visit(CompoundStmt compoundStmt);

}

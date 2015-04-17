package compiler.ast.visitor;

/**
 * Created by Chen on 2015/4/14.
 */
import  compiler.ast.nodes.*;

import java.io.OutputStream;

public interface Visitor {
    void setOutputStream(OutputStream out);
    void visit(AST ast);

    void visit(DeclList declList);
    void visit(VarDecl varDecl);
    void visit(FunctionDecl functionDecl);
    void visit(FunctionDef functionDef);
    void visit(TypeDecl typeDecl);

    void visit(InitValue initValue);
    void visit(InitList initList);

    void visit(ArrayType arrayType);
    void visit(CharType charType);
    void visit(IntType intType);
    void visit(VoidType voidType);
    void visit(PointerType pointerType);
    void visit(StructType structType);
    void visit(UnionType unionType);

    void visit(ExprList exprList);
    void visit(BinaryExpr binaryExpr);
    void visit(EmptyExpr  emptyExpr);
    void visit(SizeofExpr sizeofExpr);
    void visit(CastExpr castExpr);
    void visit(UnaryExpr unaryExpr);
    void visit(PointerAccess pointerAccess);
    void visit(RecordAccess recordAccess);
    void visit(SelfDecrement selfDecrement);
    void visit(SelfIncrement selfIncrement);
    void visit(ArrayAccess arrayAccess);
    void visit(FunctionCall functionCall);
    void visit(Identifier identifier);
    void visit(IntConst intConst);
    void visit(CharConst charConst);
    void visit(StringConst stringConst);
    void visit(Symbol symbol);

    void visit(StmtList stmtList);
    void visit(BreakStmt breakStmt);
    void visit(ContinueStmt continueStmt);
    void visit(IfStmt ifStmt);
    void visit(ForLoop forLoop);
    void visit(WhileLoop whileLoop);
    void visit(ReturnStmt returnStmt);
    void visit(CompoundStmt compoundStmt);

}

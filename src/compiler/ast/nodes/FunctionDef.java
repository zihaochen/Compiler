package compiler.ast.nodes;
import compiler.ast.visitor.Visitor;

public class FunctionDef extends Decl implements House{

    public Type returnType;
    public Symbol name;
    public DeclList prmrts;
    public CompoundStmt body;

    public FunctionDef(Type returnType, Symbol name, DeclList prmrts, CompoundStmt body) {
        this.returnType = returnType;
        this.name = name;
        this.prmrts = prmrts;
        this.body = body;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

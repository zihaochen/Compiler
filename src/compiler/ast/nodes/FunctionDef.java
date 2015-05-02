package compiler.ast.nodes;
import compiler.ast.visitor.Visitor;

public class FunctionDef extends Decl implements House{

    public Type returnType;
    public DeclList prmrts;
    public CompoundStmt body;

    public FunctionDef(Type type, Symbol name, DeclList prmrts, CompoundStmt body) {
        this.type = type;
        this.returnType = ((FunctionType) type).returnType;
        this.name = name;
        this.prmrts = prmrts;
        this.body = body;
    }

    public FunctionDef() {
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

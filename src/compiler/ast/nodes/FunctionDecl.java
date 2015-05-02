package compiler.ast.nodes;

/**
 * Created by Chen on 2015/4/14.
 */
import compiler.ast.visitor.Visitor;

public class FunctionDecl extends Decl implements House{
    public DeclList prmtrs;

    public FunctionDecl(Type type, Symbol name, DeclList prmtrs) {
        this.type = type;
        this.name = name;
        this.prmtrs = prmtrs;
    }


    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }

}

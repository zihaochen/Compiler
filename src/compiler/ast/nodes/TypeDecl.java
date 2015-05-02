package compiler.ast.nodes;

/**
 * Created by Chen on 2015/4/14.
 */


import compiler.ast.visitor.Visitor;

public class TypeDecl extends Decl implements House{

    public TypeDecl(Type type) {
        this.type = type;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

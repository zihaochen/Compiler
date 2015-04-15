package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class VoidType extends Type implements House{

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

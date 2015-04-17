package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class IntType extends Type implements House{
    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }

    @Override
    public void printName() {
        System.out.println("IntType");
    }
}

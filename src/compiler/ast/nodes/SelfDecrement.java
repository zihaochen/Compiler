package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class SelfDecrement extends Expr implements House{
    public Expr body;

    public SelfDecrement() {
        body = null;
    }

    public SelfDecrement(Expr body) {
        this.body = body;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

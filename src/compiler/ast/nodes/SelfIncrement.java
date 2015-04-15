package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class SelfIncrement extends Expr implements House{
    public Expr body;

    public SelfIncrement() {
        body = null;
    }

    public SelfIncrement(Expr body) {
        this.body = body;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

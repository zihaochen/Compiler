package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class PointerAccess extends Expr implements House{
    public Expr body;
    public Symbol attribute;

    public PointerAccess() {
        body = null;
        attribute = null;
    }

    public PointerAccess(Expr body, Symbol attribute) {
        this.body = body;
        this.attribute = attribute;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

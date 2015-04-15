package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class RecordAccess extends Expr implements House {
    public Expr body;
    public Symbol attribute;

    public RecordAccess() {
        body = null;
        attribute = null;
    }

    public RecordAccess(Expr body, Symbol attribute) {
        this.body = body;
        this.attribute = attribute;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

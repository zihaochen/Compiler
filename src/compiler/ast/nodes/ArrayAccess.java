package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class ArrayAccess extends Expr implements House{
    public Expr body;
    public Expr subscript;

    public ArrayAccess() {
        body = null;
        subscript = null;
    }

    public ArrayAccess(Expr body, Expr subscript) {
        this.body = body;
        this.subscript = subscript;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

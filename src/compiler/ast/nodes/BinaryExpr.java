package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class BinaryExpr extends Expr implements House{
    public Expr left;
    public BinaryOp op;
    public Expr right;

    public BinaryExpr() {
        left = null;
        op = null;
        right = null;
    }

    public BinaryExpr(Expr left, BinaryOp op, Expr right) {
        this.left = left;
        this.op = op;
        this.right = right;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

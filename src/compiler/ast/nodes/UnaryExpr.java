package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class UnaryExpr extends Expr implements House{
    public UnaryOp op;
    public Expr expr;

    public UnaryExpr() {
        op = null;
        expr = null;
        True = False = null;
    }

    public UnaryExpr(UnaryOp op, Expr expr) {
        this.op = op;
        this.expr = expr;
        True = False = null;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

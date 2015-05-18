package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;


public class FunctionCall extends Expr implements House{
    public Expr expr;
    public ExprList args;

    public FunctionCall() {
        expr = null;
        args = null;
    }

    public FunctionCall(Expr Expr, ExprList args) {
        this.expr = Expr;
        this.args = args;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

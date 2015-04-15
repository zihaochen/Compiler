package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

import java.util.List;

public class FunctionCall extends Expr implements House{
    public Symbol body;
    public ExprList args;

    public FunctionCall() {
        body = null;
        args = null;
    }

    public FunctionCall(Symbol body, ExprList args) {
        this.body = body;
        this.args = args;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

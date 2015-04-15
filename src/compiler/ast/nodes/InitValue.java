package compiler.ast.nodes;


import compiler.ast.visitor.Visitor;

public class InitValue extends Initializer implements House{
    public Expr expr;

    public InitValue() {
        expr = null;
    }

    public InitValue(Expr expr) {
        this.expr = expr;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

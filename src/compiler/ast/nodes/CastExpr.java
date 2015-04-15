package compiler.ast.nodes;

import compiler.ast.visitor.Visitor
        ;
public class CastExpr extends Expr implements House{
    public Type cast;
    public Expr expr;

    public CastExpr() {
        cast = null;
        expr = null;
    }

    public CastExpr(Type cast, Expr expr) {
        this.cast = cast;
        this.expr = expr;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

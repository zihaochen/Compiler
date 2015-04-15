package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class SizeofExpr extends Expr implements House{
    public Type type;

    public SizeofExpr() {
        type = null;
    }

    public SizeofExpr(Type type) {
        this.type = type;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

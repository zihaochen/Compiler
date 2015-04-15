package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class EmptyExpr extends Expr implements House{
    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

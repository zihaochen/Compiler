package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class ReturnStmt extends Stmt implements House{
    public Expr expr;

    public ReturnStmt() {
        expr = null;
    }

    public ReturnStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

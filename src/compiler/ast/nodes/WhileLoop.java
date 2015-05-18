package compiler.ast.nodes;

import compiler.IR.Nodes.Expression.Label;
import compiler.ast.visitor.Visitor;

public class WhileLoop extends ItrStmt implements House{
    public Expr condition;
    public Stmt body;
    public Label next;

    public WhileLoop() {
        condition = null;
        body = null;
        next = null;
    }

    public WhileLoop(Expr condition, Stmt body) {
        this.condition = condition;
        this.body = body;
        next = null;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

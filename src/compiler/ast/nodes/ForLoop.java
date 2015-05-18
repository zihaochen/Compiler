package compiler.ast.nodes;

import compiler.IR.Nodes.Expression.Label;
import compiler.ast.visitor.Visitor;

public class ForLoop extends ItrStmt implements House{
    public Expr init;
    public Expr condition;
    public Expr step;
    public Stmt body;
    public Label next;

    public ForLoop() {
        init = null;
        condition = null;
        step = null;
        body = null;
        next = null;
    }

    public ForLoop(Expr init, Expr condition, Expr step, Stmt body) {
        this.init = init;
        this.condition = condition;
        this.step = step;
        this.body = body;
        next = null;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

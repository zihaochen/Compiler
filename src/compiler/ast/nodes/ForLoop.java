package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class ForLoop extends ItrStmt implements House{
    public Expr init;
    public Expr condition;
    public Expr step;
    public Stmt body;

    public ForLoop() {
        init = null;
        condition = null;
        step = null;
        body = null;
    }

    public ForLoop(Expr init, Expr condition, Expr step, Stmt body) {
        this.init = init;
        this.condition = condition;
        this.step = step;
        this.body = body;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

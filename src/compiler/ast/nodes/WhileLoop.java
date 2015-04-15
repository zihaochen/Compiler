package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class WhileLoop extends Stmt implements House{
    public Expr condition;
    public Stmt body;

    public WhileLoop() {
        condition = null;
        body = null;
    }

    public WhileLoop(Expr condition, Stmt body) {
        this.condition = condition;
        this.body = body;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

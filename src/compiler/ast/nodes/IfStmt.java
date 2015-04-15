package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class IfStmt extends Stmt implements House{
    public Expr condition;
    public Stmt consequent;
    public Stmt alternative;

    public IfStmt() {
        condition = null;
        consequent = null;
        alternative = null;
    }

    public IfStmt(Expr condition, Stmt consequent, Stmt alternative) {
        this.condition = condition;
        this.consequent = consequent;
        this.alternative = alternative;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

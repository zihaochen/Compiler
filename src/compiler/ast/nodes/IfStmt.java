package compiler.ast.nodes;

import compiler.IR.Nodes.Expression.Label;
import compiler.ast.visitor.Visitor;

public class IfStmt extends Stmt implements House{
    public Expr condition;
    public Stmt consequent;
    public Stmt alternative;
    public Label next;

    public IfStmt() {
        next = null;
        condition = null;
        consequent = null;
        alternative = null;
    }

    public IfStmt(Expr condition, Stmt consequent, Stmt alternative) {
        this.condition = condition;
        this.consequent = consequent;
        this.alternative = alternative;
        next = null;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

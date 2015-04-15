package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class ContinueStmt extends Stmt implements House{
    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

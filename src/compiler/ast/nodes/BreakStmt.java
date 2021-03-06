package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class BreakStmt extends Stmt implements House{

    public ItrStmt location;

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

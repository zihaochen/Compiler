package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class CompoundStmt extends Stmt implements House{
    public DeclList decls;
    public StmtList stmts;

    public CompoundStmt(DeclList decls, StmtList stmts) {
        this.decls = decls;
        this.stmts = stmts;
    }

    public CompoundStmt() {
        decls = null;
        stmts = null;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

package compiler.ast.nodes;

/**
 * Created by Chen on 2015/4/14.
 */
import java.util.LinkedList;
import java.util.List;
import compiler.ast.visitor.Visitor;

public class StmtList implements House{
    public List<Stmt> stmts;

    public StmtList() {
        stmts = new LinkedList<>();
    }

    public StmtList add(Stmt stmt) {
        stmts.add(stmt);
        return this;
    }

    public StmtList(List<Stmt> stmts) {
        this.stmts = stmts;
    }

    public StmtList add(StmtList ss){
        stmts.addAll(ss.stmts);
        return this;
    }
    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

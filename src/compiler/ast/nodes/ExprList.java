package compiler.ast.nodes;

import java.util.LinkedList;
import java.util.List;
import compiler.ast.visitor.Visitor;

/**
 * Created by Chen on 2015/4/14.
 */
public class ExprList extends Expr implements House{
    public List<Expr> exprs;

    public ExprList(){
        exprs = new LinkedList<Expr>();
    }

    public ExprList(List<Expr> exprs) {
        this.exprs = exprs;
    }

    public ExprList add(Expr expr) {
        exprs.add(expr);
        return this;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

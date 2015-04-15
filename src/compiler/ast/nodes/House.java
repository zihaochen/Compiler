package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

/**
 * Created by Chen on 2015/4/14.
 */
public interface House {
    public abstract void accept(Visitor v);
}

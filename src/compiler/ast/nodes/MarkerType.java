package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

/**
 * Created by Chen on 2015/5/1.
 */
public class MarkerType extends Type{
    @Override
    public Type clone() {
        Type ret;
        ret = new MarkerType();
        ret.isConst = isConst;
        ret.isLeft = isLeft;
        ret.size = size;
        ret.value = value;
        return ret;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class VoidType extends Type implements House{

    @Override
    public Type clone() {
        Type ret;
        ret = new VoidType();
        ret.size = this.size;
        ret.value = this.value;
        ret.isConst = this.isConst;
        ret.isLeft = this.isLeft;
        return ret;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

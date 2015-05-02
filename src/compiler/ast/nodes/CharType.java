package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class CharType extends Type implements House{

    @Override
    public Type clone() {
        Type ret;
        ret = new CharType();
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

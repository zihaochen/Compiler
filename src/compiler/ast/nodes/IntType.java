package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class IntType extends Type implements House{

    @Override
    public Type clone() {
       Type ret;
        ret = new IntType();
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

    @Override
    public void printName() {
        System.out.println("IntType");
    }
}

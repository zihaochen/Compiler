package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class PointerType extends TypeDig implements House{
    //public Type baseType;

    public PointerType() {
        baseType = null;
    }

    public PointerType(Type baseType) {
        this.baseType = baseType;
    }

    @Override
    public Type clone() {
        Type ret;
        ret = new PointerType(baseType);
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
        System.out.println("PointerType");
    }
}

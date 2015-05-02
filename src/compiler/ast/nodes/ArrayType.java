package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class ArrayType extends PointerType implements House{
    public Expr arraySize;

    public ArrayType() {
        baseType = null;
        arraySize = null;
    }

    public ArrayType(Type baseType, Expr arraySize) {
        this.baseType = baseType;
        this.arraySize = arraySize;
    }

    @Override
    public Type clone() {
        Type ret;
        ret = new ArrayType(baseType, arraySize);
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

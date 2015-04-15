package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class ArrayType extends Type implements House{
    public Type baseType;
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
    public void accept(Visitor v) {
        v.visit(this);
    }
}

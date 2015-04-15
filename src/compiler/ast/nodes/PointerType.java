package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class PointerType extends Type implements House{
    public Type baseType;

    public PointerType() {
        baseType = null;
    }

    public PointerType(Type baseType) {
        this.baseType = baseType;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

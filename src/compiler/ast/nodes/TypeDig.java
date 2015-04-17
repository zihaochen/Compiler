package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

/**
 * Created by Chen on 2015/4/15.
 */
public abstract class TypeDig extends Type implements House{
    public Type baseType;

    @Override
    public void dig(Type t) {
        if (baseType == null) {
            baseType = t;
        }
            else {
            baseType.dig(t);
        }
    }
}

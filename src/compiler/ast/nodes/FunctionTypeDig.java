package compiler.ast.nodes;

/**
 * Created by Chen on 2015/5/1.
 */
public abstract class FunctionTypeDig extends Type implements House {
    public Type returnType;

    @Override
    public void dig(Type t) {
        if (returnType == null) {
            returnType = t;
        }
        else {
            returnType.dig(t);
        }
    }
}

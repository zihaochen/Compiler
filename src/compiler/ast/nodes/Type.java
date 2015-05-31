package compiler.ast.nodes;


import java.util.Objects;

public abstract class Type implements House{

    public boolean isConst = false;
    public Object value = null;
    public int size = 0;
    public int realSize;
    public boolean isLeft = false;

    public void dig(Type t) {
    }

    public void printName(){
    }

    public abstract Type clone();
}

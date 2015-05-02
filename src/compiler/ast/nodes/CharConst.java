package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class CharConst extends Expr implements House{
    public Object value;

    public CharConst() {
    }

    public CharConst(Object value) {
        this.value = value;
    }

    public CharConst(char value) {
        this.value =  (int) value;
    }
    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class IntConst extends Expr implements House{
    public int value;

    public IntConst() {
        value = 0;
    }

    public IntConst(int value) {
        this.value = value;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

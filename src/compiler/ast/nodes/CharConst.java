package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class CharConst extends Expr implements House{
    public String value;

    public CharConst() {
    }

    public CharConst(String value) {
        this.value = value;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

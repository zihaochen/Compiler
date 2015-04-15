package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class StringConst extends Expr implements House {
    public String value;

    public StringConst() {
        value = null;
    }

    public StringConst(String value) {
        this.value = value;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

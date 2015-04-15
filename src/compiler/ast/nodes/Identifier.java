package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class Identifier extends Expr implements House{
    public Symbol symbol;

    public Identifier() {
        symbol = null;
    }

    public Identifier(Symbol symbol) {
        this.symbol = symbol;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

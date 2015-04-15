package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class UnionType extends Type implements House{

    public Symbol name;
    public DeclList declrs;

    public UnionType(Symbol name, DeclList declrs) {
        this.name = name;
        this.declrs = declrs;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

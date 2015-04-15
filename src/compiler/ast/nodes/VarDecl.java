package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class VarDecl extends Decl implements House {
    public VarDecl(Type type, Symbol name, Initializer init) {
        this.type = type;
        this.name = name;
        this.init = init;
    }


    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

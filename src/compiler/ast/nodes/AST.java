package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

/**
 * Created by Chen on 2015/4/14.
 */
public class AST implements House{
    public DeclList decls;

    public AST(DeclList decls) {
        this.decls = decls;
    }

    public AST(Decl decl){
        this.decls = new DeclList(decl);
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

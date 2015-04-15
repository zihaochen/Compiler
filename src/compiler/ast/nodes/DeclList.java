package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

import java.util.List;
import java.util.LinkedList;

public class DeclList implements House{
    public List<Decl> decls;

    public DeclList() {
        decls = new LinkedList<Decl>();
    }

    public DeclList(List<Decl> decls) {
        this.decls = decls;
    }

    public DeclList(Decl decl) {
        decls = new LinkedList<Decl>();
        decls.add(decl);
    }

    public DeclList add(List<Decl> d){
        decls.addAll(d);
        return this;
    }

    public DeclList add(Decl d){
        decls.add(d);
        return this;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

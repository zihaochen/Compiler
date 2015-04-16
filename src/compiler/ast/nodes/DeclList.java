package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

import java.util.List;
import java.util.LinkedList;

public class DeclList implements House{
    public List<Decl> decls;

    public DeclList() {
        decls = new LinkedList<>();
    }

    public DeclList(List<Decl> decls) {
        this.decls = decls;
    }

    public DeclList(Decl decl) {
        decls = new LinkedList<>();
        decls.add(decl);
    }

    public DeclList(DeclList dd) {
        decls = new LinkedList<>();
        decls.addAll(dd.decls);
    }

    public DeclList add(List<Decl> d){
        decls.addAll(d);
        return this;
    }

    public DeclList add(Decl d){
        decls.add(d);
        return this;
    }

    public DeclList add(DeclList dl){
        this.decls.addAll(dl.decls);
        return this;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

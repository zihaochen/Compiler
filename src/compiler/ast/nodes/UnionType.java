package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;


public class UnionType extends RecordType implements House{

    public DeclList declrs;

    public UnionType(Symbol name, DeclList declrs) {
        this.name = name;
        this.declrs = declrs;
    }

    @Override
    public Type clone() {
        Type ret;
        ret = new UnionType(name, declrs);
        ret.size = this.size;
        ret.value = this.value;
        ret.isConst = this.isConst;
        ret.isLeft = this.isLeft;
        ((RecordType) ret).members = this.members;
        return ret;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

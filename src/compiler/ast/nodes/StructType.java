package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class StructType extends RecordType implements House{
    public DeclList declrs;

    public StructType(Symbol name, DeclList declrs) {
        this.name = name;
        this.declrs = declrs;
        realSize = 0;
    }

    @Override
    public Type clone() {
        Type ret;
        ret = new StructType(name, declrs);
        ret.size = this.size;
        ret.value = this.value;
        ret.isConst = this.isConst;
        ret.isLeft = this.isLeft;
        ((StructType)ret).realSize = this.realSize;
        ((RecordType) ret).members = this.members;
        return ret;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by Chen on 2015/4/27.
 */
public class FunctionType extends FunctionTypeDig {

    public List<Type> prmtrs;

    public FunctionType(Type returnType, List<Type> prmtrs) {
        this.returnType = returnType;
        this.prmtrs = prmtrs;
        size = 1;
    }
    public FunctionType(Type returnType,  DeclList declList) {
        this.returnType = returnType;
        this.prmtrs = new LinkedList<>();
        for (Decl decl : declList.decls)
            prmtrs.add(decl.type);
        size = 1;
    }

    public FunctionType() {
        returnType = null;
        prmtrs = new LinkedList<>();
        size = 1;
    }

    @Override
    public Type clone() {
        Type ret;
        ret = new FunctionType(returnType, prmtrs);
        ret.isConst = isConst;
        ret.isLeft = isLeft;
        ret.size = size;
        ret.value = value;
        return ret;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

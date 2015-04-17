package compiler.ast.nodes;

import java.util.List;
import compiler.ast.visitor.Visitor;

public class InitList extends Initializer implements House{
    public List<Initializer> inits;

    public InitList() {
        inits = null;
    }

    public InitList(List<Initializer> inits) {
        this.inits = inits;
    }

    public InitList(InitList i){
        this.inits = i.inits;
    }

    public InitList add(Initializer init){
        this.inits.add(init);
        return this;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

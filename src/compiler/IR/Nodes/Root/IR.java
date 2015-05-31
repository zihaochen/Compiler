package compiler.IR.Nodes.Root;

import compiler.IR.Nodes.Address.StringAddressConst;
import compiler.IR.Nodes.Function.Function;
import compiler.IR.Nodes.Function.Variable;
import compiler.IR.Translator;

import java.util.List;
import java.util.LinkedList;

public class IR {
    public List<Function> fragments;
    public List<Variable> ASUList;
    public List<Translator.StringPair> stringAddressConstList;

    public IR() {
        fragments = new LinkedList<>();
        ASUList = new LinkedList<>();
        stringAddressConstList = new LinkedList<>();
    }

    public IR(List<Function> fragments) {
        this.fragments = fragments;
    }
}

package compiler.IR.Nodes.Root;

import compiler.IR.Nodes.Function.Function;

import java.util.List;
import java.util.LinkedList;

public class IR {
    public List<Function> fragments;

    public IR() {
        fragments = new LinkedList<Function>();
    }

    public IR(List<Function> fragments) {
        this.fragments = fragments;
    }
}

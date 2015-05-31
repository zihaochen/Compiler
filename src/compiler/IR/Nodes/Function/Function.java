package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Address.StringAddressConst;
import compiler.IR.Nodes.Expression.Quadruple;
import compiler.IR.Translator;

import java.util.List;
import java.util.LinkedList;

public class Function {
    public String name;
    public int size;
    public int localSize;
    public List<Variable> args;
    public List<Variable> vars;
    public List<Quadruple> body;

    public List<Variable> ASUList;
    public List<Translator.StringPair> StringAddressList; //TODO

    public Function() {
        name = null; 
        size = localSize = 0;
        args = new LinkedList<Variable>();
        vars = new LinkedList<Variable>();
        body = new LinkedList<Quadruple>();
        ASUList = new LinkedList<>();
        StringAddressList = new LinkedList<>();
    }

    public Function(String name, int size, List<Variable> args,
                    List<Variable> vars, List<Quadruple> body) {
        this.name = name;
        this.size = size;
        this.args = args;
        this.vars = vars;
        this.body = body;
        localSize = 0;
    }
}

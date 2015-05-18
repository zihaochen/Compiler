package compiler.IR.Nodes.Function;

public class Variable  {
    String name;
    int size;

    public Variable() {
        name = null;
        size = 0;
    }

    public Variable(String  name, int size) {
        this.name = name;
        this.size = size;
    }
}

package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Address.Address;

public class Variable  {
    public Address address;
    public int size;

    public Variable() {
        address = null;
        size = 0;
    }

    public Variable(Address address, int size) {
        this.address = address;
        this.size = size;
    }
}

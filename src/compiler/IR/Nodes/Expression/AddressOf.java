package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Address.Name;

import java.io.IOException;
import java.io.OutputStream;

public class AddressOf extends Quadruple {
    public Address dest;
    public Name src;

    public AddressOf() {
        dest = null;
        src = null;
    }

    public AddressOf(Address dest, Name src) {
        this.dest = dest;
        this.src = src;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        dest.printAddress(out);
        out.write((" = &").getBytes());
        src.printAddress(out);
        out.write(("\n").getBytes());
    }
}

package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

public class Assign extends Quadruple {
    public Address dest;
    public Address src;

    public Assign() {
        dest = null;
        src = null;
    }

    public Assign(Address dest, Address src) {
        this.dest = dest;
        this.src = src;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        dest.printAddress(out);
        out.write((" = ").getBytes());
        src.printAddress(out);
        out.write("\n".getBytes());
    }
}

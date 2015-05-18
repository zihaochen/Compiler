package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

public class MemoryWrite extends Quadruple {
    public Address dest;
    public Address src;
    public int size;

    public MemoryWrite() {
        dest = null;
        src = null;
        size = 0;
    }

    public MemoryWrite(Address dest, Address src, int size) {
        this.dest = dest;
        this.src = src;
        this.size = size;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        out.write("*".getBytes());
        dest.printAddress(out);
        out.write(" = ".getBytes());
        src.printAddress(out);
        out.write((" , " + size + "\n").getBytes());

    }
}

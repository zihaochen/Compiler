package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

public class MemoryRead extends Quadruple {
    public Address dest;
    public Address src;
    public int size;

    public MemoryRead() {
        dest = null;
        src = null;
        size = 0;
    }

    public MemoryRead(Address dest, Address src, int size) {
        this.dest = dest;
        this.src = src;
        this.size = size;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        dest.printAddress(out);
        out.write(" = *".getBytes());
        src.printAddress(out);
        out.write((", " + size + "\n").getBytes());
    }
}

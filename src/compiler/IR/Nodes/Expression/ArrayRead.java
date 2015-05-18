package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by Chen on 2015/5/12.
 */
public class ArrayRead extends Quadruple{
    public Address dest;
    public Address src;
    public int offset;
    public int size;

    public ArrayRead() {
        dest = null;
        src = null;
        offset = 0;
        size = 0;
    }

    public ArrayRead(Address dest, Address src, int offset, int size) {
        this.dest = dest;
        this.src = src;
        this.offset = offset;
        this.size = size;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        dest.printAddress(out);
        out.write(" = ".getBytes());
        src.printAddress(out);
        out.write(("[" + offset + "] , " + size + "\n").getBytes());
    }
}

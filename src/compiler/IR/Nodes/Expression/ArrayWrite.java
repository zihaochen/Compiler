package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by Chen on 2015/5/12.
 */
public class ArrayWrite extends Quadruple{
    public Address dest;
    public int offset;
    public Address src;
    public int size;

    public ArrayWrite() {
        dest = null;
        offset = 0;
        src = null;
        size = 0;
    }

    public ArrayWrite(Address dest, int offset, Address src, int size) {
        this.dest = dest;
        this.offset = offset;
        this.src = src;
        this.size = size;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        dest.printAddress(out);
        out.write(("[" + offset + "] = ").getBytes());
        src.printAddress(out);
        out.write((" , " + size + "\n").getBytes());
    }
}

package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

public class MemoryParam extends Param {
    public MemoryParam() {
        src = null;
        size = 0;
    }

    public MemoryParam(Address src, int size) {
        this.src = src;
        this.size = size;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        out.write("MemoryParam ".getBytes());
        src.printAddress(out);
        out.write((" ," + size + "\n").getBytes());
    }
}

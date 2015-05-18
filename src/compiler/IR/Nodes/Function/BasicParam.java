package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Address.Address;

import java.io.IOException;
import java.io.OutputStream;

public class BasicParam extends Param {
    public Address src;

    public BasicParam() {
        src = null;
    }

    public BasicParam(Address src) {
        this.src = src;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        out.write("BasicParam ".getBytes());
        src.printAddress(out);
        out.write("\n".getBytes());
    }
}

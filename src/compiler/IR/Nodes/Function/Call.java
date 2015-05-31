package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Expression.Quadruple;

import java.io.IOException;
import java.io.OutputStream;

public class Call extends Quadruple {
    public Address dest;
    public Integer callee;
    public String name;
    public int numOfParams;

    public Call() {
        dest = null;
        callee = null;
        name = null;
        numOfParams = 0;
    }

    public Call(Address dest, Integer callee, String name, int numOfParams) {
        this.dest = dest;
        this.callee = callee;
        this.name = name;
        this.numOfParams = numOfParams;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        dest.printAddress(out);
        out.write((" = call " + name + " , " + numOfParams + "\n").getBytes());
    }
}

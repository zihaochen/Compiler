package compiler.IR.Nodes.Control;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Expression.Label;
import compiler.IR.Nodes.Expression.Quadruple;

import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by Chen on 2015/5/14.
 */
public class IfEZGoto extends Quadruple{
    public Address src;
    public Label label;

    public IfEZGoto() {
        src = null;
        label = null;
    }

    public IfEZGoto(Address src, Label label) {
        this.src = src;
        this.label = label;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        out.write(("If Equal to Zero ").getBytes());
        src.printAddress(out);
        out.write((" Goto ").getBytes());
        label.print(out);
        out.write("\n".getBytes());

    }
}

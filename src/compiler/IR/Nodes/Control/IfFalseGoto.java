package compiler.IR.Nodes.Control;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Expression.Label;
import compiler.IR.Nodes.Expression.Quadruple;
import compiler.IR.Nodes.Expression.RelationalOp;

import java.io.IOException;
import java.io.OutputStream;

public class IfFalseGoto extends Quadruple {
    public Address src1;
    public RelationalOp op;
    public Address src2;
    public Label label;

    public IfFalseGoto() {
        src1 = null;
        op = null;
        src2 = null;
        label = null;
    }

    public IfFalseGoto(Address src1, RelationalOp op, Address src2, Label label) {
        this.src1 = src1;
        this.op = op;
        this.src2 = src2;
        this.label = label;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        out.write(("I did not use IfFalseGoto").getBytes());
    }
}

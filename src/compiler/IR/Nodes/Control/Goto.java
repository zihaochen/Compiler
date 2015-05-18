package compiler.IR.Nodes.Control;

import compiler.IR.Nodes.Expression.Label;
import compiler.IR.Nodes.Expression.Quadruple;

import java.io.IOException;
import java.io.OutputStream;

public class Goto extends Quadruple {
    public Label label;

    public Goto() {
        label = null;
    }

    public Goto(Label label) {
        this.label = label;
    }

    @Override
    public void print(OutputStream out) throws IOException{
        out.write(("Goto label:" + label.num + "\n").getBytes());
    }
}

package compiler.IR.Nodes.Expression;


import java.io.IOException;
import java.io.OutputStream;

public class Label extends Quadruple {
    public static int labelCount = 0;

    public int num;

    public Label() {
        num = labelCount++;
    }

    public void setZero() {
        labelCount = 0;
    }

    @Override
    public void print(OutputStream out) throws IOException {
        out.write(("Label :" + num + "\t").getBytes());
    }
}

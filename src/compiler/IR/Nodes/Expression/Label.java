package compiler.IR.Nodes.Expression;


import java.io.IOException;
import java.io.OutputStream;

public class Label extends Quadruple {
    private static int labelCount = 0;

    public int num;

    public Label() {
        num = labelCount++;
    }

    @Override
    public void print(OutputStream out) throws IOException {
        out.write(("Label :" + num + "\t").getBytes());
    }
}

package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Expression.Quadruple;

import java.io.IOException;
import java.io.OutputStream;

public class Return extends Quadruple {
    public Param value;

    public Return() {
        value = null;
    }

    public Return(Param value) {
        this.value = value;
    }

    @Override
    public void print(OutputStream out) throws IOException {
        out.write("Return ".getBytes());
        if (value != null) value.print(out);
        out.write("\n".getBytes());
    }
}

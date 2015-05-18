package compiler.IR.Nodes.Expression;

import java.io.IOException;
import java.io.OutputStream;

public abstract class Quadruple {
    public abstract void print(OutputStream out) throws IOException;
}

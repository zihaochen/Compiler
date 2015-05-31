package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Name;

import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by Chen on 2015/5/30.
 */
public class StringAssign extends Quadruple{

    public int ch;
    public String name;
    public int offset;

    public StringAssign(int ch, String name, int offset) {
        this.ch = ch;
        this.name = name;
        this.offset = offset;
    }

    @Override
    public void print(OutputStream out) throws IOException {

    }
}

package compiler.IR.Nodes.Address;

import java.io.IOException;
import java.io.OutputStream;

public class IntegerConst extends Const {
    public int value;

    public IntegerConst() {
        num = ++addressCnt;
    }

    public IntegerConst(int value) {
        num = ++addressCnt;
        this.value = value;
    }

    @Override
    public void printAddress(OutputStream out) throws IOException {
        out.write(("" + value).getBytes());
    }
}

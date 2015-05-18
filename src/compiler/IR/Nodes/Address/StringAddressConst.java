package compiler.IR.Nodes.Address;

import java.io.IOException;
import java.io.OutputStream;

public class StringAddressConst extends Const {
    public String value;

    public StringAddressConst() {
        num = ++addressCnt;
        value = null;
    }

    public StringAddressConst(String value) {
        num = ++addressCnt;
        this.value = value;
    }

    @Override
    public void printAddress(OutputStream out) throws IOException{
        out.write(("\"" + value + "\"").getBytes());
    }
}

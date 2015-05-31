package compiler.IR.Nodes.Address;

import java.io.IOException;
import java.io.OutputStream;

public class Temp extends Address {
    private static int tempCount = 0;

    public int tempNum;

    public Temp() {
        num = ++addressCnt;
        tempNum = ++tempCount;
    }

    public void setZero() {
        tempCount = 0;
    }

    @Override
    public void printAddress(OutputStream out) throws IOException{
        out.write(("Temp" + tempNum).getBytes());
    }
}

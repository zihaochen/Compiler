package compiler.IR.Nodes.Address;

import java.io.IOException;
import java.io.OutputStream;

public abstract class Address {
    public static int addressCnt = 0;
    int num;
    public abstract void printAddress(OutputStream out) throws IOException;
}

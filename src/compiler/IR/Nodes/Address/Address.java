package compiler.IR.Nodes.Address;

import java.io.IOException;
import java.io.OutputStream;

public abstract class Address {
    public static int addressCnt = 0;
    public int num;
    public int loc = 0;
    public boolean isGlobal = false;
    public abstract void printAddress(OutputStream out) throws IOException;
}

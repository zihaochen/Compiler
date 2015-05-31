package compiler.IR.Nodes.Address;


import java.io.IOException;
import java.io.OutputStream;

public class Name extends Address {
    public String name;

    public Name() {
        num = ++addressCnt;
        name = null;
    }

    public Name(String name) {
        num = ++addressCnt;
        this.name = name;
    }

    public Name(String name, boolean bool) {
        num = ++addressCnt;
        this.name = name;
        this.isGlobal = bool;
    }

    @Override
    public void printAddress(OutputStream out) throws IOException{
        out.write(name.getBytes());
    }
}

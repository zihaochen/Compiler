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

    @Override
    public void printAddress(OutputStream out) throws IOException{
        out.write(name.getBytes());
    }
}

package compiler.IR.Nodes.Expression;

import compiler.IR.Nodes.Address.Address;
import compiler.PrettyPrinter.Symbol;

import java.io.IOException;
import java.io.OutputStream;

public class ArithmeticExpr extends Quadruple {
    public ArithmeticOp op;
    public Address dest;
    public Address src1;
    public Address src2;

    public ArithmeticExpr() {
        op = null;
        dest = null;
        src1 = null;
        src2 = null;
    }

    public ArithmeticExpr(Address dest, Address src1, ArithmeticOp op, Address src2) {
        this.dest = dest;
        this.src1 = src1;
        this.op = op;
        this.src2 = src2;
    }

    public ArithmeticExpr(Address dest, ArithmeticOp op, Address src2) {
        this.dest = dest;
        this.op = op;
        this.src1 = null;
        this.src2 = src2;
    }

    @Override
    public void print(OutputStream out) throws IOException {
        dest.printAddress(out);
        out.write((" = ").getBytes());
        if (src1 != null) src1.printAddress(out);
        out.write(" ".getBytes());
        out.write(ArithmeticOpToString.get(op.ordinal()).getBytes());
        out.write(" ".getBytes());
        src2.printAddress(out);
        out.write(("\n").getBytes());
    }
}

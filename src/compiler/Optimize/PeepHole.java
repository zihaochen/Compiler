package compiler.Optimize;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Address.Temp;
import compiler.IR.Nodes.Control.Goto;
import compiler.IR.Nodes.Control.IfEZGoto;
import compiler.IR.Nodes.Control.IfNEZGoto;
import compiler.IR.Nodes.Expression.*;
import compiler.IR.Nodes.Function.Call;
import compiler.IR.Nodes.Function.Function;
import compiler.IR.Nodes.Function.Param;
import compiler.IR.Nodes.Function.Return;
import compiler.IR.Nodes.Root.IR;

import java.util.HashMap;
import java.util.LinkedList;

/**
 * Created by Chen on 2015/6/1.
 */
public class PeepHole {
    public IR ir;

    private HashMap<Address, Integer> hashMap;

    private LinkedList<Quadruple> tmpList;
    public PeepHole(IR ir) {
        this.ir = ir;
        hashMap = new HashMap<>();
        launch();
    }

    void add(Address address) {
        if (address == null) return;
        if (hashMap.containsKey(address)) {
            hashMap.put(address, hashMap.get(address) + 1);
        }
        else {
            hashMap.put(address, 1);
        }
    }

    private void launch() {
        for (Function function: ir.fragments) {
            for (Quadruple quadruple : function.body) {
                if (quadruple instanceof AddressOf) {
                    AddressOf addressOf = (AddressOf) quadruple;
                    add(addressOf.dest);
                    add(addressOf.src);
                }
                if (quadruple instanceof ArithmeticExpr) {
                    add(((ArithmeticExpr) quadruple).src1);
                    add(((ArithmeticExpr) quadruple).src2);
                    add(((ArithmeticExpr) quadruple).dest);
                }
                if (quadruple instanceof ArrayRead) {
                    add(((ArrayRead) quadruple).src);
                    add(((ArrayRead) quadruple).dest);
                }
                if (quadruple instanceof ArrayWrite) {
                    add(((ArrayWrite) quadruple).src);
                    add(((ArrayWrite) quadruple).dest);
                }
                if (quadruple instanceof Assign) {
                    add(((Assign) quadruple).src);
                    add(((Assign) quadruple).dest);
                }
                if (quadruple instanceof MemoryRead) {
                    add(((MemoryRead) quadruple).src);
                    add(((MemoryRead) quadruple).dest);
                }
                if (quadruple instanceof MemoryWrite) {
                    add(((MemoryWrite) quadruple).src);
                    add(((MemoryWrite) quadruple).dest);
                }
                if (quadruple instanceof IfEZGoto) {
                    add(((IfEZGoto) quadruple).src);
                }
                if (quadruple instanceof IfNEZGoto) {
                    add(((IfNEZGoto) quadruple).src);
                }
                if (quadruple instanceof Param) {
                    add(((Param) quadruple).src);
                }
                if (quadruple instanceof Call) {
                    add(((Call) quadruple).dest);
                }
                if (quadruple instanceof Return) {
                   if (((Return) quadruple).value != null) add(((Return) quadruple).value.src);
                }
            }
        }

        for (Function function : ir.fragments) {
            tmpList = new LinkedList<>();
            for (int i = 0; i < function.body.size(); i++) {
                Quadruple quadruple = function.body.get(i);
                Quadruple next;
                if (i < function.body.size() - 1)
                    next = function.body.get(i + 1);
                else next = null;
                if (    quadruple instanceof Call &&
                        next instanceof Assign &&
                        ((Call) quadruple).dest instanceof Temp &&
                        ((Assign) next).src instanceof Temp
                        && ((Temp) ((Call) quadruple).dest).tempNum == ((Temp) ((Assign) next).src).tempNum) {
                            ((Call) quadruple).dest = ((Assign) next).dest;
                    tmpList.add(quadruple);
                    i += 1;
                }
                else
                    tmpList.add(quadruple);
            }
            function.body = tmpList;
        }

    }
}

package compiler.IR.Nodes.Function;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Expression.Quadruple;

public abstract class Param extends Quadruple {
    public int size;
    public Address src;
}

package compiler.ast.nodes;

import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Expression.Label;

public abstract class Expr extends Stmt implements House{
    public Type returnType;
    public Address address;
    public Label True, False;
}

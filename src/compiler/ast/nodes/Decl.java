package compiler.ast.nodes;

public abstract class Decl implements House{
    public Type type = null;
    public Symbol name = null;
    public Initializer init = null;
}

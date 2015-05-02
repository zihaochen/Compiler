package compiler.STL;

import compiler.ast.nodes.*;

/**
 * Created by Chen on 2015/5/1.
 */
public class Malloc extends FunctionDef{
    public Malloc() {
        super(
                new FunctionType(new PointerType(new VoidType()), new DeclList().add(new VarDecl(new IntType(), new Symbol(""), null))),
                new Symbol("malloc"),
                new DeclList().add(new VarDecl(new IntType(), new Symbol(""), null)),
                new CompoundStmt(new DeclList(), new StmtList())
        );
    }

}

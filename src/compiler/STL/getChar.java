package compiler.STL;

import compiler.ast.nodes.*;

/**
 * Created by Chen on 2015/5/1.
 */
public class Getchar extends FunctionDef{
    public Getchar () {
        super(new FunctionType(new CharType(), new DeclList()),
              new Symbol("getchar"),
              new DeclList(),
              new CompoundStmt(new DeclList(), new StmtList())
        );
    }
}

package compiler.STL;

import compiler.ast.nodes.*;

/**
 * Created by Chen on 2015/5/1.
 */

/*
* TODO: need to complete further
* */
public class Printf extends FunctionDef{
    public Printf() {
        super(
                new FunctionType(new VoidType(), new DeclList()),
                new Symbol("printf") ,
                new DeclList(),
                new CompoundStmt(new DeclList(), new StmtList())
        );
        this.prmrts.add(new VarDecl(new PointerType(new CharType()), new Symbol(""), null));
        this.prmrts.add(new TypeDecl(new MarkerType()));
        this.type = new FunctionType(this.returnType, this.prmrts);
    }
}

package compiler.ast.nodes;

import compiler.tables.MemberTable;

/**
 * Created by Chen on 2015/5/1.
 */
public abstract class RecordType extends Type{
    public MemberTable members;
    public Symbol name;
}

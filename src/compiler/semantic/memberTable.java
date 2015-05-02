package compiler.semantic;

import compiler.ast.nodes.Type;

import java.util.HashMap;

/**
 * Created by Chen on 2015/4/27.
 */
public class MemberTable {
    HashMap<Integer, Type> list;

    public MemberTable(HashMap<Integer, Type> list) {
        this.list = list;
    }

    public MemberTable() {
        this.list = new HashMap<>();
    }

    public void add(Integer integer, Type type){
        this.list.put(integer, type);
    }

    public boolean contains(Integer integer) {
        return list.containsKey(integer);
    }

    public Type getType(Integer key) {
        return list.get(key);
    }
}

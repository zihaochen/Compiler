package compiler.tables;

import compiler.ast.nodes.Type;

import java.util.HashMap;

/**
 * Created by Chen on 2015/4/27.
 */
public class MemberTable {
    public HashMap<Integer, Type> list;
    public HashMap<Integer, Integer> offsetList;

    public MemberTable() {
        this.list = new HashMap<>();
        this.offsetList = new HashMap<>();
    }

    public void add(Integer integer, Type type, int offset){
        this.list.put(integer, type);
        this.offsetList.put(integer, offset);
    }

    public boolean contains(Integer integer) {
         return list.containsKey(integer);
     }

    public Integer getOffset(Integer key) {
        return offsetList.get(key);
    }

    public Type getType(Integer key) {
        return list.get(key);
    }
}

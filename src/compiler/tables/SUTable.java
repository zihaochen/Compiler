package compiler.tables;

import compiler.ast.nodes.Type;
import java.util.HashMap;
import java.util.LinkedList;

/**
 * Created by Chen on 2015/4/27.
 */
public class SUTable {

    private LinkedList<HashMap<Integer, Type>> tableList;

    public SUTable() {
        tableList = new LinkedList<>();
        beginScope();
    }

    public void beginScope() {
        tableList.push(new HashMap<>());
    }

    public void endScope() {
        tableList.pop();
    }

    public boolean containsInThisScope(Integer key) {
        return tableList.peek().containsKey(key);
    }

    public boolean containsInAllScope(Integer key) {
        for (HashMap<Integer, Type> list : tableList)
            if (list.containsKey(key))
                return true;
        return false;
    }

    public void add(Integer integer, Type type){
        tableList.peek().put(integer, type);
    }

    public Type getType(Integer key) {
        for (HashMap<Integer, Type> list : tableList)
            if (list.containsKey(key))
                return list.get(key);
        return null;
    }
}

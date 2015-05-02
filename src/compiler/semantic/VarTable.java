package compiler.semantic;

import compiler.ast.nodes.Initializer;
import compiler.ast.nodes.Type;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

/**
 * Created by Chen on 2015/4/27.
 */
public class VarTable {
    private LinkedList<HashMap<Integer, Type>> tableList;
    private HashSet<Integer> defined;

    public VarTable() {
        tableList = new LinkedList<>();
        defined = new HashSet<>();
        beginScope();
    }

    public void beginScope() {
        tableList.push(new HashMap<>());
    }

    public void endScope() {
        tableList.pop();
    }

    /*
    * Check  whether the current scope contains some identifier(identifiers are in stored in the form of Integer)
    * */
    public boolean containsInThisScope(Integer key) {
        return tableList.peek().containsKey(key);
    }

    /*
    * Check whether the table contains some identifier(identifiers are stored in the form of Integer)
    * */
    public boolean containsInAllScope(Integer key){
        for (HashMap<Integer, Type> list : tableList){
            if (list.containsKey(key)) return true;
        }
        return false;
    }

    /*
    * Check whether the variable has been defined
    * */
    public boolean defined(Integer key){
        return defined.contains(key);
    }

    public void define(Integer key, Type newType){
        Type type = this.getType(key);
        type = newType;
        defined.add(key);
    }
    /*
    * Add some entry in the current scope
    * */
    public void add(Integer id, Type type) {
        tableList.peek().put(id, type);
    }

    public Type getType(Integer key) {
        for (HashMap<Integer, Type> list : tableList)
            if (list.containsKey(key)) return list.get(key);
        return null;
    }

}

package compiler.tables;

import compiler.IR.Nodes.Address.Address;
import compiler.ast.nodes.Type;

import java.util.HashMap;
import java.util.LinkedList;

/**
 * Created by Chen on 2015/5/12.
 */
public class AddressTable {
    public LinkedList<HashMap<Integer, Address>> tableList;

    public AddressTable() {
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
        for (HashMap<Integer, Address> list : tableList) {
            if (list.containsKey(key)) return true;
        }
        return false;
    }

    public void add(Integer key, Address address) {
        tableList.peek().put(key, address);
    }

    public Address getAddress(Integer key) {
        for (HashMap<Integer, Address> list : tableList)
            if (list.containsKey(key)) return list.get(key);
        return null;
    }


}

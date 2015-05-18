package compiler.tables;

import compiler.IR.Nodes.Address.Address;

import java.util.HashMap;

/**
 * Created by Chen on 2015/5/12.
 */
public class AddressTable {
    public HashMap<Integer, Address> table;

    public AddressTable() {
        table = new HashMap<>();
    }

    public void add(Integer key, Address address) {
        table.put(key, address);
    }

    public Address getAddress(Integer key) {
        return table.get(key);
    }
}

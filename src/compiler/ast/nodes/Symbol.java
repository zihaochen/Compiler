package compiler.ast.nodes;

import compiler.ast.visitor.Visitor;

public class Symbol implements House{
    private String name;
    static int cnt = 0; //indicate how many ids so far
    public int num;

    public Symbol(String s) {
        this.name = s;
        if (s.length() == 0) {
            cnt++;
            num = cnt;
            dict.put(s.intern(), num);
        }
        else num = getNum(s);
    }

    private static java.util.Map<String, Integer> dict = new java.util.HashMap<>();

    /*
     *  Return the num of the symbol, return 0 is not a good thing.
     */
    public int getNum(String s) {
        int num = 0;
        if (dict.containsKey(s.intern()))
            num = dict.get(s.intern());
        else {
            cnt++;
            num = cnt;
            dict.put(s.intern(), num);
        }
        return num;
    }

    @Override
    public String toString() {
        return name;
    }

    @Override
    public void accept(Visitor v) {
        v.visit(this);
    }
}

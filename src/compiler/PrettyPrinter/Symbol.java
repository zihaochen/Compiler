package compiler.PrettyPrinter;

/**
 * Created by Chen on 2015/4/24.
 */

public class Symbol{
    public int sym;
    public Object value;

    Symbol(int sym){
        this.sym = sym;
    }

    Symbol(int sym, Object value){
        this.sym = sym;
        this.value = value;
    }
}

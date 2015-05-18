package compiler.IR.Nodes.Expression;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Chen on 2015/5/15.
 */
public class ArithmeticOpToString {

    public static List<String> list = new ArrayList<>(Arrays.asList(
            "ADD", "SUB", "MUL", "DIV", "MOD", "SHL", "SHR", "LOGICAL_AND", "LOGICAL_OR", "XOR",

            "MINUS", "TILDE", "NOT", "EQ", "NE", "GT", "GE", "LT", "LE"
    ));

    public ArithmeticOpToString() {
        list = new ArrayList<>(Arrays.asList(
                "ADD", "SUB", "MUL", "DIV", "MOD", "SHL", "SHR", "LOGICAL_AND", "LOGICAL_OR", "XOR",

                "MINUS", "TILDE", "NOT", "EQ", "NE", "GT", "GE", "LT", "LE"
        ));
    }

    public static String get(int index) {
        return list.get(index);
    }

}

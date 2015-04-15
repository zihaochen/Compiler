package compiler.ast.nodes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Chen on 2015/4/15.
 */
public class BinaryOpToString {

    public static List<String> list;

    public BinaryOpToString() {
        list = new ArrayList<>(Arrays.asList("COMMA",

                "ASSIGN", "ASSIGN_MUL", "ASSIGN_DIV", "ASSIGN_MOD", "ASSIGN_ADD", "ASSIGN_SUB", "ASSIGN_SHL",
                "ASSIGN_SHR", "ASSIGN_AND", "ASSIGN_XOR", "ASSIGN_OR",

                "LOGICAL_OR", "LOGICAL_AND", "OR", "XOR", "AND", "EQ", "NE", "LT", "GT", "LE", "GE", "SHL", "SHR", "ADD", "SUB",
                "MUL", "DIV", "MOD"));
    }

    public static String get(int index) {
        return list.get(index);
    }
}


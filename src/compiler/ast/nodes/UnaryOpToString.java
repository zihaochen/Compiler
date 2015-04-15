package compiler.ast.nodes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Chen on 2015/4/15.
 */
public class UnaryOpToString {

    public static List<String> list;

    public UnaryOpToString() {

        list = new ArrayList<>(Arrays.asList("INC", "DEC", "SIZEOF", "AMPERSAND", "ASTERISK", "PLUS", "MINUS", "TILDE", "NOT"));
    }

    public static String get(int index) {
        return list.get(index);
    }

}

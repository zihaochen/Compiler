package compiler.IR.Nodes.Expression;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Chen on 2015/5/15.
 */
public class RelationalOpToString {
    public static List<String> list;

    public RelationalOpToString() {
        list = new ArrayList<>(Arrays.asList(
                "EQ", "NE", "GT", "GE", "LT", "LE"
        ));
    }

    public static String get(int index) {
        return list.get(index);
    }

}

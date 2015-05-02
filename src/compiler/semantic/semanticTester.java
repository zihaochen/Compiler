package compiler.semantic;

import compiler.ast.nodes.AST;
import compiler.ast.visitor.Visitor;
import compiler.syntactic.parser;

import java.io.*;
import java.util.ArrayList;

/**
 * Created by Chen on 2015/5/1.
 */
public class semanticTester {
    public static void test(String inputFile, Visitor visitor) throws IOException {
        Reader input = new BufferedReader(new FileReader(inputFile));
        AST ast = null;
///*
        try{
            parser par = new parser(input);
            ast = (AST) par.parse().value;
        } catch (Throwable e) {
            e.printStackTrace();
            throw new Error(e.toString());
        } finally {
            input.close();
        }
        ast.accept(visitor);
// */

        /*
        int error = 0;
        try{
            parser par = new parser(input);
            ast = (AST) par.parse().value;
        } catch (Throwable e) {
            //e.printStackTrace();
            error++;
        } finally {
            input.close();
        }

        try {
            ast.accept(visitor);
        } catch (Throwable e) {
            error++;
        }

        if (error == 0) throw new Error("NO ERRRRRRROR");
        */
    }

    public static void main(String argv[]) throws IOException {
      //  /*
        String path = "D:\\Codes\\Compiler\\tests\\Semantics\\compiler2015-testcases\\Phase2\\Passed-new\\";
        ArrayList<String> names = new ArrayList<>();
        names.add("arrovf.c");
        names.add("expcomment.c");
        names.add("fact.c");
        names.add("infloop.c");
        names.add("inidef.c");
        names.add("inilist1.c");
        names.add("madcalc.c");
        names.add("pntarith.c");
        names.add("pntloop.c");
        names.add("toolong.c");
        names.add("typchk.c");
        names.add("voidpnt2.c");

        for (String file : names) {
            test(path + file, new SemanticCheck());
        }
//*/

        /*
        String path = "D:\\Codes\\Compiler\\tests\\Semantics\\compiler2015-testcases\\Phase2\\Passed\\";
        ArrayList<String> names = new ArrayList<>();
        names.add("basicopt1-hetianxing.c");
        names.add("board-5100379110-daibo.c");
        names.add("Bulgarian_solitaire-5110379024-wuhang.c");
        names.add("expr-5110309085-jintianxing.c");
        names.add("factor-5090379042-jiaxiao.c");
        names.add("gcd-5090379042-jiaxiao.c");
        names.add("hanoi-5100379110-daibo.c");
        names.add("hanoi2-5100309153-yanghuan.c");
        names.add("hashmap-5100309127-hetianxing.c");
        names.add("heapsort-5100379110-daibo.c");
        names.add("hello-5090379042-jiaxiao.c");
        names.add("horse-5100309153-yanghuan.c");
        names.add("horse2-5100309153-yanghuan.c");
        names.add("horse3-5100309153-yanghuan.c");
        names.add("hpplus-5100309153-yanghuan.c");
        names.add("inlinecheck-5100309153-yanghuan.c");
        names.add("magic-5100309153-yanghuan.c");
        names.add("manyarguments-5100379110-daibo.c");
        names.add("manymanyarguments-5100379110-daibo.c");
        names.add("maxflow-5100379110-daibo.c");
        names.add("multiarray-5100309153-yanghuan.c");
        names.add("nqueencon-5100379110-daibo.c");
        names.add("num1-5110379024-wuhang.c");
        names.add("pi-5090379042-jiaxiao.c");
        names.add("plus-5100309153-yanghuan.c");
        names.add("prime-5100309153-yanghuan.c");
        names.add("prime2-5100309153-yanghuan.c");
        names.add("qsort-5100379110-daibo.c");
        names.add("queenbitwise-5110379024-wuhang.c");
        names.add("queens-5100379110-daibo.c");
        names.add("self-5090379042-jiaxiao.c");
        names.add("selfref-5090379042-jiaxiao.c");
        names.add("spill-5100379110-daibo.c");
        names.add("spill2-5100379110-daibo.c");
        names.add("struct4-5110379024-wuhang.c");
        names.add("struct5-5110379024-wuhang.c");
        names.add("struct6-5100309127-hetianxing.c");
        names.add("superloop-5090379042-jiaxiao.c");
        names.add("tak-5090379042-jiaxiao.c");
        names.add("treap-5110309085-jintianxing.c");
        names.add("twinprime-5090379042-jiaxiao.c");
        names.add("varptr-5100309127-hetianxing.c");

        for (String file : names) {
            test(path + file, new SemanticCheck());
        }
     */

/*
        String path = "D:\\Codes\\Compiler\\tests\\Semantics\\compiler2015-testcases\\Phase2\\CompileError\\";
        ArrayList<String> names = new ArrayList<>();
        names.add("break1-5100379071-puyouer.c");
        names.add("comp0-5100379071-puyouer.c");
        names.add("func1-5100379071-puyouer.c");
        names.add("func2-5100379071-puyouer.c");
        names.add("func3-5100379071-puyouer.c");
        names.add("func4-5100309127-hetianxing.c");
        names.add("lvalue0-5100379071-puyouer.c");
        names.add("lvalue1-5110379024-wuhang.c");
        names.add("lvalue2-5100379071-puyouer.c");
        names.add("lvalue2-5110379024-wuhang.c");
        names.add("lvalue3-5100379071-puyouer.c");
        names.add("lvalue3-5110379024-wuhang.c");
        names.add("member-5100379071-puyouer.c");
        names.add("naive1-5110379024-wuhang.c");
        names.add("naive10-5100379071-puyouer.c");
        names.add("naive11-5100379071-puyouer.c");
        names.add("naive2-5100309127-hetianxing.c");
        names.add("naive5-5100379071-puyouer.c");
        names.add("naive8-5100379071-puyouer.c");
        names.add("struct-5100379071-puyouer.c");
        names.add("struct3-5110379024-wuhang.c");
        names.add("union-5100379071-puyouer.c");
        names.add("union2-5100379071-puyouer.c");

        for (String file : names) {
            test(path + file, new SemanticCheck());
        }

        */
/*
        String path = "D:\\Codes\\Compiler\\tests\\Semantics\\compiler2015-testcases\\Phase2\\CompileError-new\\";
        ArrayList<String> names = new ArrayList<>();

        names.add("defcomment.c");
        names.add("funcini.c");
        names.add("funcstruct.c");
        names.add("inilist2.c");
        names.add("maincall.c");
        names.add("negdef.c");
        names.add("recursive.c");
        names.add("simpleesc.c");
        names.add("structspec.c");

        for (String file : names) {
            test(path + file, new SemanticCheck());
        }
*/
    }
}

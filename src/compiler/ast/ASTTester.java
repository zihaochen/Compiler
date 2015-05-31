package compiler.ast;

import compiler.ast.nodes.*;
import compiler.ast.visitor.*;
import compiler.syntactic.parser;

import java.io.*;
import java.util.ArrayList;

/**
 * Created by Chen on 2015/4/17.
 */
public class ASTTester {
    public static void test(String inputFile, String outputFile, Visitor visitor) throws IOException{
        Reader input = new BufferedReader(new FileReader(inputFile));
        parser par = new parser(input);
        AST ast;
        try{
            ast = (AST)par.parse().value;
        } catch (Throwable e) {
            e.printStackTrace();
            throw new Error(e.toString());
        } finally {
            input.close();
        }
        OutputStream output = new FileOutputStream(outputFile);
        visitor.setOutputStream(output);
        ast.accept(visitor);
        output.close();

    }

    public static void main(String argv[]) throws IOException {
        String path = "D:\\Codes\\Compiler\\tests\\IR\\";
        ArrayList<String> names = new ArrayList<>();
        names.add("arraysum");
        names.add("basicopt1-hetianxing");
        //names.add("board-5100379110-daibo");  bug1
        names.add("Bulgarian_solitaire-5110379024-wuhang");
        names.add("expr-5110309085-jintianxing");
        names.add("factor-5090379042-jiaxiao");
        names.add("gcd-5090379042-jiaxiao");
        names.add("hanoi2-5100309153-yanghuan");
        names.add("hanoi-5100379110-daibo");
        names.add("hashmap-5100309127-hetianxing");
        names.add("heapsort-5100379110-daibo");
        names.add("hello-5090379042-jiaxiao");
        //  names.add("horse2-5100309153-yanghuan");   bug1
        //   names.add("horse3-5100309153-yanghuan");   bug1
        //   names.add("horse-5100309153-yanghuan");    bug1
        names.add("hpplus-5100309153-yanghuan");
        names.add("inlinecheck-5100309153-yanghuan");
        names.add("magic-5100309153-yanghuan");
        names.add("manyarguments-5100379110-daibo");
        names.add("manymanyarguments-5100379110-daibo");
        names.add("maxflow-5100379110-daibo");
        names.add("multiarray-5100309153-yanghuan");
        names.add("nqueencon-5100379110-daibo");
        names.add("num1-5110379024-wuhang");
        names.add("pi-5090379042-jiaxiao");
        names.add("plus-5100309153-yanghuan");
        names.add("prime2-5100309153-yanghuan");
        names.add("prime-5100309153-yanghuan");
        names.add("qsort-5100379110-daibo");
        names.add("queenbitwise-5110379024-wuhang");
        names.add("queens-5100379110-daibo");
        names.add("self-5090379042-jiaxiao");
        names.add("selfref-5090379042-jiaxiao");
        names.add("spill2-5100379110-daibo");
        names.add("spill-5100379110-daibo");
        names.add("struct5-5110379024-wuhang");
        names.add("struct6-5100309127-hetianxing");
        names.add("superloop-5090379042-jiaxiao");
        names.add("tak-5090379042-jiaxiao");
        names.add("treap-5110309085-jintianxing");
        names.add("twinprime-5090379042-jiaxiao");
        names.add("varptr-5100309127-hetianxing");
        for (String file : names) {
            test(path + file + ".c", path + "AST\\" + file + ".out", new ASTprinter());
        }
    }
}

package compiler.CodeGen;

import compiler.CodeGen.BrutalGen.BrutalGen;
import compiler.IR.Translator;
import compiler.ast.nodes.AST;
import compiler.semantic.SemanticCheck;
import compiler.syntactic.parser;

import java.io.*;
import java.util.ArrayList;

/**
 * Created by Chen on 2015/5/27.
 */

/*
* TODO bug
*
* */

public class genTester {

    public static void test(String inputFile, String irOutputFile, String genOutputfile) throws IOException {
        Reader input = new BufferedReader(new FileReader(inputFile));
        AST ast = null;

        try {
            parser par = new parser(input);
            ast = (AST) par.parse().value;
        } catch (Throwable e) {
            e.printStackTrace();
        } finally {
            input.close();
        }
        OutputStream IRoutput = new FileOutputStream(irOutputFile);
        OutputStream genOutput = new FileOutputStream(genOutputfile);
        Translator translator = new Translator();
        translator.setOutputStream(IRoutput);
        ast.accept(new SemanticCheck());
        ast.accept(translator);
        translator.print();
        BrutalGen brutalGen = new BrutalGen(translator.ir);
        genOutput.write(brutalGen.toString().getBytes());
        IRoutput.close();
        genOutput.close();
    }

    public static void main(String argv[]) throws IOException {
        String path = "D:\\Codes\\Compiler\\tests\\IR\\";
        ArrayList<String> oldnames = new ArrayList<>();
        oldnames.add("arraysum");
        oldnames.add("basicopt1-hetianxing");
        oldnames.add("board-5100379110-daibo");
        oldnames.add("Bulgarian_solitaire-5110379024-wuhang");
        oldnames.add("expr-5110309085-jintianxing");
        oldnames.add("factor-5090379042-jiaxiao");
          oldnames.add("gcd-5090379042-jiaxiao");
        oldnames.add("hanoi2-5100309153-yanghuan");
        oldnames.add("hanoi-5100379110-daibo");
       oldnames.add("hashmap-5100309127-hetianxing");
        oldnames.add("heapsort-5100379110-daibo");
        oldnames.add("hello-5090379042-jiaxiao");
          oldnames.add("horse2-5100309153-yanghuan");
           oldnames.add("horse3-5100309153-yanghuan");
           oldnames.add("horse-5100309153-yanghuan");
        oldnames.add("hpplus-5100309153-yanghuan");
        oldnames.add("inlinecheck-5100309153-yanghuan");
        oldnames.add("magic-5100309153-yanghuan");
        oldnames.add("manyarguments-5100379110-daibo");
        oldnames.add("manymanyarguments-5100379110-daibo");
        oldnames.add("maxflow-5100379110-daibo");
        oldnames.add("multiarray-5100309153-yanghuan");
        oldnames.add("nqueencon-5100379110-daibo");
        oldnames.add("num1-5110379024-wuhang");
        oldnames.add("pi-5090379042-jiaxiao");
        oldnames.add("plus-5100309153-yanghuan");
        oldnames.add("prime2-5100309153-yanghuan");
        oldnames.add("prime-5100309153-yanghuan");
        oldnames.add("qsort-5100379110-daibo");
        oldnames.add("queenbitwise-5110379024-wuhang");
        oldnames.add("queens-5100379110-daibo");
        oldnames.add("self-5090379042-jiaxiao");
        oldnames.add("selfref-5090379042-jiaxiao");
        oldnames.add("spill2-5100379110-daibo");
        oldnames.add("spill-5100379110-daibo");
        oldnames.add("struct5-5110379024-wuhang");
        oldnames.add("struct6-5100309127-hetianxing");
        oldnames.add("superloop-5090379042-jiaxiao");
        oldnames.add("tak-5090379042-jiaxiao");
        oldnames.add("treap-5110309085-jintianxing");
        oldnames.add("twinprime-5090379042-jiaxiao");
        oldnames.add("varptr-5100309127-hetianxing");
        for (String file : oldnames) {
            test(path + file + ".c", path + file + ".out", path + file + ".s");
        }
    }
}

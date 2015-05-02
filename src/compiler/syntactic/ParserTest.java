package compiler.syntactic;

import compiler.ast.nodes.Symbol;

import java.io.*;

/**
 * Created by Chen on 2015/4/17.
 */

public class ParserTest {

    private static void parse(String filename)throws IOException{
        Reader input = new BufferedReader(new FileReader(filename));
        parser par = new parser(input);

        java_cup.runtime.Symbol parsetree = null;
        try {
            parsetree = par.parse();
        } catch (Throwable e) {
            e.printStackTrace();
            throw new Error(e.toString());
        } finally {
            input.close();
        }

    }

    public static void main(String argv[]) throws IOException{
        parse("D:\\Codes\\Compiler\\tests\\parser\\test06.c");
        parse("D:\\Codes\\Compiler\\tests\\parser\\test03.c");
        parse("D:\\Codes\\Compiler\\tests\\parser\\test04.c");
        parse("D:\\Codes\\Compiler\\tests\\parser\\test05.c");
    }
}

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
        String path = "D:\\Codes\\Compiler\\tests\\AST\\";
        ArrayList<String> names = new ArrayList<>();
        names.add("test");
        names.add("helloworld");
        names.add("fibonacci");
        names.add("quicksort");
        names.add("floyd");
        names.add("matrixmul");
        names.add("bfs");
        names.add("toposort");
        names.add("mixedstew");
        for (String file : names) {
            test(path + file + ".c", path + file + ".out", new ASTprinter());
        }
    }
}

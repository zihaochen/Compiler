package compiler.main;

import compiler.ast.nodes.AST;
import compiler.semantic.SemanticCheck;
import compiler.syntactic.parser;

import java.io.*;

/**
 * Created by Chen on 2015/5/2.
 */
public class Midterm {


    public static void main(String argv[]) {
        Reader input = new BufferedReader(new InputStreamReader(System.in));
        AST ast = null;

        try{
            parser par = new parser(input);
            ast = (AST) par.parse().value;
        } catch (Throwable e) {
            System.exit(1);
        }

        SemanticCheck semanticCheck = new SemanticCheck();
        try {
            ast.accept(semanticCheck);
        } catch (Throwable e) {
            System.exit(1);
        }
        System.exit(0);
    }
}

package compiler.main;

import compiler.CodeGen.BrutalGen.BrutalGen;
import compiler.IR.Translator;
import compiler.ast.nodes.AST;
import compiler.semantic.SemanticCheck;
import compiler.syntactic.parser;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.Reader;

public class Main
{
    public static void main(String argv[]) {
        Reader input = new BufferedReader(new InputStreamReader(System.in));
        AST ast = null;

        try{
            parser par = new parser(input);
            ast = (AST) par.parse().value;
        } catch (Throwable e) {
            System.exit(1);
        }
        Translator translator = new Translator();
        translator.setOutputStream(System.out);
        ast.accept(new SemanticCheck());
        ast.accept(translator);
        BrutalGen brutalGen = new BrutalGen(translator.ir);
        System.out.println(brutalGen.toString());
        System.exit(0);
    }
}


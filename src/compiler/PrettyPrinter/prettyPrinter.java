package compiler.PrettyPrinter;

import compiler.PrettyPrinter.Symbol;

import java.io.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Chen on 2015/4/22.
 */
public class prettyPrinter implements prettySym{


    private List<Symbol> input;

    private List<String> result;

    private int cur, length;

    private final String addIndent = "^-^";
    private final String delIndent = "-_-";

    private LinkedList<pair> stack;

    public prettyPrinter(prettyLexer lexer) throws IOException{
        Symbol tmp;
        input = new ArrayList<>();
        result = new ArrayList<>();
        stack = new LinkedList<>();
        tmp = lexer.yylex();
        while (tmp.sym != EOF){
            input.add(tmp);
            tmp = lexer.yylex();
        }
        cur = 0;
        length = input.size();
    }

    public String tokenTostring(Symbol token){
       switch (token.sym){
           case VOID :          return "void ";
           case CHAR :          return "char ";
           case INT :           return "int ";
           case STRUCT :        return "struct ";
           case UNION :         return "union ";
           case IF :            return "if";
           case ELSE :          return "else";
           case WHILE :         return "while";
           case FOR :           return "for";
           case CONTINUE :      return "continue";
           case BREAK :         return "break";
           case RETURN  :
               if (input.get(cur).sym == SEMICOLON) return "return";
               return "return ";
           case SIZEOF :        return "sizeof";

           case LPAREN :        return "(" ;
           case RPAREN :        return ")";
           case SEMICOLON :     return ";";
           case COMMA :         return ", ";
           case ASSIGN :        return " = ";
           case LBRACE :        return "{";
           case RBRACE :        return "}";
           case LBRACKET :      return "[";
           case RBRACKET :      return "]";
           case VBAR :          return "|";
           case CARET:          return " ^ ";
           case AMPERS:         return "&";
           case LT:             return " < ";
           case GT:             return " > ";
           case PLUS:           return " + ";
           case MINUS:
               if (input.get(cur - 1).sym == IDENTIFIER) return " - ";
               else return "-";
           case MULTI:          return "*";
           case DIV:            return "/";
           case MOD:            return " % ";
           case TILDE:          return "~";
           case EXCLAM:         return "!";
           case DOT:            return ".";

           case OR:             return " || ";
           case AND:            return " && ";
           case EQ:             return " == ";
           case NE:             return " != ";
           case LE:             return " <= ";
           case GE:             return " >= ";
           case SHL:            return " << ";
           case SHR:            return " >> ";
           case INC:            return "++";
           case DEC:            return "--";
           case PTR:            return " -> ";

           case MUL_ASSIGN:     return " *= ";
           case DIV_ASSIGN:     return " /= ";
           case MOD_ASSIGN:     return " %= ";
           case PLUS_ASSIGN:    return " += ";
           case SUB_ASSIGN:     return " -= ";
           case SHL_ASSIGN:     return " <<= ";
           case SHR_ASSIGN:     return " >>= ";
           case AND_ASSIGN:     return " &= ";
           case XOR_ASSIGN:     return " ^= ";
           case OR_ASSIGN:      return " |= ";

           case IDENTIFIER:     return (String) token.value;
           case DECINTEGER:     return (String) token.value;
           case HEXINTEGER:     return (String) token.value;
           case OCTINTEGER:     return (String) token.value;
           case COMMENT:   return (String) token.value;
           case STRING_LITERAL: return (String) token.value;
           case CHAR_LITERAL:   return (String) "'" + token.value + "'";
           case INCLUDE:        return token.value + "\n";

       }
        return "NOT FOUND!!!!!!!!!!!!!!!\n";
   }


    public void addLine() {
        result.add("\n");
    }

    public class pair{
        public String object;
        public int indent;

        public pair(String object) {
            this.object = object;
        }

        public pair(String object, int indent) {
            this.object = object;
            this.indent = indent;
        }
    }

    public void pretty(OutputStream outputStream){
        dealWithBody();
        boolean newline = false;
        try {
            int size = result.size();
            int indentCnt = 0;
            for (int i = 0; i < size; i++){
                String now = result.get(i);
                if (now.equals(addIndent)) {
                    indentCnt++;
                    continue;
                }
                if (now.equals(delIndent)) {
                    indentCnt--;
                    continue;
                }
                if (now.equals("if ")) {
                    stack.push(new pair("if", indentCnt));
                }

                if (now.equals("{")){
                    stack.push(new pair("{"));
                }

                if (now.equals("else ")){
                    if (stack.getFirst().object.equals("if")){
                        indentCnt = stack.pop().indent;
                    }
                    else System.out.println("Unmatched if and else");
                }

                if (now.equals("}")) {
                    while (!(stack.getFirst().object.equals("{"))) {
                        stack.pop();
                    }
                    if (stack.getFirst().object.equals("{"))
                        stack.pop();
                    else System.out.println("Unmatched { and }");
                }

                if (newline) {
                    newline = false;
                    int tmp = indentCnt;
                    if (now.equals("}")) tmp--;
                    for (int j = 0; j < tmp; j++)
                        outputStream.write("\t".getBytes());
                }
                if (now.equals("\n")) newline = true;
                outputStream.write(now.getBytes());
            }
        } catch (IOException e){
            System.out.println("Unexpected IOException!!!");
            e.printStackTrace();
        }

    }

    public void dealWithBody(){
        while (cur < length) {
            Symbol now = input.get(cur);
            switch (now.sym){

                case SEMICOLON:
                    result.add(";");
                    result.add("\n");
                    cur++;
                    break;
                case VOID : case CHAR : case INT :
                case CONTINUE : case BREAK : case RETURN :
                case LPAREN : case RPAREN : case COMMA :
                case ASSIGN : case LBRACKET : case SIZEOF :
                case RBRACKET : case VBAR : case CARET :
                case LT : case GT : case PLUS :
                case MINUS : case MULTI : case DIV :
                case MOD : case AMPERS : case OR : case AND :
                case EQ : case NE : case LE : case GE :
                case SHL : case SHR : case INC : case DEC :
                case PTR : case TILDE : case EXCLAM : case DOT :
                case MUL_ASSIGN : case DIV_ASSIGN : case MOD_ASSIGN :
                case SUB_ASSIGN : case SHL_ASSIGN : case SHR_ASSIGN :
                case AND_ASSIGN : case XOR_ASSIGN : case OR_ASSIGN :
                case IDENTIFIER : case DECINTEGER : case HEXINTEGER :
                case OCTINTEGER : case STRING_LITERAL :case COMMENT :
                case PLUS_ASSIGN : case CHAR_LITERAL : case INCLUDE :
                    result.add(tokenTostring(now));
                    cur++;
                    break;

                case LBRACE:
                    result.add("{");
                    if (input.get(cur - 1).sym != ASSIGN && input.get(cur - 1).sym != LBRACE && input.get(cur - 1).sym != COMMA) {
                        result.add("\n");
                        result.add(addIndent);
                    }
                //    if (!(input.get(cur - 1).sym == ASSIGN || input.get(cur - 1).sym == LBRACE || input.get(cur - 1).sym == COMMA))
                //        result.add(addIndent);
                    cur++;
                    break;

                case RBRACE:
                    result.add("}");
                    if (!(cur + 1 < length && (input.get(cur + 1).sym == SEMICOLON || input.get(cur + 1).sym == COMMA))) {
                        addLine();
                        result.add(delIndent);
                    }
                    cur++;
                    break;
                case IF:
                    dealWithIf();
                    break;
                case ELSE:
                    dealWithElse();
                    break;
                case FOR:
                    dealWithFor();
                    break;
                case WHILE:
                    dealWithWhile();
                    break;
                case STRUCT:
                    dealWithStruct();
                    break;
                case UNION:
                    dealWithUnion();
                    break;
            }
        }
    }

    public void dealWithSU() {
        int braceCnt = 0;
        int numOfColonOutOfBrace = 0;
        while (numOfColonOutOfBrace == 0){
            Symbol now = input.get(cur);
            switch (now.sym){

                case SEMICOLON:
                    result.add(";");
                    result.add("\n");
                    if (braceCnt == 0) numOfColonOutOfBrace++;
                    break;

                case VOID : case CHAR : case INT :
                case CONTINUE : case BREAK : case RETURN :
                case LPAREN : case RPAREN : case COMMA :
                case ASSIGN : case LBRACKET : case SIZEOF :
                case RBRACKET : case VBAR : case CARET :
                case LT : case GT : case PLUS :
                case MINUS : case MULTI : case DIV :
                case MOD : case AMPERS : case OR : case AND :
                case EQ : case NE : case LE : case GE :
                case SHL : case SHR : case INC : case DEC :
                case PTR : case TILDE : case EXCLAM : case DOT :
                case MUL_ASSIGN : case DIV_ASSIGN : case MOD_ASSIGN :
                case SUB_ASSIGN : case SHL_ASSIGN : case SHR_ASSIGN :
                case AND_ASSIGN : case XOR_ASSIGN : case OR_ASSIGN :
                case IDENTIFIER : case DECINTEGER : case HEXINTEGER :
                case OCTINTEGER : case COMMENT : case STRING_LITERAL :
                case PLUS_ASSIGN : case CHAR_LITERAL : case INCLUDE :
                    result.add(tokenTostring(now));
                    break;

                case LBRACE:
                    braceCnt++;
                    result.add("{");
                    result.add("\n");
                    if (!(cur - 1 >= 0 && input.get(cur - 1).sym == ASSIGN))
                        result.add(addIndent);
                    break;

                case RBRACE:
                    braceCnt--;
                    result.add("}");
                    result.add(delIndent);
                    break;
                case IF:
                    dealWithIf();
                    break;
                case ELSE:
                    dealWithElse();
                    break;
                case FOR:
                    dealWithFor();
                    break;
                case WHILE:
                    dealWithWhile();
                    break;
                case STRUCT:
                    dealWithStruct();
                    break;
                case UNION:
                    dealWithUnion();
                    break;
            }
            cur++;
        }
    }

    public void dealWithStruct() {
        result.add("struct ");
        cur++;
        dealWithSU();
    }

    public void dealWithUnion() {
        result.add("union ");
        cur++;
        dealWithSU();
    }

    public void dealWithIf() {
        result.add("if ");
        cur++;
        matchParens();
        if (input.get(cur).sym == LBRACE)
            dealWithBody();
        else {
            addLine();
            result.add(addIndent);
            dealWithLine();
            result.add(delIndent);
        }
    }

    public void dealWithElse() {
        result.add("else ");
        cur++;
        if (input.get(cur).sym == LBRACE)
            dealWithBody();
        else {
            addLine();
            result.add(addIndent);
            dealWithLine();
            result.add(delIndent);
        }
    }

    /*
        Used in dealWithIf, dealWithFor and dealWithWhile,
        the first token in this phase must be LPAREN.
     */
    public void matchParens() {
        cur++;
        result.add("(");
        int cnt = 1;
        while (cnt > 0) {
            Symbol now = input.get(cur);

            switch (now.sym){
                case VOID : case CHAR : case INT :
                case COMMA :
                case ASSIGN : case LBRACKET : case SIZEOF :
                case RBRACKET : case VBAR : case CARET :
                case LT : case GT : case PLUS :
                case MINUS : case MULTI : case DIV :
                case MOD : case AMPERS : case OR : case AND :
                case EQ : case NE : case LE : case GE :
                case SHL : case SHR : case INC : case DEC :
                case PTR : case TILDE : case EXCLAM : case DOT :
                case MUL_ASSIGN : case DIV_ASSIGN : case MOD_ASSIGN :
                case SUB_ASSIGN : case SHL_ASSIGN : case SHR_ASSIGN :
                case AND_ASSIGN : case XOR_ASSIGN : case OR_ASSIGN :
                case IDENTIFIER : case DECINTEGER : case HEXINTEGER :
                case OCTINTEGER : case COMMENT : case STRING_LITERAL :
                case PLUS_ASSIGN : case CHAR_LITERAL : case INCLUDE :
                    result.add(tokenTostring(now));
                    break;

                case SEMICOLON:
                    result.add("; ");
                    break;
                case LPAREN:
                    cnt++;
                    result.add("(");
                    break;
                case RPAREN:
                    cnt--;
                    result.add(")");
                    break;

                default:
                    System.out.println("Unmatched in mathparen: " + tokenTostring(now));
            }
            cur++;
        }
    }

    public void dealWithFor() {
        result.add("for ");
        cur++;
        matchParens();
        if (input.get(cur).sym == LBRACE)
            dealWithBody();
        else {
            addLine();
            result.add(addIndent);
            dealWithLine();
            result.add(delIndent);
        }
    }

    public void dealWithWhile() {
        result.add("while ");
        cur++;
        matchParens();
        if (input.get(cur).sym == LBRACE)
            dealWithBody();
        else {
            addLine();
            result.add(addIndent);
            dealWithLine();
            result.add(delIndent);
        }
    }

    /*
        Used in all "dealWith" functions,
        for example:
             if (...)
                {need dealWithLine here}
     */
    public void dealWithLine() {
        Symbol now = input.get(cur);
        switch (now.sym){
            case IF:
                dealWithIf();
                break;
            case ELSE:
                dealWithElse();
                break;
            case FOR:
                dealWithFor();
                break;
            case WHILE:
                dealWithWhile();
                break;
            default:
                reachNextColon();
                return;
        }
    }

    public void reachNextColon(){
        while (input.get(cur).sym != SEMICOLON) {
            Symbol now = input.get(cur);
            switch (now.sym){
                case VOID : case CHAR : case INT :
                case CONTINUE : case BREAK : case RETURN :
                case LPAREN : case RPAREN : case COMMA :
                case ASSIGN : case LBRACKET : case SIZEOF :
                case RBRACKET : case VBAR : case CARET :
                case LT : case GT : case PLUS :
                case MINUS : case MULTI : case DIV :
                case MOD : case AMPERS : case OR : case AND :
                case EQ : case NE : case LE : case GE :
                case SHL : case SHR : case INC : case DEC :
                case PTR : case TILDE : case EXCLAM : case DOT :
                case MUL_ASSIGN : case DIV_ASSIGN : case MOD_ASSIGN :
                case SUB_ASSIGN : case SHL_ASSIGN : case SHR_ASSIGN :
                case AND_ASSIGN : case XOR_ASSIGN : case OR_ASSIGN :
                case IDENTIFIER : case DECINTEGER : case HEXINTEGER :
                case OCTINTEGER : case COMMENT : case STRING_LITERAL :
                case PLUS_ASSIGN : case CHAR_LITERAL : case INCLUDE :
                    result.add(tokenTostring(now));
                    break;
                default:
                    System.out.println("reachNextColon Failed!\n");
                    break;
            }
            cur++;
        }
        result.add(";");
        result.add("\n");
        cur++;

    }

    public static void main(String argv[]) throws IOException{
        String path = "D:\\Codes\\Compiler\\tests\\PrettyPrinter\\";
        ArrayList<String> names = new ArrayList<>();
        names.add("madcalc");
        names.add("test01");
        names.add("test02");
        names.add("test03");
        for (String file : names){
            prettyLexer lexer;
            Reader input = new BufferedReader(new FileReader(path + file + ".c"));
            try{
                lexer = new prettyLexer(input);
            } catch (Throwable e){
                e.printStackTrace();
                throw new Error(e.toString());
            }

            prettyPrinter printer = new prettyPrinter(lexer);
            OutputStream outputStream = new FileOutputStream(path + file + "Pretty.c");
            printer.pretty(outputStream);
            outputStream.close();
        }
    }

}

package compiler.syntactic;

import java_cup.runtime.*;

%%

%unicode
%line
%column
%cup
%implements sym

%{
    private int CommentCount = 0;

    StringBuffer string = new StringBuffer();

    private void err(String message) throws RuntimeException {
        throw new RuntimeException(message + "Scanning error in the line" + yyline + ",column" + yycolumn + ": ");
    }

    private Symbol tok (int type){
        return new Symbol(type, yyline, yycolumn);
    }

    private Symbol tok (int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
%}


%eofval{
    if (yystate() ==  MULTICOMMENT)
        err("Comment symbol do not match (EOF)!");
    return tok(EOF, null);
%eofval}

LineTerminator = \n|\r|\r\n
WhiteSpace = [\t\f\r\n\v]
InputCharacter = [^\r\n]
SingleComment = "//"{InputCharacter}* {LineTerminator}

/* constants */
Identifier = [a-zA-Z] [a-zA-Z_0-9]*
DecIntegerLiteral = [1-9][0-9]*|0
OctIntegerLiteral = 0[0-7]+
HexIntegerLiteral = 0(X|x)[0-9a-fA-F]+


%state STRING
%state CHAR
%state MULTICOMMENT

%%

<YYINITIAL> {

/* comments */
    "/*"                    { CommentCount = 1; yybegin(MULTICOMMENT); }
    "*/"                    { err("comment symbol do not match!"); }
    {SingleComment}         { /* skip */ }

/* keywords */
    "void"                  { return tok(VOID); }
    "char"                  { return tok(CHAR); }
    "int"                   { return tok(INT); }
    "struct"                { return tok(STRUCT); }
    "union"                 { return tok(UNION); }
    "if"                    { return tok(IF); }
    "else"                  { return tok(ELSE); }
    "while"                 { return tok(WHILE); }
    "for"                   { return tok(FOR); }
    "continue"              { return tok(CONTINUE); }
    "break"                 { return tok(BREAK); }
    "return"                { return tok(RETURN); }
    "sizeof"                { return tok(SIZEOF); }

/* single-character operators */
    "("                     { return tok(LPAREN); }
    ")"                     { return tok(RPAREN); }
    ";"                     { return tok(SEMICOLON); }
    ","                     { return tok(COMMA); }
    "="                     { return tok(ASSIGN); }
    "{"                     { return tok(LBRACE); }
    "}"                     { return tok(RBRACE); }
    "["                     { return tok(LBRACKET); }
    "]"                     { return tok(RBRACKET); }
    "|"                     { return tok(VBAR); }
    "^"                     { return tok(CARET); }
    "&"                     { return tok(AMPERS); }
    "<"                     { return tok(LT); }
    ">"                     { return tok(GT); }
    "+"                     { return tok(PLUS); }
    "-"                     { return tok(MINUS); }
    "*"                     { return tok(MULTI); }
    "/"                     { return tok(DIV); }
    "%"                     { return tok(MOD); }
    "~"                     { return tok(TILDE); }
    "!"                     { return tok(EXCLAM); }
    "."                     { return tok(DOT); }

/* multi-character operations */
    "||"                    { return tok(OR); }
    "&&"                    { return tok(AND); }
    "=="                    { return tok(EQ); }
    "!="                    { return tok(NE); }
    "<="                    { return tok(LE); }
    ">="                    { return tok(GE); }
    "<<"                    { return tok(SHL); }
    ">>"                    { return tok(SHR); }
    "++"                    { return tok(INC); }
    "--"                    { return tok(DEC); }
    "->"                    { return tok(PTR); }

    "*="                    { return tok(MUL_ASSIGN); }
    "/="                    { return tok(DIV_ASSIGN); }
    "%="                    { return tok(MOD_ASSIGN); }
    "+="                    { return tok(PLUS_ASSIGN); }
    "-="                    { return tok(SUB_ASSIGN); }
    "<<="                   { return tok(SHL_ASSIGN); }
    ">>="                   { return tok(SHR_ASSIGN); }
    "&="                    { return tok(AND_ASSIGN); }
    "^="                    { return tok(XOR_ASSIGN); }
    "|="                    { return tok(OR_ASSIGN); }


/* identifiers */
    {Identifier}            { return tok(IDENTIFIER, yytext()); }

/* literals */
    {DecIntegerLiteral}     { return tok(INTEGER, Integer.valueOf(yytext(), 10)); }
    {OctIntegerLiteral}     { return tok(INTEGER, Integer.valueOf(yytext(), 8)); }
    {HexIntegerLiteral}     { return tok(INTEGER, Integer.valueOf(yytext(), 16)); }

/* string & char */
    \"                      { string.setLength(0); yybegin(STRING); }
    \'                      { string.setLength(0); yybegin(CHAR); }

/* some trivail things */
    {WhiteSpace}            { /* skip */ }
    {LineTerminator}        { /* skip */ }

/* error */
    [^]                     { err("Illegal character" + yytext()); }
}

<STRING> {
    \"                      { yybegin(YYINITIAL);
                              return tok(STRING_LITERAL, string.toString()); }
    [^\n\r\"\\]+            { string.append(yytext()); }
  //  \\a                     { string.append('\a'); }
    \\b                     { string.append('\b'); }
    \\f                     { string.append('\f'); }
    \\n                     { string.append ('\n'); }
    \\r                     { string.append('\r'); }
    \\t                     { string.append('\t'); }
  //  \\v                     { string.append('\v'); }
    \\\                     { string.append('\\'); }
    \\'                     { string.append('\''); }
    \\\"                    { string.append('\"'); }

    \\[0-7]{1,3}            { string.append((char) Integer.valueOf(yytext().substring(1, yytext().length()), 8).intValue()); }
    \\x[0-9a-fA-F]{1,2}     { string.append((char) Integer.valueOf(yytext().substring(2, yytext().length()), 16).intValue()); }
    [^]                     { err("Illegal character" + yytext()); }

}

<CHAR> {
    [^'\n\r\\]'             { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL,yytext().charAt(0)); }
 //   \\a'                    { yybegin(YYINITIAL);
 //                             return tok(CHAR_LITERAL, '\a'); }
    \\b'                    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\b'); }
    \\f'                    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\f'); }
    \\n'                    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\n'); }
    \\r'                    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\r'); }
    \\t'                    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\t'); }
 //   \\v'                    { yybegin(YYINITIAL);
 //                             return tok(CHAR_LITERAL, '\v'); }
    \\''                    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\''); }
    \\\"'                   { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\"'); }
    \\\\'                   { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, '\\'); }

    \\[0-7]{1,3}'           { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, (char) Integer.valueOf(yytext().substring(1, yytext().length() - 1), 8).intValue()); }

    \\x[0-9a-fA-F]{1,2}'    { yybegin(YYINITIAL);
                              return tok(CHAR_LITERAL, (char) Integer.valueOf(yytext().substring(2, yytext().length() - 1), 16).intValue()); }

    [^]                     { err("Illegal character" + yytext()); }
}

<MULTICOMMENT> {
    "/*"            { CommentCount++; }
    "*/"            { CommentCount--;
                      if (CommentCount == 0) yybegin(YYINITIAL); }
    [^]             {}
}


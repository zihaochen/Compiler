package compiler.ast.nodes;

public enum BinaryOp {
    COMMA,

    ASSIGN, ASSIGN_MUL, ASSIGN_DIV, ASSIGN_MOD, ASSIGN_ADD, ASSIGN_SUB, ASSIGN_SHL,
    ASSIGN_SHR, ASSIGN_AND, ASSIGN_XOR, ASSIGN_OR,

    LOGICAL_OR, LOGICAL_AND, OR, XOR, AND, EQ, NE, LT, GT, LE, GE, SHL, SHR, ADD, SUB,
    MUL, DIV, MOD
}

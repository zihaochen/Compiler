package compiler.CodeGen;

import compiler.IR.Nodes.Expression.Quadruple;
import compiler.IR.Nodes.Function.Variable;
import compiler.IR.Translator;

import java.util.List;

/**
 * Created by Chen on 2015/5/23.
 */
public interface Gen {
    void emitPrologue();

    void emitQuadruple(Quadruple quadruple);

    void emitGlobal(List<Variable> vars);

    void emitAddressOf(Quadruple quadruple);

    void emitArithmeticExpr(Quadruple quadruple);

    void emitArrayRead(Quadruple quadruple);

    void emitArrayWrite(Quadruple quadruple);

    void emitAssign(Quadruple quadruple);

    void emitLabel(Quadruple quadruple);

    void emitMemoryRead(Quadruple quadruple);

    void emitMemoryWrite(Quadruple quadruple);

    void emitGoto(Quadruple quadruple);

    void emitIfEZGoto(Quadruple quadruple);

    void emitIfNEZGoto(Quadruple quadruple);

    void emitParam(Quadruple quadruple);

    void emitCall(Quadruple quadruple);

    void emitReturn(Quadruple quadruple);

    void emitStringAssign(Quadruple quadruple);
}

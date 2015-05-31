package compiler.CodeGen.BrutalGen;

import compiler.CodeGen.Gen;
import compiler.CodeGen.STL;
import compiler.IR.Nodes.Address.Address;
import compiler.IR.Nodes.Address.IntegerConst;
import compiler.IR.Nodes.Address.Name;
import compiler.IR.Nodes.Address.StringAddressConst;
import compiler.IR.Nodes.Control.Goto;
import compiler.IR.Nodes.Control.IfEZGoto;
import compiler.IR.Nodes.Control.IfNEZGoto;
import compiler.IR.Nodes.Expression.*;
import compiler.IR.Nodes.Function.*;
import compiler.IR.Nodes.Root.IR;
import compiler.IR.Translator;
import compiler.ast.nodes.InitList;

import java.util.*;

/**
 * Created by Chen on 2015/5/23.
 */

public class BrutalGen implements Gen{

    private List<String> lines = new ArrayList<>();

    private void emit(String fmt, Object... objects) {
        lines.add(String.format(fmt, objects));
    }

    public IR ir;

    public BrutalGen(IR ir) {
        this.ir = ir;
        functionStack = new LinkedList<>();
        ASUaddressMap = new HashMap<>();
        stringAddressMap = new HashMap<>();
        launch();
        lines.add(STL.stl);
    }

    private LinkedList<Function> functionStack;
    private Function curFunction;
    private Quadruple lastQuadruple = null;

    private HashMap<Address, String> ASUaddressMap;
    private HashMap<Address, String> stringAddressMap;

    /*steps
    * 1. .data
    *     global variables
    *     ASUs in all functions
    *     strings (how did I deal with that???)
    * 2. .text
    *       _start function first
    *           map the ASUs with global variables
    *           map the strings with global variables
    *           body
    *       other functions then
    *           map the ASUs with local variables
    *           map the strings with local variables
    *           read the parameters
    *           body
                emit("jr $ra");
    *
    *
    * */
    private void launch() {


        for (Function function : ir.fragments) {
            if (function.name.equals("_start")) {
                emitGlobal(function.vars);
               // emitString(ir.stringAddressConstList);
               // emitASU(ir.ASUList);
                break;
            }
        }

        /*ASU*/
        int cnt = 0;
        for (Variable variable : ir.ASUList) {
            cnt++;
            String name = "ASU_" + cnt;
            emit(name + ": .space " + variable.size);
            ASUaddressMap.put(variable.address, name);
        }

        cnt = 0;
        for (Translator.StringPair stringPair : ir.stringAddressConstList) {
            cnt++;
            String name = "str_" + cnt;
            String tmp2= stringPair.string;
         //   String tmp1 = stringPair.string.replaceAll("[\\n\\r]+", "\\\\n");
        //    String tmp2 = tmp1.replace("\\t", "\\\\t");
           // lines.add(name + ": .asciiz " + "\"" + tmp2 + "\"");
            lines.add(name + ": .space " + (4 * tmp2.length() + 4));
            for (int i = 0; i < tmp2.length(); i++)
                ir.fragments.get(0).body.add(new StringAssign(tmp2.charAt(i), name, i * 4));
            ir.fragments.get(0).body.add(new StringAssign('\0', name, 4 * tmp2.length()));
            stringPair.address.isGlobal = true;
            stringAddressMap.put(stringPair.address, name);
        }

        emit(".text");
        //emit(".globl _start");

        for (Function function : ir.fragments) {
            if (function.name.equals("_start")) {
                emit("main:");
                emitPrologue();
                /*ASUs*/
                for (Variable variable : function.ASUList) {
                    String name = ASUaddressMap.get(variable.address);
                    emit("la $t0, " + name);
                    //emit("sw $t0, " + ((Name)variable.address).name);
                    emit("sw $t0, " + getAddress(variable.address));
                }

                for (Translator.StringPair stringPair : function.StringAddressList) {
                    String name = stringAddressMap.get(stringPair.address);
                    emit("la $t0, " + name);
                    //emit("sw $t0, " + ((Name)stringPair.address).name);
                    emit("sw $t0, " + getAddress(stringPair.address));
                }

                for (Quadruple quadruple : function.body) {
                    emitQuadruple(quadruple);
                }
                emit("j _main");
                break;
            }
        }

        for (Function function : ir.fragments) {
            if (function.name.equals("_start") ||
                    function.name.equals("_malloc") ||
                    function.name.equals("_getchar") ||
                    function.name.equals("_printf") )
                continue;

            curFunction = function;
            if (function.name.equals("main"))
                emit("_main:");
            else
                emit(function.name + ":");
            emit("sw $ra, ($sp)");

            /*ASUs*/
            for (Variable variable : function.ASUList) {
                String name = ASUaddressMap.get(variable.address);
                emit("la $t0, " + name);
                //emit("sw $t0, %d($sp)", variable.address.loc);
                emit("sw $t0, " + getAddress(variable.address));
            }

            for (Translator.StringPair stringPair : function.StringAddressList) {
                String name = stringAddressMap.get(stringPair.address);
                emit("la $t0, " + name);
                //emit("sw $t0, %d($sp)", stringPair.address.loc);
                emit("sw $t0, " + getAddress(stringPair.address));
            }

            if (function.args.size() != 0) {
                /*read the params*/
                int totalParamSize = 4 * function.args.size();
                for (Variable variable : function.args) {
                    //totalParamSize -= variable.size;
                    totalParamSize -= 4;
                    variable.address.loc = (totalParamSize + 4);
                }
            }
            for (Quadruple quadruple : function.body) {
                emitQuadruple(quadruple);
                lastQuadruple = quadruple;
            }
            emit("jr $ra");

        }

        for (Function function : ir.fragments) {
            if (function.name.equals("_printf")) {
                emit("\n_printf:");
                emit("lw $t0, _printf_cnt");
                emit("mul $t0, $t0, 4");
                emit("add $t0, $t0, $sp");
                emit("lw $a1, ($t0)");
                emit("move $a2, $t0");
                //emit("subu $a2, $t0, 4");
                break;
            }
        }

    }

    public String getAddress(Address address) {
        String ret;
        if (address instanceof Name && address.isGlobal)
            ret = ((Name) address).name;
        else
            ret = address.loc + "($sp)";
        return ret;
    }

    public void emitLoad(String reg, Address address) {
        if (address instanceof IntegerConst) {
            emit("li " + reg + ", " + ((IntegerConst) address).value);
        }
        else {
            emit("lw " + reg + ", " + getAddress(address));
        }
    }

    @Override
    public void emitPrologue() {
        emit("move $fp, $sp     # start using memory here");
        emit("move $gp, $sp     # set global pointer (unused)");
        emit("subu $sp, $sp, 4");
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        for (String line : lines) {
            if (!line.startsWith(".") && !line.endsWith(":")) {
                sb.append('\t');
            }
            sb.append(line);
            sb.append('\n');
        }
        return sb.toString();
    }

    /*The size are all set to 4, seems there is no problem*/

    @Override
    public void emitGlobal(List<Variable> vars) {
        emit(".data");
        for (Variable variable : vars) {
            variable.address.isGlobal = true;
            emit(((Name) variable.address).name + ": .space " + 4);
        }


    }

    @Override
    public void emitQuadruple(Quadruple quadruple) {
        if (quadruple instanceof AddressOf)      emitAddressOf(quadruple);
        if (quadruple instanceof ArithmeticExpr) emitArithmeticExpr(quadruple);
        if (quadruple instanceof ArrayRead)      emitArrayRead(quadruple);
        if (quadruple instanceof ArrayWrite)     emitArrayWrite(quadruple);
        if (quadruple instanceof Assign)         emitAssign(quadruple);
        if (quadruple instanceof Label)          emitLabel(quadruple);
        if (quadruple instanceof MemoryRead)     emitMemoryRead(quadruple);
        if (quadruple instanceof MemoryWrite)    emitMemoryWrite(quadruple);
        if (quadruple instanceof Goto)           emitGoto(quadruple);
        if (quadruple instanceof IfNEZGoto)      emitIfNEZGoto(quadruple);
        if (quadruple instanceof IfEZGoto)       emitIfEZGoto(quadruple);
        if (quadruple instanceof Param)          emitParam(quadruple);
        if (quadruple instanceof Call)           emitCall(quadruple);
        if (quadruple instanceof Return)         emitReturn(quadruple);
        if (quadruple instanceof StringAssign)   emitStringAssign(quadruple);
    }

    @Override
    public void emitAddressOf(Quadruple quadruple) {
        AddressOf addressOf  = (AddressOf) quadruple;
        emit("la $t1, " + getAddress(((AddressOf) quadruple).src));
    //    emit("sw $t1, %d($sp)", addressOf.dest.loc);
        emit("sw $t1, " + getAddress(addressOf.dest));
    }

    @Override
    public void emitArithmeticExpr(Quadruple quadruple) {
        ArithmeticExpr arithmeticExpr = (ArithmeticExpr) quadruple;
        //emit("lw $t2, %d($sp)", arithmeticExpr.src2.loc);
        //emit("lw $t2, " + getAddress(arithmeticExpr.src2));
        emitLoad("$t2", arithmeticExpr.src2);
        switch (arithmeticExpr.op) {
            case ADD:
               // emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("add $t0, $t1, $t2");
                break;
            case SUB:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("sub $t0, $t1, $t2");
                break;
            case MUL:
               // emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("mul $t0, $t1, $t2");
                break;
            case DIV:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("div $t0, $t1, $t2");
                break;
            case MOD:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("rem $t0, $t1, $t2");
                break;
            case SHL:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("sll $t0, $t1, $t2");
                break;
            case SHR:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("srl $t0, $t1, $t2");
                break;
            case LOGICAL_AND:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("and $t0, $t1, $t2");
                break;
            case LOGICAL_OR:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("or $t0, $t1, $t2");
                break;
            case XOR:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("xor $t0, $t1, $t2");
                break;
            case MINUS:
                emit("sub $t0, $0, $t2");
                break;
            case TILDE:
                emit("not $t0, $t2");
                break;
            case EQ:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("seq $t0, $t1, $t2");
                break;
            case NE:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("sne $t0, $t1, $t2");
                break;
            case GT:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("sgt $t0, $t1, $t2");
                break;
            case LT:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("slt $t0, $t1, $t2");
                break;
            case GE:
                //emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("sge $t0, $t1, $t2");
                break;
            case LE:
               // emit("lw $t1, %d($sp)", arithmeticExpr.src1.loc);
                //emit("lw $t1, " + getAddress(arithmeticExpr.src1));
                emitLoad("$t1", arithmeticExpr.src1);
                emit("sle $t0, $t1, $t2");
                break;
        }
        //emit("sw $t0, %d($sp)", arithmeticExpr.dest.loc);
        emit("sw $t0, " + getAddress(arithmeticExpr.dest));
    }

    @Override
    public void emitArrayRead(Quadruple quadruple) {
        ArrayRead arrayRead = (ArrayRead) quadruple;
        //emit("lw $t1, %d($sp)", arrayRead.src.loc);
        //emit("lw $t1, " + getAddress(arrayRead.src));
        emitLoad("$t1", arrayRead.src);
        emit("lw $t0, %d($t1)", arrayRead.offset);
        //emit("sw $t0, %d($sp)", arrayRead.dest.loc);
        emit("sw $t0, " + getAddress(arrayRead.dest));
    }

    @Override
    public void emitArrayWrite(Quadruple quadruple) {
        ArrayWrite arrayWrite = (ArrayWrite) quadruple;
        //emit("lw $t1, %d($sp)", arrayWrite.dest.loc);
        //emit("lw $t1, " + getAddress(arrayWrite.dest));
        emitLoad("$t1", arrayWrite.dest);
        //emit("lw $t2, %d($sp)", arrayWrite.src.loc);
        //emit("lw $t2, " + getAddress(arrayWrite.src));
        emitLoad("$t2", arrayWrite.src);
        emit("sw $t2, %d($t1)", arrayWrite.offset);
    }

    @Override
    public void emitAssign(Quadruple quadruple) {
        Assign assign = (Assign) quadruple;
        //emit("lw $t0, %d($sp)", assign.src.loc);
        //emit("lw $t0, " + getAddress(assign.src));
        emitLoad("$t0", assign.src);
        //emit("sw $t0, %d($sp)", assign.dest.loc);
        emit("sw $t0, " + getAddress(assign.dest));
    }

    @Override
    public void emitLabel(Quadruple quadruple) {
        Label label = (Label) quadruple;
        emit("L" + label.num + ":");
    }

    @Override
    public void emitMemoryRead(Quadruple quadruple) {
        MemoryRead memoryRead = (MemoryRead) quadruple;
        //emit("lw $t0, %d($sp)", memoryRead.src.loc);
        //emit("lw $t0, " + getAddress(memoryRead.src));
        emitLoad("$t0", memoryRead.src);
        emit("lw $t1, ($t0)");
        //emit("sw $t1, %d($sp)", memoryRead.dest.loc);
        emit("sw $t1, " + getAddress(memoryRead.dest));
    }

    @Override
    public void emitMemoryWrite(Quadruple quadruple) {
        MemoryWrite memoryWrite = (MemoryWrite) quadruple;
        //emit("lw $t0, %d($sp)", memoryWrite.dest.loc);
        //emit("lw $t0, " + getAddress(memoryWrite.dest));
        emitLoad("$t0", memoryWrite.dest);
        //emit("lw $t1, %d($sp)", memoryWrite.src.loc);
        //emit("lw $t1, " + getAddress(memoryWrite.src));
        emitLoad("$t1", memoryWrite.src);
        emit("sw $t1, ($t0)");
    }

    @Override
    public void emitGoto(Quadruple quadruple) {
        Goto ggoto =(Goto) quadruple;
        emit("b L" + ggoto.label.num);
    }

    @Override
    public void emitIfEZGoto(Quadruple quadruple) {
        IfEZGoto ifEZGoto = (IfEZGoto) quadruple;
        //emit("lw $t0, %d($sp)", ifEZGoto.src.loc);
        //emit("lw $t0, " + getAddress(ifEZGoto.src));
        emitLoad("$t0", ifEZGoto.src);
        emit("beq $t0, $0, L" + ifEZGoto.label.num);
    }

    @Override
    public void emitIfNEZGoto(Quadruple quadruple) {
        IfNEZGoto ifNEZGoto = (IfNEZGoto) quadruple;
        //emit("lw $t0, %d($sp)", ifNEZGoto.src.loc);
        //emit("lw $t0, " + getAddress(ifNEZGoto.src));
        emitLoad("$t0", ifNEZGoto.src);
        emit("bne $t0, $0, L" + ifNEZGoto.label.num);
    }

    private int paramOffset;

    @Override
    public void emitParam(Quadruple quadruple) {
        Param param = (Param) quadruple;
        if (!(lastQuadruple instanceof Param)) {
            //paramOffset = param.size + curFunction.localSize;
            paramOffset = 4 + curFunction.localSize;
        }
        else {
            //paramOffset += param.size;
            paramOffset += 4;
        }
        //emit("lw $t0, %d($sp)", param.src.loc);
        //emit("lw $t0, " + getAddress(param.src));
        emitLoad("$t0", param.src);
        emit("sw $t0, %d($sp)", -paramOffset);
    }

    @Override
    public void emitCall(Quadruple quadruple) {
        Call call = (Call) quadruple;
        emit("subu $sp, $sp, %d", paramOffset + 4);
        emit("jal " + call.name);
        emit("addi $sp, $sp, %d", paramOffset + 4);
        //emit("sw $v0, %d($sp)", call.dest.loc);
        emit("sw $v0, " + getAddress(call.dest));
        emit("lw $ra, ($sp)");
    }

    @Override
    public void emitReturn(Quadruple quadruple) {
        Return rreturn = (Return) quadruple;
        if (rreturn.value != null) {
           // emit("lw $t0, " + getAddress(rreturn.value.src));
            emitLoad("$v0", rreturn.value.src);
            //emit("sw $v0, %d($sp)", rreturn.value.src.loc);
            emit("sw $v0, " + getAddress(rreturn.value.src));
        }
        emit("jr $ra");
    }

    @Override
    public void emitStringAssign(Quadruple quadruple) {
        StringAssign stringAssign = (StringAssign) quadruple;
        emit("li $t0, " + stringAssign.ch);
        emit("la $t1, " + stringAssign.name);
        emit("sw $t0, %d($t1)", stringAssign.offset);
    }
}

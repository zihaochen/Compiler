package compiler.CodeGen;

/**
 * Created by Chen on 2015/5/24.
 */
public class STL {
    /*TODO: to be modified after the stack is considered*/
    public static String stl = "\n_printf_loop:\n" +
            "\tlb $a0, 0($a1)\n" +
            "\tbeq $a0, 0, _printf_end\n" +
            "\taddu $a1, $a1, 4\n" +
            "\tbeq $a0, '%', _printf_fmt\n" +
            "\tli $v0, 11\n" +
            "\tsyscall\n" +
            "\tb _printf_loop\n" +
            "\n" +
            "_printf_fmt:\n" +
            "\tlb $a0, 0($a1)\n" +
            "\taddu $a1, $a1, 4\n" +
            "\tbeq $a0, 'd', _printf_int\n" +
            "\tbeq $a0, 's', _printf_str\n" +
            "\tbeq $a0, 'c', _printf_char\n" +
            "\tbeq $a0, '0', _printf_width\n" +
            "\tbeq $a0, '.', _printf_width\n" +
            "\n" +
            "_printf_int:\n" +
            "\tsubu $a2, $a2, 4\n" +
            "\tlw $a0, 0($a2)\n" +
            "\tli $v0, 1\n" +
            "\tsyscall\n" +
            "\tb _printf_loop\n" +
            "\n" +
            "_printf_str:\n" +
            "\tsubu $a2, $a2, 4\n" +
            "\tlw $a3, 0($a2)\n" +
            "\tb _printf_str_loop\n" +
            "\n" +
            "_printf_str_loop:\n" +
            "\taddu $a3, $a3, 4\n" +
            "\tlw $a0, ($a3)\n" +
            "\tbeq $a0, 0, _printf_loop\n" +
            "\tli $v0, 11\n" +
            "\tsyscall\n" +
            "\tb _printf_str_loop\n" +
            "\n" +
            "_printf_char:\n" +
            "\tsubu $a2, $a2, 4\n" +
            "\tlw $a0, 0($a2)\n" +
            "\tli $v0, 11\n" +
            "\tsyscall\n" +
            "\tb _printf_loop\n" +
            "\n" +
            "_printf_width:\n" +
            "\tlb $t1, 0($a1)\n" +
            "\taddu $a1, $a1, 4\n" +
            "\tsub $t1, $t1, '1'\n" +
            "\taddu $a1, $a1, 4\n" +
            "\tsubu $a2, $a2, 4\n" +
            "\tlw $t0, 0($a2)\n" +
            "\tblt $t0, 10, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 100, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 1000, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 10000, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 100000, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 1000000, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 10000000, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tblt $t0, 100000000, _printf_width_tmp\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\n" +
            "_printf_width_tmp:\n" +
            "\tli $a0, '0'\n" +
            "\tbeq $t1, 0, _printf_width_tmp2\n" +
            "\tsubu $t1, $t1, 1\n" +
            "\tli $v0, 11\n" +
            "\tsyscall\n" +
            "\tb _printf_width_tmp\n" +
            "\n" +
            "_printf_width_tmp2:\n" +
            "\tmove $a0, $t0\n" +
            "\tli $v0, 1\n" +
            "\tsyscall\n" +
            "\tb _printf_loop\n" +
            "\n" +
            "_printf_end:\n" +
            "\tjr $ra\n" +
            "\n" +
            "_getchar:\n" +
            "\tli $v0, 12\n" +
            "\tsyscall\n" +
            "\tjr $ra\n" +
            "\n" +
            "_malloc_struct:\n" +
            "\tlw $a0, 4($sp)\n" +
            "\tli $v0, 9\n" +
            "\tsyscall\n" +
            "\tmove $t0, $v0\n" +
            "\tli $v0, 9\n" +
            "\tli $a0, 4\n" +
            "\tsyscall\n" +
            "\tsw $t0, ($v0)\n" +
            "\tjr $ra\n" +
            "\n" +
            "_malloc:\n" +
            "\tlw $a0, 4($sp)\n" +
            "\tli $v0, 9\n" +
            "\tsyscall\n" +
            "\tjr $ra";

}

.data
	printf_cnt: .space 4
	f: .space 4
	str_ptr_1: .space 4
	str_1: .asciiz "#include <stdio.h>%cchar*f=%c%s%c;int main(){printf(f,10,34,f,34,10);}%c"
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, str_1
	sw $t0, str_ptr_1
	li $t0, 0
	sw $t0, printf_cnt
	lw $t0, str_ptr_1
	sw $t0, f
	j _main
_main:
	sw $ra, ($sp)
	lw $t0, f
	sw $t0, -8($sp)
	li $t0, 10
	sw $t0, -12($sp)
	li $t0, 34
	sw $t0, -16($sp)
	lw $t0, f
	sw $t0, -20($sp)
	li $t0, 34
	sw $t0, -24($sp)
	li $t0, 10
	sw $t0, -28($sp)
	li $t0, 6
	sw $t0, printf_cnt
	subu $sp, $sp, 32
	jal printf
	addi $sp, $sp, 32
	sw $v0, -4($sp)
	lw $ra, ($sp)
	jr $ra

printf:
	lw $t0, printf_cnt
	mul $t0, $t0, 4
	add $t0, $t0, $sp
	lw $a1, ($t0)
	move $a2, $t0
	
printf_loop:
	lb $a0, 0($a1)
	beq $a0, 0, printf_end
	addu $a1, $a1, 1
	beq $a0, '%', printf_fmt
	li $v0, 11
	syscall
	b printf_loop

printf_fmt:
	lb $a0, 0($a1)
	addu $a1, $a1, 1
	beq $a0, 'd', printf_int
	beq $a0, 's', printf_str
	beq $a0, 'c', printf_char
	beq $a0, '0', printf_width
	beq $a0, '.', printf_width

printf_int:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 1
	syscall
	b printf_loop

printf_str:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 4
	syscall
	b printf_loop

printf_char:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 11
	syscall
	b printf_loop

printf_width:
	lb $t1, 0($a1)
	addu $a1, $a1, 1
	sub $t1, $t1, '1'
	addu $a1, $a1, 1
	subu $a2, $a2, 4
	lw $t0, 0($a2)
	blt $t0, 10, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 1000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 10000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 1000000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 10000000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100000000, printf_width_tmp
	subu $t1, $t1, 1

printf_width_tmp:
	li $a0, '0'
	beq $t1, 0, printf_width_tmp2
	subu $a2 $a2 1
	li $v0, 11
	syscall
	b printf_width_tmp

printf_width_tmp2:
	move $a0, $t0
	li $v0, 1
	syscall
	b printf_loop

printf_end:
	jr $ra

getchar:
	li $v0, 12
	syscall
	jr $ra

malloc:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	jr $ra


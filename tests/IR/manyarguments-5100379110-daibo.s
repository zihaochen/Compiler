.data
	_printf_cnt: .space 4
	str_1: .asciiz "%d "
	str_2: .asciiz "%d "
	str_3: .asciiz "%d "
	str_4: .asciiz "%d "
	str_5: .asciiz "%d "
	str_6: .asciiz "%d\n"
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	j _main
_manyArguments:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -4($sp)
	la $t0, str_2
	sw $t0, -12($sp)
	la $t0, str_3
	sw $t0, -20($sp)
	la $t0, str_4
	sw $t0, -28($sp)
	la $t0, str_5
	sw $t0, -36($sp)
	la $t0, str_6
	sw $t0, -44($sp)
	lw $t0, -4($sp)
	sw $t0, -52($sp)
	lw $t0, 24($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -52($sp)
	lw $t0, 20($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -20($sp)
	sw $t0, -52($sp)
	lw $t0, 16($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -24($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, -52($sp)
	lw $t0, 12($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -36($sp)
	sw $t0, -52($sp)
	lw $t0, 8($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t0, -44($sp)
	sw $t0, -52($sp)
	lw $t0, 4($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -48($sp)
	lw $ra, ($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	li $t2, 6
	li $t1, 5
	add $t0, $t1, $t2
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -24($sp)
	li $t0, 1
	sw $t0, -28($sp)
	li $t0, 2
	sw $t0, -32($sp)
	li $t0, 3
	sw $t0, -36($sp)
	li $t0, 4
	sw $t0, -40($sp)
	lw $t0, -4($sp)
	sw $t0, -44($sp)
	subu $sp, $sp, 48
	jal _manyArguments
	addi $sp, $sp, 48
	sw $v0, -8($sp)
	lw $ra, ($sp)
	li $t2, 5
	li $t1, 7
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	li $t2, 6
	li $t1, 5
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -24($sp)
	li $t0, 1
	sw $t0, -28($sp)
	li $t0, 2
	sw $t0, -32($sp)
	lw $t0, -12($sp)
	sw $t0, -36($sp)
	li $t0, 4
	sw $t0, -40($sp)
	lw $t0, -16($sp)
	sw $t0, -44($sp)
	subu $sp, $sp, 48
	jal _manyArguments
	addi $sp, $sp, 48
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra

_printf:
	lw $t0, _printf_cnt
	mul $t0, $t0, 4
	add $t0, $t0, $sp
	lw $a1, ($t0)
	move $a2, $t0
		
_printf_loop:
	lb $a0, 0($a1)
	beq $a0, 0, _printf_end
	addu $a1, $a1, 1
	beq $a0, '%', _printf_fmt
	li $v0, 11
	syscall
	b _printf_loop

_printf_fmt:
	lb $a0, 0($a1)
	addu $a1, $a1, 1
	beq $a0, 'd', _printf_int
	beq $a0, 's', _printf_str
	beq $a0, 'c', _printf_char
	beq $a0, '0', _printf_width
	beq $a0, '.', _printf_width

_printf_int:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 1
	syscall
	b _printf_loop

_printf_str:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 4
	syscall
	b _printf_loop

_printf_char:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 11
	syscall
	b _printf_loop

_printf_width:
	lb $t1, 0($a1)
	addu $a1, $a1, 1
	sub $t1, $t1, '1'
	addu $a1, $a1, 1
	subu $a2, $a2, 4
	lw $t0, 0($a2)
	blt $t0, 10, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 1000, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 10000, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100000, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 1000000, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 10000000, _printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100000000, _printf_width_tmp
	subu $t1, $t1, 1

_printf_width_tmp:
	li $a0, '0'
	beq $t1, 0, _printf_width_tmp2
	subu $a2 $a2 1
	li $v0, 11
	syscall
	b _printf_width_tmp

_printf_width_tmp2:
	move $a0, $t0
	li $v0, 1
	syscall
	b _printf_loop

_printf_end:
	jr $ra

_getchar:
	li $v0, 12
	syscall
	jr $ra

_malloc:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	jr $ra


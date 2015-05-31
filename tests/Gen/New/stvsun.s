.data
	_printf_cnt: .space 4
	_a: .space 4
	_b: .space 4
	ASU_1: .space 12
	str_1: .space 28
	str_2: .space 28
	str_3: .space 28
	str_4: .space 28
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _b
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 12($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 16($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 20($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_4
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_4
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_4
	sw $t0, 12($t1)
	li $t0, 100
	la $t1, str_4
	sw $t0, 16($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 20($t1)
	li $t0, 0
	la $t1, str_4
	sw $t0, 24($t1)
	j _main
_is_digit:
	sw $ra, ($sp)
	li $t2, 48
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L3
	b L2
L3:
	li $t2, 57
	lw $t1, 4($sp)
	sle $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L1
	b L2
L1:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L2:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_get_d:
	sw $ra, ($sp)
	subu $sp, $sp, 56
	jal _getchar
	addi $sp, $sp, 56
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -12($sp)
L5:
	lw $t0, -4($sp)
	sw $t0, -56($sp)
	subu $sp, $sp, 60
	jal _is_digit
	addi $sp, $sp, 60
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L4
	b L6
L6:
	subu $sp, $sp, 60
	jal _getchar
	addi $sp, $sp, 60
	sw $v0, -24($sp)
	lw $ra, ($sp)
	lw $t0, -24($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -20($sp)
	b L5
L4:
L8:
	lw $t0, -4($sp)
	sw $t0, -56($sp)
	subu $sp, $sp, 60
	jal _is_digit
	addi $sp, $sp, 60
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t2, 10
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -4($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t2, 48
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -32($sp)
	subu $sp, $sp, 60
	jal _getchar
	addi $sp, $sp, 60
	sw $v0, -52($sp)
	lw $ra, ($sp)
	lw $t0, -52($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
	b L8
L7:
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -24($sp)
	la $t0, str_2
	sw $t0, -48($sp)
	la $t0, str_3
	sw $t0, -68($sp)
	la $t0, str_4
	sw $t0, -92($sp)
	subu $sp, $sp, 60
	jal _getchar
	addi $sp, $sp, 60
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	subu $sp, $sp, 60
	jal _get_d
	addi $sp, $sp, 60
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -12($sp)
	lw $t1, _a
	lw $t2, -4($sp)
	sw $t2, 0($t1)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -28($sp)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -32($sp)
	lw $t0, -24($sp)
	sw $t0, -108($sp)
	lw $t0, -28($sp)
	sw $t0, -112($sp)
	lw $t0, -32($sp)
	sw $t0, -116($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -36($sp)
	lw $ra, ($sp)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -44($sp)
	lw $t1, _b
	lw $t2, -44($sp)
	sw $t2, 0($t1)
	lw $t1, _b
	lw $t0, 0($t1)
	sw $t0, -52($sp)
	lw $t1, _b
	lw $t0, 4($t1)
	sw $t0, -56($sp)
	lw $t0, -48($sp)
	sw $t0, -108($sp)
	lw $t0, -52($sp)
	sw $t0, -112($sp)
	lw $t0, -56($sp)
	sw $t0, -116($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t1, _a
	lw $t2, -12($sp)
	sw $t2, 0($t1)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -72($sp)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -76($sp)
	lw $t0, -68($sp)
	sw $t0, -108($sp)
	lw $t0, -72($sp)
	sw $t0, -112($sp)
	lw $t0, -76($sp)
	sw $t0, -116($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -80($sp)
	lw $ra, ($sp)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -88($sp)
	lw $t1, _b
	lw $t2, -88($sp)
	sw $t2, 4($t1)
	lw $t1, _b
	lw $t0, 0($t1)
	sw $t0, -96($sp)
	lw $t1, _b
	lw $t0, 4($t1)
	sw $t0, -100($sp)
	lw $t0, -92($sp)
	sw $t0, -108($sp)
	lw $t0, -96($sp)
	sw $t0, -112($sp)
	lw $t0, -100($sp)
	sw $t0, -116($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -104($sp)
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
	addu $a1, $a1, 4
	beq $a0, '%', _printf_fmt
	li $v0, 11
	syscall
	b _printf_loop

_printf_fmt:
	lb $a0, 0($a1)
	addu $a1, $a1, 4
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
	lw $a3, 0($a2)
	b _printf_str_loop

_printf_str_loop:
	addu $a3, $a3, 4
	lw $a0, ($a3)
	beq $a0, 0, _printf_loop
	li $v0, 11
	syscall
	b _printf_str_loop

_printf_char:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 11
	syscall
	b _printf_loop

_printf_width:
	lb $t1, 0($a1)
	addu $a1, $a1, 4
	sub $t1, $t1, '1'
	addu $a1, $a1, 4
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
	subu $t1, $t1, 1
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

_malloc_struct:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	move $t0, $v0
	li $v0, 9
	li $a0, 4
	syscall
	sw $t0, ($v0)
	jr $ra

_malloc:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	jr $ra

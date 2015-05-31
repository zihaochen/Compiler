.data
	_printf_cnt: .space 4
	_a: .space 4
	_n: .space 4
	ASU_1: .space 44
	str_1: .space 28
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 10
	sw $t0, _n
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 44
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
	j _main
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -56($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L2:
	lw $t2, _n
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -40($sp)
	li $t2, 1
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -36($sp)
	b L2
L1:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
L5:
	lw $t2, _n
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -60($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t2, -4($sp)
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	li $t2, 1
	lw $t1, -76($sp)
	sub $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -80($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t0, -56($sp)
	sw $t0, -116($sp)
	lw $t0, -72($sp)
	sw $t0, -120($sp)
	lw $t0, -96($sp)
	sw $t0, -124($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 128
	jal _printf
	addi $sp, $sp, 128
	sw $v0, -100($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -108($sp)
	li $t2, 1
	lw $t1, -108($sp)
	sub $t0, $t1, $t2
	sw $t0, -104($sp)
	b L5
L4:
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


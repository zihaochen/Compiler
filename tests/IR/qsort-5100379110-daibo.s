.data
	_printf_cnt: .space 4
	_a: .space 4
	_n: .space 4
	ASU_1: .space 40404
	str_1: .space 16
	str_2: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 1000
	sw $t0, _n
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 0($t1)
	j _main
_qsrt:
	sw $ra, ($sp)
	lw $t0, 8($sp)
	sw $t0, -4($sp)
	lw $t0, 4($sp)
	sw $t0, -8($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	li $t2, 2
	lw $t1, -16($sp)
	div $t0, $t1, $t2
	sw $t0, -20($sp)
	li $t0, 0
	sw $t0, -24($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -12($sp)
L2:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L3
	b L1
L3:
L5:
	li $t0, 0
	sw $t0, -44($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t2, -12($sp)
	lw $t1, -56($sp)
	slt $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -68($sp)
	li $t2, 1
	lw $t1, -68($sp)
	sub $t0, $t1, $t2
	sw $t0, -64($sp)
	b L5
L4:
L8:
	li $t0, 0
	sw $t0, -76($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t2, -12($sp)
	lw $t1, -88($sp)
	sgt $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -100($sp)
	li $t2, 1
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	b L8
L7:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	bne $t0, $0, L11
	b L10
L11:
	li $t0, 0
	sw $t0, -116($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, -116($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t0, -128($sp)
	sw $t0, -112($sp)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	li $t0, 0
	sw $t0, -152($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	lw $t1, -148($sp)
	sw $t1, ($t0)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t0, 0
	sw $t0, -172($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, -172($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	lw $t1, -112($sp)
	sw $t1, ($t0)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -192($sp)
	li $t2, 1
	lw $t1, -192($sp)
	sub $t0, $t1, $t2
	sw $t0, -188($sp)
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -204($sp)
	li $t2, 1
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
L10:
	b L2
L1:
	lw $t2, -8($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	bne $t0, $0, L13
	b L12
L13:
	lw $t0, 8($sp)
	sw $t0, -228($sp)
	lw $t0, -8($sp)
	sw $t0, -232($sp)
	subu $sp, $sp, 236
	jal _qsrt
	addi $sp, $sp, 236
	sw $v0, -216($sp)
	lw $ra, ($sp)
L12:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	bne $t0, $0, L15
	b L14
L15:
	lw $t0, -4($sp)
	sw $t0, -228($sp)
	lw $t0, 4($sp)
	sw $t0, -232($sp)
	subu $sp, $sp, 236
	jal _qsrt
	addi $sp, $sp, 236
	sw $v0, -224($sp)
	lw $ra, ($sp)
L14:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -68($sp)
	la $t0, str_2
	sw $t0, -104($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L17:
	lw $t2, _n
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t2, 1
	lw $t1, _n
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -4($sp)
	lw $t1, -20($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, -24($sp)
	sw $t1, ($t0)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
	li $t2, 1
	lw $t1, -48($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	b L17
L16:
	li $t0, 1
	sw $t0, -112($sp)
	lw $t0, _n
	sw $t0, -116($sp)
	subu $sp, $sp, 120
	jal _qsrt
	addi $sp, $sp, 120
	sw $v0, -56($sp)
	lw $ra, ($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -60($sp)
L20:
	lw $t2, _n
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t0, 0
	sw $t0, -72($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t0, -68($sp)
	sw $t0, -112($sp)
	lw $t0, -84($sp)
	sw $t0, -116($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -88($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -96($sp)
	li $t2, 1
	lw $t1, -96($sp)
	sub $t0, $t1, $t2
	sw $t0, -92($sp)
	b L20
L19:
	lw $t0, -104($sp)
	sw $t0, -112($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 116
	jal _printf
	addi $sp, $sp, 116
	sw $v0, -108($sp)
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


.data
	_printf_cnt: .space 4
	_N: .space 4
	_b: .space 4
	_resultCount: .space 4
	ASU_1: .space 60008
	str_1: .space 28
	str_2: .space 44
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _b
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 15000
	sw $t0, _N
	li $t0, 0
	sw $t0, _resultCount
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
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
	li $t0, 84
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 97
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 108
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 58
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 36($t1)
	j _main
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -112($sp)
	la $t0, str_2
	sw $t0, -180($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L2:
	lw $t2, _N
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
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
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	li $t1, 1
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
	li $t0, 2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
L5:
	lw $t2, _N
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	lw $t0, -68($sp)
	bne $t0, $0, L8
	b L7
L8:
	li $t0, 2
	sw $t0, -72($sp)
	li $t2, 3
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L11
	b L9
L11:
	li $t2, 2
	lw $t1, -4($sp)
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
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L10
	b L9
L10:
	li $t2, 1
	lw $t1, _resultCount
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	sw $t0, _resultCount
	lw $t0, _resultCount
	sw $t0, -104($sp)
	li $t2, 1
	lw $t1, -104($sp)
	sub $t0, $t1, $t2
	sw $t0, -100($sp)
	li $t2, 2
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -112($sp)
	sw $t0, -188($sp)
	lw $t0, -116($sp)
	sw $t0, -192($sp)
	lw $t0, -4($sp)
	sw $t0, -196($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 200
	jal _printf
	addi $sp, $sp, 200
	sw $v0, -120($sp)
	lw $ra, ($sp)
L9:
L13:
	lw $t2, -72($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, _N
	lw $t1, -124($sp)
	sle $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L14
	b L12
L14:
	lw $t2, -72($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	li $t0, 0
	sw $t0, -140($sp)
	li $t2, 4
	lw $t1, -136($sp)
	mul $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, -144($sp)
	lw $t1, -140($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t2, 1
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -160($sp)
	li $t2, 1
	lw $t1, -160($sp)
	sub $t0, $t1, $t2
	sw $t0, -156($sp)
	b L13
L12:
L7:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -172($sp)
	li $t2, 1
	lw $t1, -172($sp)
	sub $t0, $t1, $t2
	sw $t0, -168($sp)
	b L5
L4:
	lw $t0, -180($sp)
	sw $t0, -188($sp)
	lw $t0, _resultCount
	sw $t0, -192($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 196
	jal _printf
	addi $sp, $sp, 196
	sw $v0, -184($sp)
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


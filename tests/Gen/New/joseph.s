.data
	_printf_cnt: .space 4
	_a: .space 4
	ASU_1: .space 4024
	str_1: .space 16
	str_2: .space 64
	str_3: .space 16
	str_4: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 78
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 61
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 44
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 77
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 36($t1)
	li $t0, 61
	la $t1, str_2
	sw $t0, 40($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 44($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 48($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 52($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 56($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 60($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 12($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_4
	sw $t0, 4($t1)
	j _main
_read:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -68($sp)
	subu $sp, $sp, 76
	jal _getchar
	addi $sp, $sp, 76
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
L2:
	li $t2, 48
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L3
	b L4
L4:
	li $t2, 57
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L3
	b L1
L3:
	subu $sp, $sp, 76
	jal _getchar
	addi $sp, $sp, 76
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	b L2
L1:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -32($sp)
L6:
	lw $t2, -4($sp)
	li $t1, 48
	sle $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L8
	b L5
L8:
	li $t2, 57
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L7
	b L5
L7:
	lw $t2, -12($sp)
	li $t1, 10
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -4($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t2, 48
	lw $t1, -52($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -44($sp)
	subu $sp, $sp, 76
	jal _getchar
	addi $sp, $sp, 76
	sw $v0, -64($sp)
	lw $ra, ($sp)
	lw $t0, -64($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -60($sp)
	b L6
L5:
	lw $t0, -68($sp)
	sw $t0, -76($sp)
	lw $t0, -12($sp)
	sw $t0, -80($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 84
	jal _printf
	addi $sp, $sp, 84
	sw $v0, -72($sp)
	lw $ra, ($sp)
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_2
	sw $t0, -36($sp)
	la $t0, str_3
	sw $t0, -160($sp)
	la $t0, str_4
	sw $t0, -216($sp)
	subu $sp, $sp, 84
	jal _read
	addi $sp, $sp, 84
	sw $v0, -24($sp)
	lw $ra, ($sp)
	lw $t0, -24($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -20($sp)
	subu $sp, $sp, 84
	jal _read
	addi $sp, $sp, 84
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -32($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -28($sp)
	lw $t0, -36($sp)
	sw $t0, -224($sp)
	lw $t0, -4($sp)
	sw $t0, -228($sp)
	lw $t0, -8($sp)
	sw $t0, -232($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 236
	jal _printf
	addi $sp, $sp, 236
	sw $v0, -40($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -44($sp)
L10:
	lw $t2, -4($sp)
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L11
	b L9
L11:
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t0, 0
	sw $t0, -60($sp)
	li $t2, 4
	lw $t1, -16($sp)
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
	lw $t1, -56($sp)
	sw $t1, ($t0)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -80($sp)
	li $t2, 1
	lw $t1, -80($sp)
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	b L10
L9:
	li $t0, -1
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -88($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -92($sp)
L13:
	li $t2, 0
	lw $t1, -12($sp)
	sgt $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L14
	b L12
L14:
	li $t0, 0
	sw $t0, -100($sp)
L16:
	lw $t2, -8($sp)
	lw $t1, -100($sp)
	slt $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L17
	b L15
L17:
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -112($sp)
	li $t2, 1
	lw $t1, -112($sp)
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -4($sp)
	lw $t1, -16($sp)
	seq $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L19
	b L18
L19:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -124($sp)
L18:
	li $t0, 0
	sw $t0, -128($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -140($sp)
	li $t2, 0
	lw $t1, -140($sp)
	sgt $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	bne $t0, $0, L21
	b L20
L21:
	li $t2, 1
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	sw $t0, -152($sp)
	li $t2, 1
	lw $t1, -152($sp)
	sub $t0, $t1, $t2
	sw $t0, -148($sp)
L20:
	b L16
L15:
	li $t0, 0
	sw $t0, -164($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -164($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	lw $t1, ($t0)
	sw $t1, -176($sp)
	lw $t0, -160($sp)
	sw $t0, -224($sp)
	lw $t0, -176($sp)
	sw $t0, -228($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 232
	jal _printf
	addi $sp, $sp, 232
	sw $v0, -180($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -188($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -188($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	li $t2, 1
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -208($sp)
	li $t2, 1
	lw $t1, -208($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	b L13
L12:
	lw $t0, -216($sp)
	sw $t0, -224($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 228
	jal _printf
	addi $sp, $sp, 228
	sw $v0, -220($sp)
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

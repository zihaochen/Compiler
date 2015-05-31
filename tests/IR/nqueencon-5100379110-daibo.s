.data
	_printf_cnt: .space 4
	str_1: .space 12
	str_2: .space 12
	str_3: .space 12
	str_4: .space 8
	str_5: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 32
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 46
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 79
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 46
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_4
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_5
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_5
	sw $t0, 4($t1)
	j _main
_printrow:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -20($sp)
	la $t0, str_2
	sw $t0, -36($sp)
	la $t0, str_3
	sw $t0, -56($sp)
	la $t0, str_4
	sw $t0, -76($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L2:
	li $t2, 1
	lw $t1, 8($sp)
	sub $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L3
	b L1
L3:
	lw $t0, -20($sp)
	sw $t0, -84($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 88
	jal _printf
	addi $sp, $sp, 88
	sw $v0, -24($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -28($sp)
	b L2
L1:
	lw $t0, -36($sp)
	sw $t0, -84($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 88
	jal _printf
	addi $sp, $sp, 88
	sw $v0, -40($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -44($sp)
L5:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L6
	b L4
L6:
	lw $t0, -56($sp)
	sw $t0, -84($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 88
	jal _printf
	addi $sp, $sp, 88
	sw $v0, -60($sp)
	lw $ra, ($sp)
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
	lw $t0, -76($sp)
	sw $t0, -84($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 88
	jal _printf
	addi $sp, $sp, 88
	sw $v0, -80($sp)
	lw $ra, ($sp)
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_nqueen:
	sw $ra, ($sp)
	la $t0, str_5
	sw $t0, -200($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, 4($sp)
	sw $t0, -8($sp)
	li $t2, 2
	lw $t1, 4($sp)
	rem $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -12($sp)
	li $t2, 2
	lw $t1, 4($sp)
	div $t0, $t1, $t2
	sw $t0, -20($sp)
	li $t2, 3
	lw $t1, -20($sp)
	rem $t0, $t1, $t2
	sw $t0, -24($sp)
	li $t2, 1
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L8
	b L9
L8:
	li $t0, 2
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -32($sp)
	lw $ra, ($sp)
	li $t0, 4
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -36($sp)
L11:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L12
	b L10
L12:
	lw $t0, -4($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -44($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
	b L11
L10:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -56($sp)
L14:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L15
	b L13
L15:
	lw $t0, -4($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -64($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -68($sp)
	b L14
L13:
	b L7
L9:
	lw $t2, -12($sp)
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -76($sp)
	li $t2, 2
	lw $t1, 4($sp)
	div $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -88($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, 4($sp)
	div $t0, $t1, $t2
	sw $t0, -96($sp)
	li $t2, 1
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -92($sp)
L17:
	li $t2, 2
	lw $t1, 4($sp)
	div $t0, $t1, $t2
	sw $t0, -104($sp)
	li $t2, 1
	lw $t1, -104($sp)
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -120($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, 4($sp)
	lw $t1, -128($sp)
	rem $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -124($sp)
	b L17
L16:
	li $t2, 2
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, 4($sp)
	lw $t1, -140($sp)
	rem $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -136($sp)
L20:
	li $t2, 2
	lw $t1, 4($sp)
	div $t0, $t1, $t2
	sw $t0, -148($sp)
	li $t2, 1
	lw $t1, -148($sp)
	sub $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	bne $t0, $0, L21
	b L19
L21:
	lw $t2, -4($sp)
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -164($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, 4($sp)
	lw $t1, -172($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, 4($sp)
	lw $t1, -176($sp)
	rem $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -168($sp)
	b L20
L19:
	lw $t2, -4($sp)
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -188($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L23
	b L22
L23:
	li $t2, 1
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	sw $t0, -208($sp)
	lw $t0, -8($sp)
	sw $t0, -212($sp)
	subu $sp, $sp, 216
	jal _printrow
	addi $sp, $sp, 216
	sw $v0, -196($sp)
	lw $ra, ($sp)
L22:
L7:
	lw $t0, -200($sp)
	sw $t0, -208($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 212
	jal _printf
	addi $sp, $sp, 212
	sw $v0, -204($sp)
	lw $ra, ($sp)
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	subu $sp, $sp, 212
	jal _getchar
	addi $sp, $sp, 212
	sw $v0, -12($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L25:
	li $t2, 11
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L26
	b L24
L26:
	lw $t0, -4($sp)
	sw $t0, -40($sp)
	subu $sp, $sp, 44
	jal _nqueen
	addi $sp, $sp, 44
	sw $v0, -24($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -32($sp)
	li $t2, 1
	lw $t1, -32($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	b L25
L24:
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


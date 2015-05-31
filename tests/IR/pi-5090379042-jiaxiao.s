.data
	_printf_cnt: .space 4
	ASU_1: .space 11208
	str_1: .space 20
	str_2: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 48
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 52
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 0($t1)
	j _main
_main:
	sw $ra, ($sp)
	la $t0, ASU_1
	sw $t0, -24($sp)
	la $t0, str_1
	sw $t0, -192($sp)
	la $t0, str_2
	sw $t0, -216($sp)
	li $t0, 10000
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t0, 2800
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -20($sp)
	li $t0, 0
	sw $t0, -28($sp)
L2:
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t2, 5
	lw $t1, -4($sp)
	div $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -48($sp)
	li $t2, 1
	lw $t1, -48($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	b L2
L1:
L5:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -72($sp)
	li $t2, 2
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L6
	b L4
L6:
	lw $t0, -12($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -84($sp)
L8:
	li $t0, 0
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
	lw $t2, -4($sp)
	lw $t1, -104($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -88($sp)
	li $t2, 1
	lw $t1, -28($sp)
	sub $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, -16($sp)
	rem $t0, $t1, $t2
	sw $t0, -128($sp)
	li $t0, 0
	sw $t0, -132($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	lw $t1, -128($sp)
	sw $t1, ($t0)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	li $t2, 1
	lw $t1, -28($sp)
	sub $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -156($sp)
	li $t2, 1
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -16($sp)
	div $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -148($sp)
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	bne $t0, $0, L9
	b L7
L9:
	lw $t2, -8($sp)
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -176($sp)
	b L8
L7:
	li $t2, 14
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -184($sp)
	lw $t2, -4($sp)
	lw $t1, -16($sp)
	div $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -192($sp)
	sw $t0, -224($sp)
	lw $t0, -200($sp)
	sw $t0, -228($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 232
	jal _printf
	addi $sp, $sp, 232
	sw $v0, -204($sp)
	lw $ra, ($sp)
	lw $t2, -4($sp)
	lw $t1, -16($sp)
	rem $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -208($sp)
	b L5
L4:
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


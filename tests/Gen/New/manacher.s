.data
	_printf_cnt: .space 4
	_s: .space 4
	_len: .space 4
	ASU_1: .space 4104
	ASU_2: .space 4104
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _s
	la $t0, ASU_2
	sw $t0, _len
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
	j _main
_getString:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
L2:
L3:
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	li $t1, 97
	sle $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L7
	b L6
L7:
	li $t2, 122
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L5
	b L6
L6:
	lw $t2, -8($sp)
	li $t1, 65
	sle $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L8
	b L4
L8:
	li $t2, 90
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L5
	b L4
L5:
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
	lw $t2, -36($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, -8($sp)
	sw $t1, ($t0)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	b L2
L4:
	b L1
	b L2
L1:
	lw $t2, -4($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_getMax:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L10
	b L9
L10:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
L9:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
	jr $ra
_getMin:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L12
	b L11
L12:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
L11:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_Manacher:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -16($sp)
L14:
	lw $t2, 12($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L15
	b L13
L15:
	lw $t2, -4($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -40($sp)
	b L14
L13:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -52($sp)
L17:
	lw $t2, 12($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L18
	b L16
L18:
L20:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -64($sp)
	li $t2, 0
	lw $t1, -64($sp)
	sge $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	bne $t0, $0, L23
	b L19
L23:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	li $t2, 1
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	li $t2, 2
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	slt $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	bne $t0, $0, L22
	b L19
L22:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -88($sp)
	li $t2, 2
	lw $t1, -88($sp)
	div $t0, $t1, $t2
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, -92($sp)
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	li $t2, 1
	lw $t1, -108($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	li $t2, 2
	lw $t1, -112($sp)
	div $t0, $t1, $t2
	sw $t0, -116($sp)
	li $t2, 4
	lw $t1, -116($sp)
	mul $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t2, -120($sp)
	lw $t1, -96($sp)
	seq $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -140($sp)
	li $t2, 1
	lw $t1, -140($sp)
	sub $t0, $t1, $t2
	sw $t0, -136($sp)
	b L20
L19:
	lw $t2, -4($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	lw $t1, -8($sp)
	sw $t1, ($t0)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	li $t0, 1
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -160($sp)
L25:
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -164($sp)
	li $t2, 0
	lw $t1, -164($sp)
	sge $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	bne $t0, $0, L28
	b L24
L28:
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -172($sp)
	li $t2, 0
	lw $t1, -172($sp)
	sge $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	bne $t0, $0, L27
	b L24
L27:
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -180($sp)
	li $t2, 4
	lw $t1, -180($sp)
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -184($sp)
	sne $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	bne $t0, $0, L26
	b L24
L26:
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	li $t2, 4
	lw $t1, -208($sp)
	mul $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -212($sp)
	sw $t0, -276($sp)
	lw $t0, -224($sp)
	sw $t0, -280($sp)
	subu $sp, $sp, 284
	jal _getMin
	addi $sp, $sp, 284
	sw $v0, -228($sp)
	lw $ra, ($sp)
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	lw $t1, -228($sp)
	sw $t1, ($t0)
	lw $t0, -236($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t0, -252($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -248($sp)
	li $t2, 1
	lw $t1, -248($sp)
	sub $t0, $t1, $t2
	sw $t0, -244($sp)
	b L25
L24:
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -256($sp)
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	sw $t0, -276($sp)
	li $t0, 0
	sw $t0, -280($sp)
	subu $sp, $sp, 284
	jal _getMax
	addi $sp, $sp, 284
	sw $v0, -272($sp)
	lw $ra, ($sp)
	lw $t0, -272($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -264($sp)
	b L17
L16:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -68($sp)
	lw $t0, _s
	sw $t0, -76($sp)
	subu $sp, $sp, 80
	jal _getString
	addi $sp, $sp, 80
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -4($sp)
	sw $t0, -76($sp)
	lw $t0, _s
	sw $t0, -80($sp)
	lw $t0, _len
	sw $t0, -84($sp)
	subu $sp, $sp, 88
	jal _Manacher
	addi $sp, $sp, 88
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -24($sp)
L30:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L31
	b L29
L31:
	li $t0, 0
	sw $t0, -40($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, _len
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -60($sp)
	b L30
L29:
	lw $t0, -68($sp)
	sw $t0, -76($sp)
	lw $t0, -16($sp)
	sw $t0, -80($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 84
	jal _printf
	addi $sp, $sp, 84
	sw $v0, -72($sp)
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


.data
	_printf_cnt: .space 4
	_SIZE: .space 4
	_a: .space 4
	_b: .space 4
	_c: .space 4
	_L: .space 4
	_i: .space 4
	ASU_1: .space 64
	ASU_2: .space 64
	ASU_3: .space 124
	str_1: .space 12
	str_2: .space 8
	str_3: .space 12
	str_4: .space 8
	str_5: .space 12
	str_6: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	la $t0, ASU_2
	sw $t0, _b
	la $t0, ASU_3
	sw $t0, _c
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 15
	sw $t0, _SIZE
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 100
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
	li $t0, 37
	la $t1, str_5
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_5
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_5
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_6
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_6
	sw $t0, 4($t1)
	j _main
_plus:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -16($sp)
L2:
	lw $t2, 4($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, -8($sp)
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
	lw $t1, ($t0)
	sw $t1, -40($sp)
	li $t0, 0
	sw $t0, -44($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -4($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	li $t0, 0
	sw $t0, -68($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	lw $t1, -64($sp)
	sw $t1, ($t0)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	li $t2, 9
	lw $t1, -100($sp)
	sgt $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L5
	b L4
L5:
	li $t0, 0
	sw $t0, -112($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -112($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	li $t2, 10
	lw $t1, -124($sp)
	sub $t0, $t1, $t2
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
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	lw $t1, -128($sp)
	sw $t1, ($t0)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -148($sp)
L4:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -156($sp)
	li $t2, 1
	lw $t1, -156($sp)
	sub $t0, $t1, $t2
	sw $t0, -152($sp)
	b L2
L1:
	li $t2, 0
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	bne $t0, $0, L7
	b L8
L7:
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
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $v0, -8($sp)
	sw $v0, -8($sp)
	jr $ra
	b L6
L8:
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $v0, -188($sp)
	sw $v0, -188($sp)
	jr $ra
L6:
	jr $ra
_printIntA:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -8($sp)
	la $t0, str_2
	sw $t0, -44($sp)
L10:
	li $t2, 0
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L11
	b L9
L11:
	li $t0, 0
	sw $t0, -12($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -8($sp)
	sw $t0, -52($sp)
	lw $t0, -24($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -28($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	b L10
L9:
	lw $t0, -44($sp)
	sw $t0, -52($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 56
	jal _printf
	addi $sp, $sp, 56
	sw $v0, -48($sp)
	lw $ra, ($sp)
	jr $ra
_printIntB:
	sw $ra, ($sp)
	la $t0, str_3
	sw $t0, -8($sp)
	la $t0, str_4
	sw $t0, -44($sp)
L13:
	li $t2, 0
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L14
	b L12
L14:
	li $t0, 0
	sw $t0, -12($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -8($sp)
	sw $t0, -52($sp)
	lw $t0, -24($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -28($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	b L13
L12:
	lw $t0, -44($sp)
	sw $t0, -52($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 56
	jal _printf
	addi $sp, $sp, 56
	sw $v0, -48($sp)
	lw $ra, ($sp)
	jr $ra
_printBigInt:
	sw $ra, ($sp)
	la $t0, str_5
	sw $t0, -8($sp)
	la $t0, str_6
	sw $t0, -44($sp)
L16:
	li $t2, 0
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L17
	b L15
L17:
	li $t0, 0
	sw $t0, -12($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -8($sp)
	sw $t0, -52($sp)
	lw $t0, -24($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 60
	jal _printf
	addi $sp, $sp, 60
	sw $v0, -28($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	b L16
L15:
	lw $t0, -44($sp)
	sw $t0, -52($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 56
	jal _printf
	addi $sp, $sp, 56
	sw $v0, -48($sp)
	lw $ra, ($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -4($sp)
L19:
	lw $t2, _SIZE
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L20
	b L18
L20:
	li $t2, 9
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L22
	b L23
L22:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	li $t0, 0
	sw $t0, -24($sp)
	li $t2, 4
	lw $t1, _i
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
	lw $t1, -20($sp)
	sw $t1, ($t0)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	b L21
L23:
	li $t2, 9
	lw $t1, _i
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	li $t0, 0
	sw $t0, -48($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -56($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t0, -56($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
L21:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -68($sp)
	li $t2, 1
	lw $t1, -68($sp)
	sub $t0, $t1, $t2
	sw $t0, -64($sp)
	b L19
L18:
	li $t2, 1
	lw $t1, _SIZE
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _printIntA
	addi $sp, $sp, 176
	sw $v0, -80($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -84($sp)
L25:
	lw $t2, _SIZE
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	bne $t0, $0, L26
	b L24
L26:
	li $t2, 2
	lw $t1, _SIZE
	div $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L28
	b L29
L28:
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	li $t1, 7
	sw $t1, ($t0)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	b L27
L29:
	li $t0, 0
	sw $t0, -124($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	li $t1, 3
	sw $t1, ($t0)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
L27:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -144($sp)
	li $t2, 1
	lw $t1, -144($sp)
	sub $t0, $t1, $t2
	sw $t0, -140($sp)
	b L25
L24:
	li $t2, 1
	lw $t1, _SIZE
	sub $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _printIntB
	addi $sp, $sp, 176
	sw $v0, -156($sp)
	lw $ra, ($sp)
	lw $t0, _SIZE
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _plus
	addi $sp, $sp, 176
	sw $v0, -164($sp)
	lw $ra, ($sp)
	lw $t0, -164($sp)
	sw $t0, _L
	lw $t0, _L
	sw $t0, -160($sp)
	lw $t0, _L
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _printBigInt
	addi $sp, $sp, 176
	sw $v0, -168($sp)
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


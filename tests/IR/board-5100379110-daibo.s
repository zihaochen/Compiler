.data
	_printf_cnt: .space 4
	_N: .space 4
	_i: .space 4
	_board: .space 4
	str_1: .space 16
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
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 4($t1)
	j _main
_printBoard:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -28($sp)
	la $t0, str_2
	sw $t0, -72($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L2:
	lw $t2, 8($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
L5:
	lw $t2, 8($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t0, -28($sp)
	sw $t0, -92($sp)
	lw $t0, -44($sp)
	sw $t0, -96($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 100
	jal _printf
	addi $sp, $sp, 100
	sw $v0, -56($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -64($sp)
	li $t2, 1
	lw $t1, -64($sp)
	sub $t0, $t1, $t2
	sw $t0, -60($sp)
	b L5
L4:
	lw $t0, -72($sp)
	sw $t0, -92($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 96
	jal _printf
	addi $sp, $sp, 96
	sw $v0, -76($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -84($sp)
	li $t2, 1
	lw $t1, -84($sp)
	sub $t0, $t1, $t2
	sw $t0, -80($sp)
	b L2
L1:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_inRect:
	sw $ra, ($sp)
	lw $t2, 16($sp)
	lw $t1, 24($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L11
	b L8
L11:
	lw $t2, 8($sp)
	lw $t1, 24($sp)
	slt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L10
	b L8
L10:
	lw $t2, 12($sp)
	lw $t1, 20($sp)
	sge $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L9
	b L8
L9:
	lw $t2, 4($sp)
	lw $t1, 20($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L7
	b L8
L7:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L8:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_fill:
	sw $ra, ($sp)
	li $t2, 0
	lw $t1, 32($sp)
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L13
	b L14
L13:
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, 36($sp)
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t2, 16($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, 12($sp)
	sw $t1, ($t0)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	b L12
L14:
	li $t2, 1
	lw $t1, 32($sp)
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t2, 4
	lw $t1, -68($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -64($sp)
	lw $t0, 4($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -88($sp)
	li $t2, 1
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -108($sp)
	li $t2, 1
	lw $t1, -108($sp)
	sub $t0, $t1, $t2
	sw $t0, -104($sp)
	li $t0, 0
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -116($sp)
L16:
	li $t2, 1
	lw $t1, -56($sp)
	sle $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L17
	b L15
L17:
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -124($sp)
L19:
	li $t2, 1
	lw $t1, -60($sp)
	sle $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L20
	b L18
L20:
	lw $t2, -32($sp)
	lw $t1, -56($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, 28($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -132($sp)
	lw $t2, -32($sp)
	lw $t1, -60($sp)
	mul $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, 24($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -144($sp)
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -32($sp)
	lw $t1, -160($sp)
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, 28($sp)
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -156($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -32($sp)
	lw $t1, -176($sp)
	mul $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, 24($sp)
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -172($sp)
	lw $t0, 20($sp)
	sw $t0, -260($sp)
	lw $t0, 16($sp)
	sw $t0, -264($sp)
	lw $t0, -40($sp)
	sw $t0, -268($sp)
	lw $t0, -44($sp)
	sw $t0, -272($sp)
	lw $t0, -48($sp)
	sw $t0, -276($sp)
	lw $t0, -52($sp)
	sw $t0, -280($sp)
	subu $sp, $sp, 284
	jal _inRect
	addi $sp, $sp, 284
	sw $v0, -188($sp)
	lw $ra, ($sp)
	lw $t0, -188($sp)
	bne $t0, $0, L22
	b L23
L22:
	li $t2, 1
	lw $t1, 32($sp)
	sub $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, 36($sp)
	sw $t0, -260($sp)
	lw $t0, -196($sp)
	sw $t0, -264($sp)
	lw $t0, -40($sp)
	sw $t0, -268($sp)
	lw $t0, -44($sp)
	sw $t0, -272($sp)
	lw $t0, 20($sp)
	sw $t0, -276($sp)
	lw $t0, 16($sp)
	sw $t0, -280($sp)
	lw $t0, 12($sp)
	sw $t0, -284($sp)
	lw $t0, 8($sp)
	sw $t0, -288($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	subu $sp, $sp, 296
	jal _fill
	addi $sp, $sp, 296
	sw $v0, -200($sp)
	lw $ra, ($sp)
	lw $t0, -200($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -192($sp)
	b L21
L23:
	li $t2, 1
	lw $t1, 32($sp)
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -32($sp)
	lw $t1, 28($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	li $t2, 1
	lw $t1, -212($sp)
	sub $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -56($sp)
	lw $t1, -216($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -32($sp)
	lw $t1, 24($sp)
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	li $t2, 1
	lw $t1, -224($sp)
	sub $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t2, -60($sp)
	lw $t1, -228($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t0, 36($sp)
	sw $t0, -260($sp)
	lw $t0, -208($sp)
	sw $t0, -264($sp)
	lw $t0, -40($sp)
	sw $t0, -268($sp)
	lw $t0, -44($sp)
	sw $t0, -272($sp)
	lw $t0, -220($sp)
	sw $t0, -276($sp)
	lw $t0, -232($sp)
	sw $t0, -280($sp)
	lw $t0, -36($sp)
	sw $t0, -284($sp)
	lw $t0, 8($sp)
	sw $t0, -288($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	subu $sp, $sp, 296
	jal _fill
	addi $sp, $sp, 296
	sw $v0, -236($sp)
	lw $ra, ($sp)
	lw $t0, -236($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -204($sp)
L21:
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -244($sp)
	li $t2, 1
	lw $t1, -244($sp)
	sub $t0, $t1, $t2
	sw $t0, -240($sp)
	b L19
L18:
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -252($sp)
	b L16
L15:
L12:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	subu $sp, $sp, 296
	jal _getchar
	addi $sp, $sp, 296
	sw $v0, -12($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, _N
	lw $t0, _N
	sw $t0, -8($sp)
	li $t2, 1
	lw $t1, _N
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -240($sp)
	subu $sp, $sp, 244
	jal _malloc
	addi $sp, $sp, 244
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -32($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -20($sp)
	li $t2, 0
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -48($sp)
L25:
	lw $t2, _N
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L26
	b L24
L26:
	li $t2, 1
	lw $t1, _i
	sub $t0, $t1, $t2
	sw $t0, -60($sp)
	li $t2, 4
	lw $t1, -60($sp)
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	li $t2, 2
	lw $t1, -64($sp)
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, _i
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, -76($sp)
	sw $t1, ($t0)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -92($sp)
	li $t2, 1
	lw $t1, -92($sp)
	sub $t0, $t1, $t2
	sw $t0, -88($sp)
	b L25
L24:
	li $t2, 4
	lw $t1, _N
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
	li $t2, 4
	lw $t1, -104($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -240($sp)
	subu $sp, $sp, 244
	jal _malloc
	addi $sp, $sp, 244
	sw $v0, -120($sp)
	lw $ra, ($sp)
	lw $t0, -120($sp)
	sw $t0, _board
	lw $t0, _board
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -124($sp)
L28:
	li $t2, 4
	lw $t1, _N
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	bne $t0, $0, L29
	b L27
L29:
	li $t2, 4
	lw $t1, _N
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	li $t2, 4
	lw $t1, -148($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, -240($sp)
	subu $sp, $sp, 244
	jal _malloc
	addi $sp, $sp, 244
	sw $v0, -164($sp)
	lw $ra, ($sp)
	lw $t2, _i
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, _board
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	lw $t1, -164($sp)
	sw $t1, ($t0)
	lw $t0, -168($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -180($sp)
	li $t2, 1
	lw $t1, -180($sp)
	sub $t0, $t1, $t2
	sw $t0, -176($sp)
	b L28
L27:
	li $t2, 4
	lw $t1, _N
	mul $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	lw $t1, ($t0)
	sw $t1, -188($sp)
	li $t2, 1
	lw $t1, -188($sp)
	sub $t0, $t1, $t2
	sw $t0, -200($sp)
	li $t2, 4
	lw $t1, _N
	mul $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	li $t2, 1
	lw $t1, -204($sp)
	sub $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, _board
	sw $t0, -240($sp)
	lw $t0, _N
	sw $t0, -244($sp)
	li $t0, 0
	sw $t0, -248($sp)
	li $t0, 0
	sw $t0, -252($sp)
	lw $t0, -200($sp)
	sw $t0, -256($sp)
	lw $t0, -216($sp)
	sw $t0, -260($sp)
	li $t0, 0
	sw $t0, -264($sp)
	lw $t0, -4($sp)
	sw $t0, -268($sp)
	li $t0, 1
	sw $t0, -272($sp)
	subu $sp, $sp, 276
	jal _fill
	addi $sp, $sp, 276
	sw $v0, -220($sp)
	lw $ra, ($sp)
	li $t2, 4
	lw $t1, _N
	mul $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	lw $t0, -224($sp)
	sw $t0, -240($sp)
	lw $t0, _board
	sw $t0, -244($sp)
	subu $sp, $sp, 248
	jal _printBoard
	addi $sp, $sp, 248
	sw $v0, -236($sp)
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


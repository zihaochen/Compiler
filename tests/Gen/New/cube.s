.data
	_printf_cnt: .space 4
	_perm: .space 4
	_n: .space 4
	_a: .space 4
	ASU_1: .space 76
	ASU_2: .space 26668
	ASU_3: .space 28
	ASU_4: .space 28
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _perm
	la $t0, ASU_2
	sw $t0, _a
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t1, _perm
	li $t2, 5
	sw $t2, 0($t1)
	lw $t1, _perm
	li $t2, 4
	sw $t2, 4($t1)
	lw $t1, _perm
	li $t2, 2
	sw $t2, 8($t1)
	lw $t1, _perm
	li $t2, 3
	sw $t2, 12($t1)
	lw $t1, _perm
	li $t2, 0
	sw $t2, 16($t1)
	lw $t1, _perm
	li $t2, 1
	sw $t2, 20($t1)
	lw $t1, _perm
	li $t2, 3
	sw $t2, 24($t1)
	lw $t1, _perm
	li $t2, 2
	sw $t2, 28($t1)
	lw $t1, _perm
	li $t2, 0
	sw $t2, 32($t1)
	lw $t1, _perm
	li $t2, 1
	sw $t2, 36($t1)
	lw $t1, _perm
	li $t2, 4
	sw $t2, 40($t1)
	lw $t1, _perm
	li $t2, 5
	sw $t2, 44($t1)
	lw $t1, _perm
	li $t2, 0
	sw $t2, 48($t1)
	lw $t1, _perm
	li $t2, 1
	sw $t2, 52($t1)
	lw $t1, _perm
	li $t2, 4
	sw $t2, 56($t1)
	lw $t1, _perm
	li $t2, 5
	sw $t2, 60($t1)
	lw $t1, _perm
	li $t2, 3
	sw $t2, 64($t1)
	lw $t1, _perm
	li $t2, 2
	sw $t2, 68($t1)
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
_transform:
	sw $ra, ($sp)
	la $t0, ASU_3
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -16($sp)
L2:
	li $t2, 6
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
	lw $t1, 8($sp)
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
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -60($sp)
	b L2
L1:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -68($sp)
L5:
	li $t2, 6
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -80($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	li $t0, 0
	sw $t0, -96($sp)
	li $t2, 24
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, _perm
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	li $t0, 0
	sw $t0, -116($sp)
	li $t2, 4
	lw $t1, -112($sp)
	mul $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, -116($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	lw $t1, -92($sp)
	sw $t1, ($t0)
	lw $t0, -124($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t0, -124($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -132($sp)
	b L5
L4:
	jr $ra
_getInt:
	sw $ra, ($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -12($sp)
L8:
	li $t2, 48
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L9
	b L10
L10:
	li $t2, 57
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L9
	b L7
L9:
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	b L8
L7:
L12:
	li $t2, 48
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L14
	b L11
L14:
	li $t2, 57
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L13
	b L11
L13:
	li $t2, 10
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -4($sp)
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	li $t2, 48
	lw $t1, -48($sp)
	sub $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -40($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t0, -60($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -56($sp)
	b L12
L11:
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, ASU_4
	sw $t0, -28($sp)
	la $t0, str_1
	sw $t0, -372($sp)
	subu $sp, $sp, 4
	jal _getInt
	addi $sp, $sp, 4
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $t0, -44($sp)
	sw $t0, _n
	lw $t0, _n
	sw $t0, -40($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
L16:
	lw $t2, _n
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L17
	b L15
L17:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -56($sp)
L19:
	li $t2, 6
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L20
	b L18
L20:
	subu $sp, $sp, 4
	jal _getInt
	addi $sp, $sp, 4
	sw $v0, -68($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -72($sp)
	li $t2, 24
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, -68($sp)
	sw $t1, ($t0)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -92($sp)
	b L19
L18:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -100($sp)
	b L16
L15:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -108($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -112($sp)
L22:
	lw $t2, _n
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L23
	b L21
L23:
	li $t0, 0
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -120($sp)
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -124($sp)
L25:
	li $t2, 4
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L26
	b L24
L26:
	li $t0, 0
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -132($sp)
L28:
	li $t2, 4
	lw $t1, -20($sp)
	slt $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	bne $t0, $0, L29
	b L27
L29:
	li $t0, 0
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -140($sp)
L31:
	li $t2, 4
	lw $t1, -24($sp)
	slt $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	bne $t0, $0, L32
	b L30
L32:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -148($sp)
L34:
	li $t2, 6
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	bne $t0, $0, L35
	b L33
L35:
	li $t0, 0
	sw $t0, -160($sp)
	li $t2, 24
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, -160($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -160($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	lw $t1, ($t0)
	sw $t1, -176($sp)
	li $t0, 0
	sw $t0, -180($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t2, -184($sp)
	lw $t1, -180($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	lw $t1, -176($sp)
	sw $t1, ($t0)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -196($sp)
	b L34
L33:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -204($sp)
L37:
	lw $t2, -16($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	bne $t0, $0, L38
	b L36
L38:
	lw $t0, -28($sp)
	sw $t0, -380($sp)
	li $t0, 0
	sw $t0, -384($sp)
	subu $sp, $sp, 388
	jal _transform
	addi $sp, $sp, 388
	sw $v0, -212($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -216($sp)
	b L37
L36:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -224($sp)
L40:
	lw $t2, -20($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	bne $t0, $0, L41
	b L39
L41:
	lw $t0, -28($sp)
	sw $t0, -380($sp)
	li $t0, 1
	sw $t0, -384($sp)
	subu $sp, $sp, 388
	jal _transform
	addi $sp, $sp, 388
	sw $v0, -232($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t0, -240($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -236($sp)
	b L40
L39:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -244($sp)
L43:
	lw $t2, -24($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	bne $t0, $0, L44
	b L42
L44:
	lw $t0, -28($sp)
	sw $t0, -380($sp)
	li $t0, 2
	sw $t0, -384($sp)
	subu $sp, $sp, 388
	jal _transform
	addi $sp, $sp, 388
	sw $v0, -252($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -256($sp)
	b L43
L42:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -264($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -268($sp)
L46:
	li $t2, 6
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t0, -272($sp)
	bne $t0, $0, L47
	b L45
L47:
	li $t0, 0
	sw $t0, -276($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, -276($sp)
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t2, -276($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	lw $t1, ($t0)
	sw $t1, -288($sp)
	li $t0, 0
	sw $t0, -292($sp)
	li $t2, 24
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t2, -296($sp)
	lw $t1, -292($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t2, -300($sp)
	lw $t1, -292($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t0, -304($sp)
	lw $t1, ($t0)
	sw $t1, -308($sp)
	lw $t2, -308($sp)
	lw $t1, -288($sp)
	sne $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	bne $t0, $0, L49
	b L48
L49:
	li $t0, 0
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -316($sp)
	b L45
L48:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t0, -324($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -320($sp)
	b L46
L45:
	lw $t0, -32($sp)
	bne $t0, $0, L51
	b L50
L51:
	li $t0, 1
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -328($sp)
L50:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t0, -336($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -332($sp)
	b L31
L30:
	li $t2, 1
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t0, -344($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -340($sp)
	b L28
L27:
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t0, -352($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -348($sp)
	b L25
L24:
	lw $t2, -36($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t0, -360($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -356($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t0, -368($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -364($sp)
	b L22
L21:
	lw $t0, -372($sp)
	sw $t0, -380($sp)
	lw $t0, -12($sp)
	sw $t0, -384($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 388
	jal _printf
	addi $sp, $sp, 388
	sw $v0, -376($sp)
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


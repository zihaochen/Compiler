.data
	_printf_cnt: .space 4
	_N: .space 4
	_M: .space 4
	_i: .space 4
	_j: .space 4
	_primeCount: .space 4
	_resultCount: .space 4
	_bool: .space 4
	_prime: .space 4
	_gps: .space 4
	_tmp: .space 4
	_result: .space 4
	ASU_1: .space 4008
	ASU_2: .space 684
	ASU_3: .space 4008
	ASU_4: .space 8
	ASU_5: .space 115604
	str_1: .space 12
	str_2: .space 12
	str_3: .space 8
	str_4: .space 8
	str_5: .space 44
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _bool
	la $t0, ASU_2
	sw $t0, _prime
	la $t0, ASU_3
	sw $t0, _gps
	la $t0, ASU_4
	sw $t0, _tmp
	la $t0, ASU_5
	sw $t0, _result
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 115
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 84
	la $t1, str_5
	sw $t0, 0($t1)
	li $t0, 111
	la $t1, str_5
	sw $t0, 4($t1)
	li $t0, 116
	la $t1, str_5
	sw $t0, 8($t1)
	li $t0, 97
	la $t1, str_5
	sw $t0, 12($t1)
	li $t0, 108
	la $t1, str_5
	sw $t0, 16($t1)
	li $t0, 58
	la $t1, str_5
	sw $t0, 20($t1)
	li $t0, 32
	la $t1, str_5
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_5
	sw $t0, 28($t1)
	li $t0, 100
	la $t1, str_5
	sw $t0, 32($t1)
	li $t0, 10
	la $t1, str_5
	sw $t0, 36($t1)
	j _main
_xprint:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -8($sp)
	li $t2, 1
	li $t1, 0
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L1
L2:
	lw $t0, -8($sp)
	sw $t0, -16($sp)
	lw $t0, 4($sp)
	sw $t0, -20($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 24
	jal _printf
	addi $sp, $sp, 24
	sw $v0, -12($sp)
	lw $ra, ($sp)
L1:
	jr $ra
_xprinti:
	sw $ra, ($sp)
	la $t0, str_2
	sw $t0, -8($sp)
	li $t2, 1
	li $t1, 0
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L4
	b L3
L4:
	lw $t0, -8($sp)
	sw $t0, -16($sp)
	lw $t0, 4($sp)
	sw $t0, -20($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 24
	jal _printf
	addi $sp, $sp, 24
	sw $v0, -12($sp)
	lw $ra, ($sp)
L3:
	jr $ra
_getPrime:
	sw $ra, ($sp)
	li $t0, 2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
	li $t0, 2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -16($sp)
L6:
	lw $t2, 20($sp)
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L7
	b L5
L7:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	li $t2, 1
	lw $t1, -24($sp)
	seq $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L9
	b L8
L9:
	li $t2, 4
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	li $t2, 1
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t2, 0
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, -56($sp)
	sw $t1, ($t0)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	li $t2, 4
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t2, -72($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, -8($sp)
	sw $t1, ($t0)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	li $t2, 4
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t2, -8($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	lw $t1, -96($sp)
	sw $t1, ($t0)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
L8:
L11:
	lw $t2, -4($sp)
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, 20($sp)
	lw $t1, -116($sp)
	sle $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L12
	b L10
L12:
	lw $t2, -4($sp)
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -140($sp)
	b L11
L10:
	li $t0, 2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -148($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -152($sp)
	b L6
L5:
	jr $ra
_getResult:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	li $t2, 680
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -4($sp)
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t2, -4($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t2, -1
	lw $t1, -20($sp)
	seq $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L14
	b L13
L14:
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	li $t2, 2
	lw $t1, -28($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t2, 4
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, 28($sp)
	lw $t1, -56($sp)
	sle $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L16
	b L15
L16:
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	li $t2, 2
	lw $t1, -64($sp)
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	li $t2, 4
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	sub $t0, $t1, $t2
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, -92($sp)
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L18
	b L17
L18:
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	li $t2, 2
	lw $t1, -112($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	li $t2, 4
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -124($sp)
	sub $t0, $t1, $t2
	sw $t0, -140($sp)
	li $t2, 4
	lw $t1, -140($sp)
	mul $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	lw $t0, 28($sp)
	sw $t0, -252($sp)
	lw $t0, 20($sp)
	sw $t0, -256($sp)
	lw $t0, -144($sp)
	sw $t0, -260($sp)
	lw $t0, 16($sp)
	sw $t0, -264($sp)
	lw $t0, 12($sp)
	sw $t0, -268($sp)
	lw $t0, 8($sp)
	sw $t0, -272($sp)
	lw $t0, 4($sp)
	sw $t0, -276($sp)
	subu $sp, $sp, 280
	jal _getResult
	addi $sp, $sp, 280
	sw $v0, -156($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	li $t0, 0
	sw $t0, -164($sp)
	li $t2, 680
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -164($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, -164($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	lw $t1, -160($sp)
	sw $t1, ($t0)
	lw $t0, -176($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -176($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
L17:
L15:
L13:
	li $t0, 0
	sw $t0, -184($sp)
	li $t2, 680
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, -184($sp)
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -184($sp)
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t2, -184($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -200($sp)
	li $t2, -1
	lw $t1, -200($sp)
	seq $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t0, -204($sp)
	bne $t0, $0, L20
	b L19
L20:
	li $t0, 0
	sw $t0, -212($sp)
	li $t2, 680
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, -212($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, -212($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -224($sp)
	lw $t1, ($t0)
	sw $t1, -208($sp)
	lw $t0, -224($sp)
	lw $t1, ($t0)
	sw $t1, -208($sp)
L19:
	li $t0, 0
	sw $t0, -232($sp)
	li $t2, 680
	lw $t1, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t2, -236($sp)
	lw $t1, -232($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	li $t2, 4
	lw $t1, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, -232($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t0, -244($sp)
	lw $t1, ($t0)
	sw $t1, -248($sp)
	lw $v0, -248($sp)
	sw $v0, -248($sp)
	jr $ra
	jr $ra
_printF:
	sw $ra, ($sp)
	la $t0, str_3
	sw $t0, -12($sp)
	la $t0, str_4
	sw $t0, -56($sp)
	lw $t0, 12($sp)
	sw $t0, -64($sp)
	subu $sp, $sp, 68
	jal _xprinti
	addi $sp, $sp, 68
	sw $v0, -4($sp)
	lw $ra, ($sp)
L22:
	li $t2, 0
	lw $t1, 4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L23
	b L21
L23:
	lw $t0, -12($sp)
	sw $t0, -64($sp)
	subu $sp, $sp, 68
	jal _xprint
	addi $sp, $sp, 68
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	sw $t0, -64($sp)
	subu $sp, $sp, 68
	jal _xprinti
	addi $sp, $sp, 68
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, 12($sp)
	lw $t1, -28($sp)
	sub $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, 8($sp)
	lw $t0, 8($sp)
	sw $t0, -24($sp)
	lw $t2, 8($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t2, 2
	lw $t1, -40($sp)
	div $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, 12($sp)
	lw $t0, 12($sp)
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -48($sp)
	b L22
L21:
	lw $t0, -56($sp)
	sw $t0, -64($sp)
	subu $sp, $sp, 68
	jal _xprint
	addi $sp, $sp, 68
	sw $v0, -60($sp)
	lw $ra, ($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_5
	sw $t0, -372($sp)
	li $t0, 20
	sw $t0, _N
	lw $t0, _N
	sw $t0, -4($sp)
	li $t0, 78
	sw $t0, _M
	lw $t0, _M
	sw $t0, -8($sp)
	li $t0, 0
	sw $t0, _primeCount
	lw $t0, _primeCount
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, _resultCount
	lw $t0, _resultCount
	sw $t0, -16($sp)
	lw $t0, _tmp
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, _tmp
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, _tmp
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -28($sp)
L25:
	li $t2, 1
	lw $t1, _N
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L26
	b L24
L26:
	li $t0, 0
	sw $t0, -44($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, _bool
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, _gps
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -80($sp)
	b L25
L24:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -88($sp)
L28:
	li $t2, 1
	lw $t1, _M
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L29
	b L27
L29:
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
	lw $t1, _prime
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -120($sp)
	b L28
L27:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -128($sp)
L31:
	lw $t2, _M
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	bne $t0, $0, L32
	b L30
L32:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -136($sp)
L34:
	lw $t2, _M
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	bne $t0, $0, L35
	b L33
L35:
	li $t0, 0
	sw $t0, -148($sp)
	li $t2, 680
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -148($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -148($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, _result
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -168($sp)
	b L34
L33:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -176($sp)
	b L31
L30:
	lw $t0, _N
	sw $t0, -380($sp)
	lw $t0, _tmp
	sw $t0, -384($sp)
	lw $t0, _bool
	sw $t0, -388($sp)
	lw $t0, _gps
	sw $t0, -392($sp)
	lw $t0, _prime
	sw $t0, -396($sp)
	subu $sp, $sp, 400
	jal _getPrime
	addi $sp, $sp, 400
	sw $v0, -184($sp)
	lw $ra, ($sp)
	lw $t0, _tmp
	lw $t1, ($t0)
	sw $t1, -192($sp)
	lw $t0, -192($sp)
	sw $t0, _primeCount
	lw $t0, _primeCount
	sw $t0, -188($sp)
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -196($sp)
L37:
	lw $t2, _primeCount
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	bne $t0, $0, L38
	b L36
L38:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -204($sp)
L40:
	lw $t2, _primeCount
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	bne $t0, $0, L41
	b L39
L41:
	li $t0, 0
	sw $t0, -216($sp)
	li $t2, 680
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, -216($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, -224($sp)
	lw $t1, -216($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, _result
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	lw $t1, ($t0)
	sw $t1, -232($sp)
	li $t2, -1
	lw $t1, -232($sp)
	seq $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	bne $t0, $0, L43
	b L42
L43:
	lw $t0, _N
	sw $t0, -380($sp)
	lw $t0, _i
	sw $t0, -384($sp)
	lw $t0, _j
	sw $t0, -388($sp)
	lw $t0, _bool
	sw $t0, -392($sp)
	lw $t0, _gps
	sw $t0, -396($sp)
	lw $t0, _prime
	sw $t0, -400($sp)
	lw $t0, _result
	sw $t0, -404($sp)
	subu $sp, $sp, 408
	jal _getResult
	addi $sp, $sp, 408
	sw $v0, -244($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -248($sp)
	li $t2, 680
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t2, -252($sp)
	lw $t1, -248($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, -248($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, _result
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	lw $t1, -244($sp)
	sw $t1, ($t0)
	lw $t0, -260($sp)
	lw $t1, ($t0)
	sw $t1, -240($sp)
	lw $t0, -260($sp)
	lw $t1, ($t0)
	sw $t1, -240($sp)
	li $t0, 0
	sw $t0, -268($sp)
	li $t2, 680
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t2, -276($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, -268($sp)
	lw $t1, _result
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t0, -280($sp)
	lw $t1, ($t0)
	sw $t1, -284($sp)
	li $t2, 1
	lw $t1, -284($sp)
	sgt $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t0, -288($sp)
	bne $t0, $0, L45
	b L44
L45:
	li $t0, 0
	sw $t0, -292($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t2, -296($sp)
	lw $t1, -292($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, _prime
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t0, -300($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	li $t0, 0
	sw $t0, -308($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t2, -312($sp)
	lw $t1, -308($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, _prime
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	lw $t1, ($t0)
	sw $t1, -320($sp)
	li $t0, 0
	sw $t0, -324($sp)
	li $t2, 680
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t2, -328($sp)
	lw $t1, -324($sp)
	add $t0, $t1, $t2
	sw $t0, -324($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t2, -332($sp)
	lw $t1, -324($sp)
	add $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, _result
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t0, -336($sp)
	lw $t1, ($t0)
	sw $t1, -340($sp)
	lw $t0, -304($sp)
	sw $t0, -380($sp)
	lw $t0, -320($sp)
	sw $t0, -384($sp)
	lw $t0, -340($sp)
	sw $t0, -388($sp)
	subu $sp, $sp, 392
	jal _printF
	addi $sp, $sp, 392
	sw $v0, -344($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _resultCount
	add $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t0, -352($sp)
	sw $t0, _resultCount
	lw $t0, _resultCount
	sw $t0, -348($sp)
L44:
L42:
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t0, -360($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -356($sp)
	b L40
L39:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t0, -368($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -364($sp)
	b L37
L36:
	lw $t0, -372($sp)
	sw $t0, -380($sp)
	lw $t0, _resultCount
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


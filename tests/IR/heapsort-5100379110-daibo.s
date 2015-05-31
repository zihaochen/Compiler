.data
	_printf_cnt: .space 4
	_n: .space 4
	_a: .space 4
	ASU_1: .space 40004
	str_1: .space 72
	str_2: .space 32
	str_3: .space 32
	str_4: .space 16
	str_5: .space 8
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
	li $t0, 105
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 110
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 116
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 101
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 97
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 112
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 83
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 111
	la $t1, str_1
	sw $t0, 36($t1)
	li $t0, 114
	la $t1, str_1
	sw $t0, 40($t1)
	li $t0, 116
	la $t1, str_1
	sw $t0, 44($t1)
	li $t0, 58
	la $t1, str_1
	sw $t0, 48($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 52($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 56($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 60($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 64($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 101
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 98
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 117
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 103
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 49
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 101
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 98
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 117
	la $t1, str_3
	sw $t0, 12($t1)
	li $t0, 103
	la $t1, str_3
	sw $t0, 16($t1)
	li $t0, 50
	la $t1, str_3
	sw $t0, 20($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_4
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_4
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_5
	sw $t0, 0($t1)
	j _main
_exchange:
	sw $ra, ($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t0, -36($sp)
	lw $t1, -32($sp)
	sw $t1, ($t0)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -52($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	jr $ra
_makeHeap:
	sw $ra, ($sp)
	li $t2, 1
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -20($sp)
	li $t2, 2
	lw $t1, -20($sp)
	div $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -28($sp)
L2:
	li $t2, 0
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -40($sp)
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	li $t2, 1
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, _n
	lw $t1, -52($sp)
	slt $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	li $t0, 0
	sw $t0, -68($sp)
	li $t2, 4
	lw $t1, -64($sp)
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, -84($sp)
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -80($sp)
	slt $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L5
	b L4
L5:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	li $t2, 1
	lw $t1, -112($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -108($sp)
L4:
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 4
	lw $t1, -12($sp)
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
	lw $t2, -148($sp)
	lw $t1, -132($sp)
	sgt $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	bne $t0, $0, L8
	b L7
L8:
	lw $t0, -4($sp)
	sw $t0, -168($sp)
	lw $t0, -12($sp)
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _exchange
	addi $sp, $sp, 176
	sw $v0, -156($sp)
	lw $ra, ($sp)
L7:
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -160($sp)
	b L2
L1:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_adjustHeap:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -16($sp)
L10:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, 4($sp)
	lw $t1, -28($sp)
	slt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L11
	b L9
L11:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -36($sp)
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	li $t2, 1
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, 4($sp)
	lw $t1, -48($sp)
	slt $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L14
	b L12
L14:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, -60($sp)
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
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
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -76($sp)
	slt $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L13
	b L12
L13:
	li $t2, 2
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	li $t2, 1
	lw $t1, -108($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -104($sp)
L12:
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
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	lw $t2, -144($sp)
	lw $t1, -128($sp)
	sgt $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L16
	b L17
L16:
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
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
	lw $t1, ($t0)
	sw $t1, -184($sp)
	lw $t2, -184($sp)
	lw $t1, -168($sp)
	xor $t0, $t1, $t2
	sw $t0, -188($sp)
	li $t0, 0
	sw $t0, -192($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -192($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	lw $t1, -188($sp)
	sw $t1, ($t0)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	li $t0, 0
	sw $t0, -212($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, -212($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	li $t0, 0
	sw $t0, -228($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, -228($sp)
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t2, -228($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	lw $t1, ($t0)
	sw $t1, -240($sp)
	lw $t2, -240($sp)
	lw $t1, -224($sp)
	xor $t0, $t1, $t2
	sw $t0, -244($sp)
	li $t0, 0
	sw $t0, -248($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t2, -252($sp)
	lw $t1, -248($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	lw $t1, -244($sp)
	sw $t1, ($t0)
	lw $t0, -256($sp)
	lw $t1, ($t0)
	sw $t1, -208($sp)
	lw $t0, -256($sp)
	lw $t1, ($t0)
	sw $t1, -208($sp)
	li $t0, 0
	sw $t0, -268($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, -268($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -280($sp)
	li $t0, 0
	sw $t0, -284($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, -284($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t2, -284($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t0, -292($sp)
	lw $t1, ($t0)
	sw $t1, -296($sp)
	lw $t2, -296($sp)
	lw $t1, -280($sp)
	xor $t0, $t1, $t2
	sw $t0, -300($sp)
	li $t0, 0
	sw $t0, -304($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, -304($sp)
	add $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t2, -304($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	lw $t1, -300($sp)
	sw $t1, ($t0)
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -320($sp)
	b L15
L17:
	b L9
L15:
	b L10
L9:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_heapSort:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -104($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -16($sp)
L19:
	lw $t2, _n
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L20
	b L18
L20:
	lw $t0, _a
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	lw $t2, -8($sp)
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, -36($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t0, 0
	sw $t0, -44($sp)
	li $t2, 4
	lw $t1, -40($sp)
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
	lw $t0, _a
	lw $t1, -56($sp)
	sw $t1, ($t0)
	lw $t0, _a
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t0, _a
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t2, -8($sp)
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t2, 1
	lw $t1, -68($sp)
	sub $t0, $t1, $t2
	sw $t0, -72($sp)
	li $t0, 0
	sw $t0, -76($sp)
	li $t2, 4
	lw $t1, -72($sp)
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
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t2, -8($sp)
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -92($sp)
	li $t2, 1
	lw $t1, -92($sp)
	sub $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	sw $t0, -120($sp)
	subu $sp, $sp, 124
	jal _adjustHeap
	addi $sp, $sp, 124
	sw $v0, -100($sp)
	lw $ra, ($sp)
	lw $t0, -104($sp)
	sw $t0, -120($sp)
	lw $t0, -8($sp)
	sw $t0, -124($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 128
	jal _printf
	addi $sp, $sp, 128
	sw $v0, -108($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -112($sp)
	b L19
L18:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_2
	sw $t0, -48($sp)
	la $t0, str_3
	sw $t0, -60($sp)
	la $t0, str_4
	sw $t0, -76($sp)
	la $t0, str_5
	sw $t0, -108($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L22:
	lw $t2, _n
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L23
	b L21
L23:
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
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, -4($sp)
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
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -36($sp)
	b L22
L21:
	subu $sp, $sp, 128
	jal _makeHeap
	addi $sp, $sp, 128
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $t0, -48($sp)
	sw $t0, -116($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -52($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 120
	jal _heapSort
	addi $sp, $sp, 120
	sw $v0, -56($sp)
	lw $ra, ($sp)
	lw $t0, -60($sp)
	sw $t0, -116($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -64($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -68($sp)
L25:
	lw $t2, _n
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L26
	b L24
L26:
	li $t0, 0
	sw $t0, -80($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t0, -76($sp)
	sw $t0, -116($sp)
	lw $t0, -92($sp)
	sw $t0, -120($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 124
	jal _printf
	addi $sp, $sp, 124
	sw $v0, -96($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -100($sp)
	b L25
L24:
	lw $t0, -108($sp)
	sw $t0, -116($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 120
	jal _printf
	addi $sp, $sp, 120
	sw $v0, -112($sp)
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


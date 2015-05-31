.data
	_printf_cnt: .space 4
	_n: .space 4
	_m: .space 4
	_a: .space 4
	_p: .space 4
	_data: .space 4
	_data2: .space 4
	ASU_1: .space 224
	ASU_2: .space 444
	ASU_3: .space 204
	ASU_4: .space 604
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	la $t0, ASU_2
	sw $t0, _p
	la $t0, ASU_3
	sw $t0, _data
	la $t0, ASU_4
	sw $t0, _data2
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t1, _data
	li $t2, 1
	sw $t2, 0($t1)
	lw $t1, _data
	li $t2, 2
	sw $t2, 4($t1)
	lw $t1, _data
	li $t2, 1
	sw $t2, 8($t1)
	lw $t1, _data
	li $t2, 2
	sw $t2, 12($t1)
	lw $t1, _data
	li $t2, 1
	sw $t2, 16($t1)
	lw $t1, _data
	li $t2, 2
	sw $t2, 20($t1)
	lw $t1, _data
	li $t2, 1
	sw $t2, 24($t1)
	lw $t1, _data
	li $t2, 2
	sw $t2, 28($t1)
	lw $t1, _data
	li $t2, 1
	sw $t2, 32($t1)
	lw $t1, _data
	li $t2, 2
	sw $t2, 36($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 0($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 4($t1)
	lw $t1, _data2
	li $t2, 2
	sw $t2, 12($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 16($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 20($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 24($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 28($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 36($t1)
	lw $t1, _data2
	li $t2, 2
	sw $t2, 40($t1)
	lw $t1, _data2
	li $t2, 2
	sw $t2, 48($t1)
	lw $t1, _data2
	li $t2, 5
	sw $t2, 52($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 56($t1)
	lw $t1, _data2
	li $t2, 2
	sw $t2, 60($t1)
	lw $t1, _data2
	li $t2, 7
	sw $t2, 64($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 68($t1)
	lw $t1, _data2
	li $t2, 2
	sw $t2, 72($t1)
	lw $t1, _data2
	li $t2, 8
	sw $t2, 76($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 80($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 84($t1)
	lw $t1, _data2
	li $t2, 3
	sw $t2, 88($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 96($t1)
	lw $t1, _data2
	li $t2, 4
	sw $t2, 100($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 108($t1)
	lw $t1, _data2
	li $t2, 5
	sw $t2, 112($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 120($t1)
	lw $t1, _data2
	li $t2, 6
	sw $t2, 124($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 132($t1)
	lw $t1, _data2
	li $t2, 7
	sw $t2, 136($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 144($t1)
	lw $t1, _data2
	li $t2, 8
	sw $t2, 148($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 156($t1)
	lw $t1, _data2
	li $t2, 9
	sw $t2, 160($t1)
	lw $t1, _data2
	li $t2, 1
	sw $t2, 168($t1)
	lw $t1, _data2
	li $t2, 10
	sw $t2, 172($t1)
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
_min:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L1
L2:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
L1:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_newNode:
	sw $ra, ($sp)
	li $t0, 20
	sw $t0, -76($sp)
	subu $sp, $sp, 80
	jal _malloc_struct
	addi $sp, $sp, 80
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	li $t2, 0
	sw $t2, 8($t1)
	lw $t1, -36($sp)
	lw $t0, 8($t1)
	sw $t0, -32($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t1, -40($sp)
	lw $t2, -32($sp)
	sw $t2, 4($t1)
	lw $t1, -40($sp)
	lw $t0, 4($t1)
	sw $t0, -28($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t1, -44($sp)
	lw $t0, 0($t1)
	sw $t0, -48($sp)
	lw $t1, -48($sp)
	lw $t2, -28($sp)
	sw $t2, 4($t1)
	lw $t1, -48($sp)
	lw $t0, 4($t1)
	sw $t0, -24($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t1, -56($sp)
	lw $t0, 0($t1)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, -24($sp)
	sw $t1, ($t0)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t1, -72($sp)
	li $t2, 1
	sw $t2, 12($t1)
	lw $t1, -72($sp)
	lw $t0, 12($t1)
	sw $t0, -68($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_f:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t1, -4($sp)
	lw $t0, 4($t1)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t1, -12($sp)
	lw $t0, 0($t1)
	sw $t0, -16($sp)
	lw $t1, -16($sp)
	lw $t0, 4($t1)
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $v0, -24($sp)
	sw $v0, -24($sp)
	jr $ra
	jr $ra
_push_up:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	li $t2, 1
	sw $t2, 12($t1)
	lw $t1, -8($sp)
	lw $t0, 12($t1)
	sw $t0, -4($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t1, -12($sp)
	lw $t0, 0($t1)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L4
	b L3
L4:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t1, -28($sp)
	lw $t0, 12($t1)
	sw $t0, -32($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t0, 0($t1)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t1, -48($sp)
	lw $t0, 12($t1)
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t1, -60($sp)
	lw $t2, -56($sp)
	sw $t2, 12($t1)
	lw $t1, -60($sp)
	lw $t0, 12($t1)
	sw $t0, -24($sp)
L3:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t1, -64($sp)
	lw $t0, 0($t1)
	sw $t0, -68($sp)
	lw $t1, -68($sp)
	lw $t0, 4($t1)
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L6
	b L5
L6:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t1, -80($sp)
	lw $t0, 12($t1)
	sw $t0, -84($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t1, -88($sp)
	lw $t0, 0($t1)
	sw $t0, -92($sp)
	lw $t1, -92($sp)
	lw $t0, 4($t1)
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t1, -100($sp)
	lw $t0, 12($t1)
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	lw $t1, -112($sp)
	lw $t2, -108($sp)
	sw $t2, 12($t1)
	lw $t1, -112($sp)
	lw $t0, 12($t1)
	sw $t0, -76($sp)
L5:
	jr $ra
_rotate:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 4($t1)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t0, 4($sp)
	sw $t0, -268($sp)
	subu $sp, $sp, 272
	jal _f
	addi $sp, $sp, 272
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t0, -20($sp)
	sw $t0, -16($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t1, -28($sp)
	lw $t0, 4($t1)
	sw $t0, -32($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t2, -32($sp)
	sw $t2, 4($t1)
	lw $t1, -36($sp)
	lw $t0, 4($t1)
	sw $t0, -24($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t1, -40($sp)
	lw $t0, 4($t1)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	bne $t0, $0, L8
	b L7
L8:
	lw $t0, -4($sp)
	sw $t0, -268($sp)
	subu $sp, $sp, 272
	jal _f
	addi $sp, $sp, 272
	sw $v0, -52($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t1, -56($sp)
	lw $t0, 4($t1)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t1, -64($sp)
	lw $t0, 0($t1)
	sw $t0, -68($sp)
	li $t0, 0
	sw $t0, -72($sp)
	li $t2, 4
	lw $t1, -52($sp)
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
L7:
	lw $t2, -16($sp)
	li $t1, 1
	xor $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t1, -96($sp)
	lw $t0, 0($t1)
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, -92($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t1, -120($sp)
	lw $t0, 0($t1)
	sw $t0, -124($sp)
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
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, -116($sp)
	sw $t1, ($t0)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t2, -16($sp)
	li $t1, 1
	xor $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t1, -148($sp)
	lw $t0, 0($t1)
	sw $t0, -152($sp)
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, -144($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $t0, -168($sp)
	bne $t0, $0, L10
	b L9
L10:
	lw $t2, -16($sp)
	li $t1, 1
	xor $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -180($sp)
	lw $t1, -180($sp)
	lw $t0, 0($t1)
	sw $t0, -184($sp)
	li $t0, 0
	sw $t0, -188($sp)
	li $t2, 4
	lw $t1, -176($sp)
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -188($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, -184($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -200($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t1, -204($sp)
	lw $t2, -4($sp)
	sw $t2, 4($t1)
	lw $t1, -204($sp)
	lw $t0, 4($t1)
	sw $t0, -172($sp)
L9:
	lw $t2, -16($sp)
	li $t1, 1
	xor $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -216($sp)
	lw $t1, -216($sp)
	lw $t0, 0($t1)
	sw $t0, -220($sp)
	li $t0, 0
	sw $t0, -224($sp)
	li $t2, 4
	lw $t1, -212($sp)
	mul $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t2, -228($sp)
	lw $t1, -224($sp)
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, -224($sp)
	lw $t1, -220($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t0, -232($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -232($sp)
	lw $t1, ($t0)
	sw $t1, -208($sp)
	lw $t0, -232($sp)
	lw $t1, ($t0)
	sw $t1, -208($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -244($sp)
	lw $t1, -244($sp)
	lw $t2, 4($sp)
	sw $t2, 4($t1)
	lw $t1, -244($sp)
	lw $t0, 4($t1)
	sw $t0, -240($sp)
	lw $t0, -4($sp)
	sw $t0, -268($sp)
	subu $sp, $sp, 272
	jal _push_up
	addi $sp, $sp, 272
	sw $v0, -248($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -256($sp)
	lw $t1, -256($sp)
	lw $t0, 8($t1)
	sw $t0, -260($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	lw $t1, -264($sp)
	lw $t2, -260($sp)
	sw $t2, 8($t1)
	lw $t1, -264($sp)
	lw $t0, 8($t1)
	sw $t0, -252($sp)
	jr $ra
_splay:
	sw $ra, ($sp)
	lw $t0, 8($sp)
	bne $t0, $0, L14
	b L12
L14:
	lw $t0, 4($sp)
	bne $t0, $0, L13
	b L12
L13:
	lw $t2, 8($sp)
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L12
	b L11
L12:
	jr $ra
L11:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t1, -16($sp)
	lw $t0, 4($t1)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L16:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -28($sp)
	lw $t2, -4($sp)
	lw $t1, -28($sp)
	sne $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L17
	b L15
L17:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t0, 4($t1)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t1, -44($sp)
	lw $t0, 4($t1)
	sw $t0, -48($sp)
	lw $t2, -4($sp)
	lw $t1, -48($sp)
	seq $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L19
	b L20
L19:
	lw $t0, 8($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _rotate
	addi $sp, $sp, 112
	sw $v0, -56($sp)
	lw $ra, ($sp)
	b L18
L20:
	lw $t0, 8($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _f
	addi $sp, $sp, 112
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t1, -64($sp)
	lw $t0, 4($t1)
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _f
	addi $sp, $sp, 112
	sw $v0, -72($sp)
	lw $ra, ($sp)
	lw $t2, -72($sp)
	lw $t1, -60($sp)
	seq $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L22
	b L23
L22:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t1, -80($sp)
	lw $t0, 4($t1)
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _rotate
	addi $sp, $sp, 112
	sw $v0, -88($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _rotate
	addi $sp, $sp, 112
	sw $v0, -92($sp)
	lw $ra, ($sp)
	b L21
L23:
	lw $t0, 8($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _rotate
	addi $sp, $sp, 112
	sw $v0, -96($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _rotate
	addi $sp, $sp, 112
	sw $v0, -100($sp)
	lw $ra, ($sp)
L21:
L18:
	b L16
L15:
	lw $t0, 8($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _push_up
	addi $sp, $sp, 112
	sw $v0, -104($sp)
	lw $ra, ($sp)
	jr $ra
_find_rt:
	sw $ra, ($sp)
L25:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t1, -4($sp)
	lw $t0, 4($t1)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L26
	b L24
L26:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t1, -16($sp)
	lw $t0, 4($t1)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -12($sp)
	b L25
L24:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_access:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -8($sp)
L28:
	lw $t0, -4($sp)
	bne $t0, $0, L29
	b L27
L29:
	lw $t0, -4($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _find_rt
	addi $sp, $sp, 128
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	sw $t0, -124($sp)
	lw $t0, -12($sp)
	sw $t0, -128($sp)
	subu $sp, $sp, 132
	jal _splay
	addi $sp, $sp, 132
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t1, -20($sp)
	lw $t0, 0($t1)
	sw $t0, -24($sp)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L31
	b L30
L31:
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t0, 0($t1)
	sw $t0, -40($sp)
	lw $t1, -40($sp)
	lw $t0, 4($t1)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t1, -48($sp)
	li $t2, 0
	sw $t2, 4($t1)
	lw $t1, -48($sp)
	lw $t0, 4($t1)
	sw $t0, -32($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t1, -56($sp)
	lw $t0, 0($t1)
	sw $t0, -60($sp)
	lw $t1, -60($sp)
	lw $t0, 4($t1)
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	lw $t1, -68($sp)
	lw $t2, -4($sp)
	sw $t2, 8($t1)
	lw $t1, -68($sp)
	lw $t0, 8($t1)
	sw $t0, -52($sp)
L30:
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t1, -76($sp)
	lw $t0, 0($t1)
	sw $t0, -80($sp)
	lw $t1, -80($sp)
	lw $t2, 4($sp)
	sw $t2, 4($t1)
	lw $t1, -80($sp)
	lw $t0, 4($t1)
	sw $t0, -72($sp)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t0, 4($sp)
	bne $t0, $0, L33
	b L32
L33:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t1, -92($sp)
	lw $t2, -4($sp)
	sw $t2, 4($t1)
	lw $t1, -92($sp)
	lw $t0, 4($t1)
	sw $t0, -88($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t1, -100($sp)
	li $t2, 0
	sw $t2, 8($t1)
	lw $t1, -100($sp)
	lw $t0, 8($t1)
	sw $t0, -96($sp)
L32:
	lw $t0, -4($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _push_up
	addi $sp, $sp, 128
	sw $v0, -104($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -108($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t1, -116($sp)
	lw $t0, 8($t1)
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -112($sp)
	b L28
L27:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -332($sp)
	li $t0, 10
	sw $t0, _n
	lw $t0, _n
	sw $t0, -20($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
L35:
	li $t2, 1
	lw $t1, _n
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L36
	b L34
L36:
	subu $sp, $sp, 128
	jal _newNode
	addi $sp, $sp, 128
	sw $v0, -40($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -44($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -64($sp)
	li $t2, 1
	lw $t1, -64($sp)
	sub $t0, $t1, $t2
	sw $t0, -60($sp)
	b L35
L34:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -72($sp)
L38:
	lw $t2, _n
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L39
	b L37
L39:
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
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
	lw $t1, _data
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t0, -100($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -80($sp)
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	li $t2, 1
	lw $t1, _n
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -108($sp)
	sw $t0, -676($sp)
	lw $t0, -112($sp)
	sw $t0, -680($sp)
	subu $sp, $sp, 684
	jal _min
	addi $sp, $sp, 684
	sw $v0, -116($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, -116($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	lw $t1, -152($sp)
	lw $t2, -132($sp)
	sw $t2, 8($t1)
	lw $t1, -152($sp)
	lw $t0, 8($t1)
	sw $t0, -104($sp)
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
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $t0, -168($sp)
	sw $t0, -676($sp)
	subu $sp, $sp, 680
	jal _access
	addi $sp, $sp, 680
	sw $v0, -172($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -180($sp)
	li $t2, 1
	lw $t1, -180($sp)
	sub $t0, $t1, $t2
	sw $t0, -176($sp)
	b L38
L37:
	li $t0, 14
	sw $t0, _m
	lw $t0, _m
	sw $t0, -188($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -192($sp)
L41:
	lw $t2, _m
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	bne $t0, $0, L42
	b L40
L42:
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -204($sp)
	li $t0, 0
	sw $t0, -208($sp)
	li $t2, 12
	lw $t1, -204($sp)
	mul $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, -208($sp)
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	li $t2, 4
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, -208($sp)
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, _data2
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	lw $t0, -224($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -200($sp)
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -232($sp)
	li $t0, 0
	sw $t0, -236($sp)
	li $t2, 12
	lw $t1, -232($sp)
	mul $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, -236($sp)
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	li $t2, 4
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, -236($sp)
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t2, -236($sp)
	lw $t1, _data2
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	lw $t1, ($t0)
	sw $t1, -252($sp)
	lw $t0, -252($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -228($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t0, -264($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -260($sp)
	li $t2, 1
	lw $t1, -260($sp)
	sub $t0, $t1, $t2
	sw $t0, -256($sp)
	li $t2, 1
	lw $t1, -12($sp)
	seq $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	bne $t0, $0, L44
	b L45
L44:
	li $t0, 0
	sw $t0, -272($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t2, -276($sp)
	lw $t1, -272($sp)
	add $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t0, -280($sp)
	lw $t1, ($t0)
	sw $t1, -284($sp)
	lw $t0, -284($sp)
	sw $t0, -676($sp)
	subu $sp, $sp, 680
	jal _access
	addi $sp, $sp, 680
	sw $v0, -288($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -292($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t2, -296($sp)
	lw $t1, -292($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t0, -300($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	li $t0, 0
	sw $t0, -308($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t2, -312($sp)
	lw $t1, -308($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	lw $t1, ($t0)
	sw $t1, -320($sp)
	lw $t0, -320($sp)
	sw $t0, -676($sp)
	subu $sp, $sp, 680
	jal _find_rt
	addi $sp, $sp, 680
	sw $v0, -324($sp)
	lw $ra, ($sp)
	lw $t0, -304($sp)
	sw $t0, -676($sp)
	lw $t0, -324($sp)
	sw $t0, -680($sp)
	subu $sp, $sp, 684
	jal _splay
	addi $sp, $sp, 684
	sw $v0, -328($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -336($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t2, -340($sp)
	lw $t1, -336($sp)
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t2, -336($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t0, -344($sp)
	lw $t1, ($t0)
	sw $t1, -348($sp)
	lw $t0, -348($sp)
	lw $t1, ($t0)
	sw $t1, -352($sp)
	lw $t1, -352($sp)
	lw $t0, 0($t1)
	sw $t0, -356($sp)
	lw $t0, -356($sp)
	lw $t1, ($t0)
	sw $t1, -360($sp)
	lw $t0, -360($sp)
	lw $t1, ($t0)
	sw $t1, -364($sp)
	lw $t1, -364($sp)
	lw $t0, 12($t1)
	sw $t0, -368($sp)
	lw $t0, -332($sp)
	sw $t0, -676($sp)
	lw $t0, -368($sp)
	sw $t0, -680($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 684
	jal _printf
	addi $sp, $sp, 684
	sw $v0, -372($sp)
	lw $ra, ($sp)
	b L43
L45:
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -380($sp)
	li $t0, 0
	sw $t0, -384($sp)
	li $t2, 12
	lw $t1, -380($sp)
	mul $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t2, -388($sp)
	lw $t1, -384($sp)
	add $t0, $t1, $t2
	sw $t0, -384($sp)
	li $t2, 4
	li $t1, 2
	mul $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t2, -392($sp)
	lw $t1, -384($sp)
	add $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t2, -384($sp)
	lw $t1, _data2
	add $t0, $t1, $t2
	sw $t0, -396($sp)
	lw $t0, -396($sp)
	lw $t1, ($t0)
	sw $t1, -400($sp)
	lw $t0, -400($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -376($sp)
	li $t0, 0
	sw $t0, -404($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t2, -408($sp)
	lw $t1, -404($sp)
	add $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t2, -404($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -412($sp)
	lw $t0, -412($sp)
	lw $t1, ($t0)
	sw $t1, -416($sp)
	lw $t0, -416($sp)
	sw $t0, -676($sp)
	subu $sp, $sp, 680
	jal _access
	addi $sp, $sp, 680
	sw $v0, -420($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -424($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t2, -428($sp)
	lw $t1, -424($sp)
	add $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t2, -424($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -432($sp)
	lw $t0, -432($sp)
	lw $t1, ($t0)
	sw $t1, -436($sp)
	li $t0, 0
	sw $t0, -440($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t2, -444($sp)
	lw $t1, -440($sp)
	add $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t2, -440($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t0, -448($sp)
	lw $t1, ($t0)
	sw $t1, -452($sp)
	lw $t0, -452($sp)
	sw $t0, -676($sp)
	subu $sp, $sp, 680
	jal _find_rt
	addi $sp, $sp, 680
	sw $v0, -456($sp)
	lw $ra, ($sp)
	lw $t0, -436($sp)
	sw $t0, -676($sp)
	lw $t0, -456($sp)
	sw $t0, -680($sp)
	subu $sp, $sp, 684
	jal _splay
	addi $sp, $sp, 684
	sw $v0, -460($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -468($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t2, -472($sp)
	lw $t1, -468($sp)
	add $t0, $t1, $t2
	sw $t0, -468($sp)
	lw $t2, -468($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -476($sp)
	lw $t0, -476($sp)
	lw $t1, ($t0)
	sw $t1, -480($sp)
	lw $t0, -480($sp)
	lw $t1, ($t0)
	sw $t1, -484($sp)
	lw $t1, -484($sp)
	lw $t0, 0($t1)
	sw $t0, -488($sp)
	lw $t0, -488($sp)
	lw $t1, ($t0)
	sw $t1, -492($sp)
	lw $t0, -492($sp)
	lw $t1, ($t0)
	sw $t1, -496($sp)
	lw $t1, -496($sp)
	li $t2, 0
	sw $t2, 4($t1)
	lw $t1, -496($sp)
	lw $t0, 4($t1)
	sw $t0, -464($sp)
	li $t0, 0
	sw $t0, -504($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -508($sp)
	lw $t2, -508($sp)
	lw $t1, -504($sp)
	add $t0, $t1, $t2
	sw $t0, -504($sp)
	lw $t2, -504($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -512($sp)
	lw $t0, -512($sp)
	lw $t1, ($t0)
	sw $t1, -516($sp)
	lw $t0, -516($sp)
	lw $t1, ($t0)
	sw $t1, -520($sp)
	lw $t1, -520($sp)
	lw $t0, 8($t1)
	sw $t0, -524($sp)
	li $t0, 0
	sw $t0, -528($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -532($sp)
	lw $t2, -532($sp)
	lw $t1, -528($sp)
	add $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t2, -528($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -536($sp)
	lw $t0, -536($sp)
	lw $t1, ($t0)
	sw $t1, -540($sp)
	lw $t0, -540($sp)
	lw $t1, ($t0)
	sw $t1, -544($sp)
	lw $t1, -544($sp)
	lw $t0, 0($t1)
	sw $t0, -548($sp)
	lw $t0, -548($sp)
	lw $t1, ($t0)
	sw $t1, -552($sp)
	lw $t0, -552($sp)
	lw $t1, ($t0)
	sw $t1, -556($sp)
	lw $t1, -556($sp)
	lw $t2, -524($sp)
	sw $t2, 8($t1)
	lw $t1, -556($sp)
	lw $t0, 8($t1)
	sw $t0, -500($sp)
	li $t0, 0
	sw $t0, -564($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -568($sp)
	lw $t2, -568($sp)
	lw $t1, -564($sp)
	add $t0, $t1, $t2
	sw $t0, -564($sp)
	lw $t2, -564($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -572($sp)
	lw $t0, -572($sp)
	lw $t1, ($t0)
	sw $t1, -576($sp)
	lw $t0, -576($sp)
	lw $t1, ($t0)
	sw $t1, -580($sp)
	lw $t1, -580($sp)
	lw $t0, 0($t1)
	sw $t0, -584($sp)
	lw $t0, -584($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -584($sp)
	lw $t1, ($t0)
	sw $t1, -560($sp)
	lw $t0, -584($sp)
	lw $t1, ($t0)
	sw $t1, -560($sp)
	lw $t2, -16($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	li $t2, 1
	lw $t1, _n
	add $t0, $t1, $t2
	sw $t0, -600($sp)
	lw $t0, -596($sp)
	sw $t0, -676($sp)
	lw $t0, -600($sp)
	sw $t0, -680($sp)
	subu $sp, $sp, 684
	jal _min
	addi $sp, $sp, 684
	sw $v0, -604($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -608($sp)
	li $t2, 4
	lw $t1, -604($sp)
	mul $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t2, -612($sp)
	lw $t1, -608($sp)
	add $t0, $t1, $t2
	sw $t0, -608($sp)
	lw $t2, -608($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t0, -616($sp)
	lw $t1, ($t0)
	sw $t1, -620($sp)
	li $t0, 0
	sw $t0, -624($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t2, -628($sp)
	lw $t1, -624($sp)
	add $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t2, -624($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -632($sp)
	lw $t0, -632($sp)
	lw $t1, ($t0)
	sw $t1, -636($sp)
	lw $t0, -636($sp)
	lw $t1, ($t0)
	sw $t1, -640($sp)
	lw $t1, -640($sp)
	lw $t2, -620($sp)
	sw $t2, 8($t1)
	lw $t1, -640($sp)
	lw $t0, 8($t1)
	sw $t0, -592($sp)
	li $t0, 0
	sw $t0, -644($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t2, -648($sp)
	lw $t1, -644($sp)
	add $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t2, -644($sp)
	lw $t1, _p
	add $t0, $t1, $t2
	sw $t0, -652($sp)
	lw $t0, -652($sp)
	lw $t1, ($t0)
	sw $t1, -656($sp)
	lw $t0, -656($sp)
	sw $t0, -676($sp)
	subu $sp, $sp, 680
	jal _access
	addi $sp, $sp, 680
	sw $v0, -660($sp)
	lw $ra, ($sp)
L43:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -672($sp)
	lw $t0, -672($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -668($sp)
	li $t2, 1
	lw $t1, -668($sp)
	sub $t0, $t1, $t2
	sw $t0, -664($sp)
	b L41
L40:
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

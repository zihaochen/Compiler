.data
	_printf_cnt: .space 4
	_n: .space 4
	_h: .space 4
	_now: .space 4
	_tmp: .space 4
	_a: .space 4
	_A: .space 4
	_M: .space 4
	_Q: .space 4
	_R: .space 4
	_seed: .space 4
	ASU_1: .space 4004
	ASU_2: .space 4004
	str_1: .space 48
	str_2: .space 56
	str_3: .space 40
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 210
	sw $t0, _n
	li $t0, 48271
	sw $t0, _A
	li $t0, 2147483647
	sw $t0, _M
	li $t0, 1
	sw $t0, _seed
	li $t0, 104
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 36($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 40($t1)
	li $t0, 76
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 101
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 39
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 115
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 115
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 97
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 114
	la $t1, str_2
	sw $t0, 36($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 40($t1)
	li $t0, 33
	la $t1, str_2
	sw $t0, 44($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 48($t1)
	li $t0, 115
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 116
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 101
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 112
	la $t1, str_3
	sw $t0, 12($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 16($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 20($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 24($t1)
	li $t0, 58
	la $t1, str_3
	sw $t0, 28($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 32($t1)
	j _main
_random:
	sw $ra, ($sp)
	lw $t2, _Q
	lw $t1, _seed
	rem $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, _A
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, _Q
	lw $t1, _seed
	div $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, _R
	mul $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -4($sp)
	li $t2, 0
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L2
	b L3
L2:
	lw $t0, -4($sp)
	sw $t0, _seed
	lw $t0, _seed
	sw $t0, -32($sp)
	b L1
L3:
	lw $t2, _M
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, _seed
	lw $t0, _seed
	sw $t0, -36($sp)
L1:
	lw $v0, _seed
	sw $v0, _seed
	jr $ra
	jr $ra
_initialize:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	sw $t0, _seed
	lw $t0, _seed
	sw $t0, -4($sp)
	jr $ra
_swap:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, 4($sp)
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
	lw $t1, 8($sp)
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
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, 4($sp)
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
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	jr $ra
_pd:
	sw $ra, ($sp)
L5:
	lw $t2, 4($sp)
	lw $t1, _h
	sle $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t2, 1
	lw $t1, _h
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, _h
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	li $t2, 2
	lw $t1, -12($sp)
	div $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L8
	b L7
L8:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L7:
	li $t2, 1
	lw $t1, _h
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, _h
	lw $t0, _h
	sw $t0, -24($sp)
	b L5
L4:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_show:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L10:
	lw $t2, _now
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L11
	b L9
L11:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -16($sp)
	b L10
L9:
	jr $ra
_win:
	sw $ra, ($sp)
	la $t0, ASU_2
	sw $t0, -12($sp)
	la $t0, str_1
	sw $t0, -264($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t2, _h
	lw $t1, _now
	sne $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L13
	b L12
L13:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
L12:
L15:
	lw $t2, _now
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L16
	b L14
L16:
	li $t0, 0
	sw $t0, -32($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	li $t0, 0
	sw $t0, -48($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -56($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t0, -56($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -64($sp)
	b L15
L14:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -72($sp)
L18:
	li $t2, 1
	lw $t1, _now
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	bne $t0, $0, L19
	b L17
L19:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -84($sp)
L21:
	lw $t2, _now
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L22
	b L20
L22:
	li $t0, 0
	sw $t0, -96($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
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
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -108($sp)
	sgt $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L24
	b L23
L24:
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
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t0, -148($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -132($sp)
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	li $t0, 0
	sw $t0, -172($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, -172($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	lw $t1, -168($sp)
	sw $t1, ($t0)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	li $t0, 0
	sw $t0, -192($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -192($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -188($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -188($sp)
L23:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -208($sp)
	b L21
L20:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -216($sp)
	b L18
L17:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -224($sp)
L26:
	lw $t2, _now
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	bne $t0, $0, L27
	b L25
L27:
	li $t0, 0
	sw $t0, -232($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t2, -236($sp)
	lw $t1, -232($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t0, -240($sp)
	lw $t1, ($t0)
	sw $t1, -244($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, -244($sp)
	sne $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t0, -252($sp)
	bne $t0, $0, L29
	b L28
L29:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
L28:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -256($sp)
	b L26
L25:
	lw $t0, -264($sp)
	sw $t0, -272($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 276
	jal _printf
	addi $sp, $sp, 276
	sw $v0, -268($sp)
	lw $ra, ($sp)
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_merge:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
L31:
	lw $t2, _now
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L32
	b L30
L32:
	li $t0, 0
	sw $t0, -12($sp)
	li $t2, 4
	lw $t1, -4($sp)
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
	lw $t0, -24($sp)
	bne $t0, $0, L33
	b L34
L34:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -32($sp)
L36:
	lw $t2, _now
	lw $t1, -28($sp)
	slt $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L37
	b L35
L37:
	li $t0, 0
	sw $t0, -44($sp)
	li $t2, 4
	lw $t1, -28($sp)
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
	li $t2, 0
	lw $t1, -56($sp)
	sne $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L39
	b L38
L39:
	lw $t0, -4($sp)
	sw $t0, -120($sp)
	lw $t0, -28($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _swap
	addi $sp, $sp, 128
	sw $v0, -64($sp)
	lw $ra, ($sp)
	b L35
L38:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -68($sp)
	b L36
L35:
L33:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -76($sp)
	b L31
L30:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -84($sp)
L41:
	lw $t2, _now
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	bne $t0, $0, L42
	b L40
L42:
	li $t0, 0
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L43
	b L44
L44:
	lw $t0, -4($sp)
	sw $t0, _now
	lw $t0, _now
	sw $t0, -108($sp)
	b L40
L43:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -112($sp)
	b L41
L40:
	jr $ra
_move:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
L46:
	lw $t2, _now
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L47
	b L45
L47:
	li $t0, 0
	sw $t0, -16($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	li $t2, 1
	lw $t1, -28($sp)
	sub $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, -32($sp)
	sw $t1, ($t0)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -52($sp)
	b L46
L45:
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, _now
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
	lw $t1, _now
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	li $t2, 1
	lw $t1, _now
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	sw $t0, _now
	lw $t0, _now
	sw $t0, -84($sp)
	li $t2, 1
	lw $t1, -84($sp)
	sub $t0, $t1, $t2
	sw $t0, -80($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_2
	sw $t0, -36($sp)
	la $t0, str_3
	sw $t0, -240($sp)
	li $t0, 0
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t2, _A
	lw $t1, _M
	div $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, _Q
	lw $t0, _Q
	sw $t0, -16($sp)
	lw $t2, _A
	lw $t1, _M
	rem $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, _R
	lw $t0, _R
	sw $t0, -24($sp)
	lw $t0, _n
	sw $t0, -276($sp)
	subu $sp, $sp, 280
	jal _pd
	addi $sp, $sp, 280
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L48
	b L49
L49:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L48:
	lw $t0, -36($sp)
	sw $t0, -276($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 280
	jal _printf
	addi $sp, $sp, 280
	sw $v0, -40($sp)
	lw $ra, ($sp)
	li $t0, 3654898
	sw $t0, -276($sp)
	subu $sp, $sp, 280
	jal _initialize
	addi $sp, $sp, 280
	sw $v0, -44($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 280
	jal _random
	addi $sp, $sp, 280
	sw $v0, -52($sp)
	lw $ra, ($sp)
	li $t2, 10
	lw $t1, -52($sp)
	rem $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, _now
	lw $t0, _now
	sw $t0, -48($sp)
L51:
	li $t2, 1
	lw $t1, _now
	sub $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	bne $t0, $0, L52
	b L50
L52:
	subu $sp, $sp, 280
	jal _random
	addi $sp, $sp, 280
	sw $v0, -76($sp)
	lw $ra, ($sp)
	li $t2, 10
	lw $t1, -76($sp)
	rem $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t2, 1
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, -4($sp)
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
	lw $t1, -84($sp)
	sw $t1, ($t0)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
L54:
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t2, -8($sp)
	lw $t1, -116($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, _n
	lw $t1, -120($sp)
	sgt $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L55
	b L53
L55:
	subu $sp, $sp, 280
	jal _random
	addi $sp, $sp, 280
	sw $v0, -132($sp)
	lw $ra, ($sp)
	li $t2, 10
	lw $t1, -132($sp)
	rem $t0, $t1, $t2
	sw $t0, -136($sp)
	li $t2, 1
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	li $t0, 0
	sw $t0, -144($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, -144($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	lw $t1, -140($sp)
	sw $t1, ($t0)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	b L54
L53:
	li $t0, 0
	sw $t0, -164($sp)
	li $t2, 4
	lw $t1, -4($sp)
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
	lw $t2, -176($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -160($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -184($sp)
	b L51
L50:
	lw $t2, -8($sp)
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -196($sp)
	li $t2, 1
	lw $t1, _now
	sub $t0, $t1, $t2
	sw $t0, -200($sp)
	li $t0, 0
	sw $t0, -204($sp)
	li $t2, 4
	lw $t1, -200($sp)
	mul $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	lw $t1, -196($sp)
	sw $t1, ($t0)
	lw $t0, -212($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	lw $t0, -212($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	subu $sp, $sp, 280
	jal _show
	addi $sp, $sp, 280
	sw $v0, -220($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 280
	jal _merge
	addi $sp, $sp, 280
	sw $v0, -224($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 280
	jal _win
	addi $sp, $sp, 280
	sw $v0, -232($sp)
	lw $ra, ($sp)
	lw $t0, -232($sp)
	sw $t0, _tmp
	lw $t0, _tmp
	sw $t0, -228($sp)
L57:
	li $t2, 0
	lw $t1, _tmp
	seq $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	bne $t0, $0, L58
	b L56
L58:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -244($sp)
	lw $t0, -240($sp)
	sw $t0, -276($sp)
	lw $t0, -244($sp)
	sw $t0, -280($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 284
	jal _printf
	addi $sp, $sp, 284
	sw $v0, -252($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 284
	jal _move
	addi $sp, $sp, 284
	sw $v0, -256($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 284
	jal _merge
	addi $sp, $sp, 284
	sw $v0, -260($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 284
	jal _show
	addi $sp, $sp, 284
	sw $v0, -264($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 284
	jal _win
	addi $sp, $sp, 284
	sw $v0, -272($sp)
	lw $ra, ($sp)
	lw $t0, -272($sp)
	sw $t0, _tmp
	lw $t0, _tmp
	sw $t0, -268($sp)
	b L57
L56:
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


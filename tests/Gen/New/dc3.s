.data
	_printf_cnt: .space 4
	_wa: .space 4
	_wb: .space 4
	_wv: .space 4
	_wss: .space 4
	_s: .space 4
	_sa: .space 4
	ASU_1: .space 40004
	ASU_2: .space 40004
	ASU_3: .space 40004
	ASU_4: .space 40004
	ASU_5: .space 120004
	ASU_6: .space 120004
	str_1: .space 16
	str_2: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _wa
	la $t0, ASU_2
	sw $t0, _wb
	la $t0, ASU_3
	sw $t0, _wv
	la $t0, ASU_4
	sw $t0, _wss
	la $t0, ASU_5
	sw $t0, _s
	la $t0, ASU_6
	sw $t0, _sa
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
_F:
	sw $ra, ($sp)
	li $t2, 3
	lw $t1, 8($sp)
	rem $t0, $t1, $t2
	sw $t0, -4($sp)
	li $t2, 1
	lw $t1, -4($sp)
	seq $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L2
	b L3
L2:
	li $t2, 3
	lw $t1, 8($sp)
	div $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	b L1
L3:
	li $t2, 3
	lw $t1, 8($sp)
	div $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, 4($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $v0, -20($sp)
	sw $v0, -20($sp)
	jr $ra
L1:
	jr $ra
_G:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L5
	b L6
L5:
	li $t2, 3
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -8($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	b L4
L6:
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	li $t2, 3
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -20($sp)
	li $t2, 2
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $v0, -24($sp)
	sw $v0, -24($sp)
	jr $ra
L4:
	jr $ra
_max:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	sgt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L8
	b L9
L8:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
	b L7
L9:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
L7:
	jr $ra
_c0:
	sw $ra, ($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -4($sp)
	seq $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L13
	b L11
L13:
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t2, 4
	lw $t1, -32($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t2, 1
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	li $t2, 4
	lw $t1, -48($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -36($sp)
	seq $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	bne $t0, $0, L12
	b L11
L12:
	li $t2, 2
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t2, 4
	lw $t1, -68($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	li $t2, 2
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -84($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -72($sp)
	seq $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L10
	b L11
L10:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L11:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_c12:
	sw $ra, ($sp)
	li $t2, 2
	lw $t1, 16($sp)
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L15
	b L16
L15:
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L17
	b L19
L19:
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -36($sp)
	seq $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L20
	b L18
L20:
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	li $t2, 1
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t0, 1
	sw $t0, -176($sp)
	lw $t0, 12($sp)
	sw $t0, -180($sp)
	lw $t0, -64($sp)
	sw $t0, -184($sp)
	lw $t0, -68($sp)
	sw $t0, -188($sp)
	subu $sp, $sp, 192
	jal _c12
	addi $sp, $sp, 192
	sw $v0, -72($sp)
	lw $ra, ($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L17
	b L18
L17:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L18:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	b L14
L16:
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -76($sp)
	slt $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L21
	b L23
L23:
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -104($sp)
	seq $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L24
	b L22
L24:
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 4
	lw $t1, -132($sp)
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	li $t2, 1
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, -152($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -148($sp)
	slt $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	bne $t0, $0, L21
	b L22
L21:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L22:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
L14:
	jr $ra
_sort:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L26:
	lw $t2, 8($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L27
	b L25
L27:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, 20($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
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
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, -32($sp)
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
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
	b L26
L25:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -72($sp)
L29:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L30
	b L28
L30:
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -104($sp)
	li $t2, 1
	lw $t1, -104($sp)
	sub $t0, $t1, $t2
	sw $t0, -100($sp)
	b L29
L28:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -112($sp)
L32:
	lw $t2, 8($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L33
	b L31
L33:
	li $t0, 0
	sw $t0, -128($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -140($sp)
	li $t0, 0
	sw $t0, -144($sp)
	li $t2, 4
	lw $t1, -140($sp)
	mul $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, -144($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	li $t2, 1
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
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
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	lw $t1, ($t0)
	sw $t1, -176($sp)
	li $t0, 0
	sw $t0, -180($sp)
	li $t2, 4
	lw $t1, -176($sp)
	mul $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t2, -184($sp)
	lw $t1, -180($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	lw $t1, -160($sp)
	sw $t1, ($t0)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	li $t2, 1
	lw $t1, -124($sp)
	sub $t0, $t1, $t2
	sw $t0, -120($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t0, -204($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -200($sp)
	li $t2, 1
	lw $t1, -200($sp)
	sub $t0, $t1, $t2
	sw $t0, -196($sp)
	b L32
L31:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -208($sp)
L35:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	bne $t0, $0, L36
	b L34
L36:
	li $t0, 0
	sw $t0, -220($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, -224($sp)
	lw $t1, -220($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	lw $t1, ($t0)
	sw $t1, -232($sp)
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -236($sp)
	li $t0, 0
	sw $t0, -240($sp)
	li $t2, 4
	lw $t1, -236($sp)
	mul $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, -240($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	lw $t1, ($t0)
	sw $t1, -252($sp)
	lw $t2, -252($sp)
	lw $t1, -232($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	li $t0, 0
	sw $t0, -260($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, -260($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	lw $t1, -256($sp)
	sw $t1, ($t0)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -216($sp)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -216($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -280($sp)
	li $t2, 1
	lw $t1, -280($sp)
	sub $t0, $t1, $t2
	sw $t0, -276($sp)
	b L35
L34:
	li $t2, 1
	lw $t1, 8($sp)
	sub $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t0, -292($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -288($sp)
L38:
	li $t2, 0
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	bne $t0, $0, L39
	b L37
L39:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t2, -312($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	li $t0, 0
	sw $t0, -320($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, -320($sp)
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, -320($sp)
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t0, -328($sp)
	lw $t1, ($t0)
	sw $t1, -332($sp)
	li $t0, 0
	sw $t0, -336($sp)
	li $t2, 4
	lw $t1, -332($sp)
	mul $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t2, -340($sp)
	lw $t1, -336($sp)
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t2, -336($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t0, -344($sp)
	lw $t1, ($t0)
	sw $t1, -348($sp)
	li $t2, 1
	lw $t1, -348($sp)
	sub $t0, $t1, $t2
	sw $t0, -352($sp)
	li $t0, 0
	sw $t0, -356($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t2, -360($sp)
	lw $t1, -356($sp)
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t2, -356($sp)
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -364($sp)
	lw $t1, ($t0)
	sw $t1, -368($sp)
	li $t0, 0
	sw $t0, -372($sp)
	li $t2, 4
	lw $t1, -368($sp)
	mul $t0, $t1, $t2
	sw $t0, -376($sp)
	lw $t2, -376($sp)
	lw $t1, -372($sp)
	add $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t2, -372($sp)
	lw $t1, _wss
	add $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t0, -380($sp)
	lw $t1, -352($sp)
	sw $t1, ($t0)
	lw $t0, -380($sp)
	lw $t1, ($t0)
	sw $t1, -316($sp)
	lw $t0, -380($sp)
	lw $t1, ($t0)
	sw $t1, -316($sp)
	lw $t2, -316($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t2, -392($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t0, -388($sp)
	lw $t1, -304($sp)
	sw $t1, ($t0)
	lw $t0, -388($sp)
	lw $t1, ($t0)
	sw $t1, -300($sp)
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t0, -404($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -400($sp)
	li $t2, 1
	lw $t1, -400($sp)
	add $t0, $t1, $t2
	sw $t0, -396($sp)
	b L38
L37:
	jr $ra
_dc3:
	sw $ra, ($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -12($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -24($sp)
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	li $t2, 3
	lw $t1, -44($sp)
	div $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -40($sp)
	li $t0, 0
	sw $t0, -52($sp)
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t2, 8($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, -64($sp)
	sw $t1, ($t0)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -88($sp)
L41:
	lw $t2, 8($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L42
	b L40
L42:
	li $t2, 3
	lw $t1, -4($sp)
	rem $t0, $t1, $t2
	sw $t0, -96($sp)
	li $t2, 0
	lw $t1, -96($sp)
	sne $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L44
	b L43
L44:
	li $t2, 1
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -112($sp)
	li $t2, 1
	lw $t1, -112($sp)
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, -108($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _wa
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
L43:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -140($sp)
	li $t2, 1
	lw $t1, -140($sp)
	sub $t0, $t1, $t2
	sw $t0, -136($sp)
	b L41
L40:
	li $t2, 4
	li $t1, 2
	mul $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	sw $t0, -880($sp)
	lw $t0, _wa
	sw $t0, -884($sp)
	lw $t0, _wb
	sw $t0, -888($sp)
	lw $t0, -52($sp)
	sw $t0, -892($sp)
	lw $t0, 4($sp)
	sw $t0, -896($sp)
	subu $sp, $sp, 900
	jal _sort
	addi $sp, $sp, 900
	sw $v0, -156($sp)
	lw $ra, ($sp)
	li $t2, 4
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, 16($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, -880($sp)
	lw $t0, _wb
	sw $t0, -884($sp)
	lw $t0, _wa
	sw $t0, -888($sp)
	lw $t0, -52($sp)
	sw $t0, -892($sp)
	lw $t0, 4($sp)
	sw $t0, -896($sp)
	subu $sp, $sp, 900
	jal _sort
	addi $sp, $sp, 900
	sw $v0, -168($sp)
	lw $ra, ($sp)
	lw $t0, 16($sp)
	sw $t0, -880($sp)
	lw $t0, _wa
	sw $t0, -884($sp)
	lw $t0, _wb
	sw $t0, -888($sp)
	lw $t0, -52($sp)
	sw $t0, -892($sp)
	lw $t0, 4($sp)
	sw $t0, -896($sp)
	subu $sp, $sp, 900
	jal _sort
	addi $sp, $sp, 900
	sw $v0, -172($sp)
	lw $ra, ($sp)
	li $t0, 1
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -176($sp)
	lw $t0, _wb
	lw $t1, ($t0)
	sw $t1, -184($sp)
	lw $t0, -184($sp)
	sw $t0, -880($sp)
	lw $t0, -40($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _F
	addi $sp, $sp, 888
	sw $v0, -188($sp)
	lw $ra, ($sp)
	lw $t2, -188($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -192($sp)
	lw $t1, ($t0)
	sw $t1, -180($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -200($sp)
L46:
	lw $t2, -52($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t0, -204($sp)
	bne $t0, $0, L47
	b L45
L47:
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	li $t0, 0
	sw $t0, -212($sp)
	li $t2, 4
	lw $t1, -208($sp)
	mul $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, -212($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, _wb
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
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	lw $t1, ($t0)
	sw $t1, -240($sp)
	lw $t0, 16($sp)
	sw $t0, -880($sp)
	lw $t0, -224($sp)
	sw $t0, -884($sp)
	lw $t0, -240($sp)
	sw $t0, -888($sp)
	subu $sp, $sp, 892
	jal _c0
	addi $sp, $sp, 892
	sw $v0, -244($sp)
	lw $ra, ($sp)
	lw $t0, -244($sp)
	bne $t0, $0, L49
	b L50
L49:
	li $t2, 1
	lw $t1, -56($sp)
	sub $t0, $t1, $t2
	sw $t0, -252($sp)
	li $t0, 0
	sw $t0, -256($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, -256($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t0, -264($sp)
	lw $t1, ($t0)
	sw $t1, -268($sp)
	lw $t0, -268($sp)
	sw $t0, -880($sp)
	lw $t0, -40($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _F
	addi $sp, $sp, 888
	sw $v0, -272($sp)
	lw $ra, ($sp)
	lw $t2, -272($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	lw $t1, -252($sp)
	sw $t1, ($t0)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -248($sp)
	b L48
L50:
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -292($sp)
	li $t2, 1
	lw $t1, -292($sp)
	sub $t0, $t1, $t2
	sw $t0, -288($sp)
	li $t0, 0
	sw $t0, -300($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t2, -304($sp)
	lw $t1, -300($sp)
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t2, -300($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	lw $t1, ($t0)
	sw $t1, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -880($sp)
	lw $t0, -40($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _F
	addi $sp, $sp, 888
	sw $v0, -316($sp)
	lw $ra, ($sp)
	lw $t2, -316($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t0, -320($sp)
	lw $t1, -288($sp)
	sw $t1, ($t0)
	lw $t0, -320($sp)
	lw $t1, ($t0)
	sw $t1, -284($sp)
L48:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t0, -336($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -332($sp)
	li $t2, 1
	lw $t1, -332($sp)
	sub $t0, $t1, $t2
	sw $t0, -328($sp)
	b L46
L45:
	lw $t2, -52($sp)
	lw $t1, -56($sp)
	slt $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t0, -340($sp)
	bne $t0, $0, L52
	b L53
L52:
	lw $t0, -12($sp)
	sw $t0, -880($sp)
	lw $t0, -24($sp)
	sw $t0, -884($sp)
	lw $t0, -52($sp)
	sw $t0, -888($sp)
	lw $t0, -56($sp)
	sw $t0, -892($sp)
	subu $sp, $sp, 896
	jal _dc3
	addi $sp, $sp, 896
	sw $v0, -344($sp)
	lw $ra, ($sp)
	b L51
L53:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -348($sp)
L55:
	lw $t2, -52($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t0, -352($sp)
	bne $t0, $0, L56
	b L54
L56:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t2, -368($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -364($sp)
	lw $t1, ($t0)
	sw $t1, -360($sp)
	lw $t2, -360($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -376($sp)
	lw $t2, -376($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t0, -372($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -372($sp)
	lw $t1, ($t0)
	sw $t1, -356($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t0, -388($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -384($sp)
	li $t2, 1
	lw $t1, -384($sp)
	sub $t0, $t1, $t2
	sw $t0, -380($sp)
	b L55
L54:
L51:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -392($sp)
L58:
	lw $t2, -52($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -396($sp)
	lw $t0, -396($sp)
	bne $t0, $0, L59
	b L57
L59:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t2, -408($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t0, -404($sp)
	lw $t1, ($t0)
	sw $t1, -400($sp)
	lw $t2, -40($sp)
	lw $t1, -400($sp)
	slt $t0, $t1, $t2
	sw $t0, -412($sp)
	lw $t0, -412($sp)
	bne $t0, $0, L61
	b L60
L61:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t2, -428($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t0, -424($sp)
	lw $t1, ($t0)
	sw $t1, -420($sp)
	li $t2, 3
	lw $t1, -420($sp)
	mul $t0, $t1, $t2
	sw $t0, -432($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t0, -444($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -440($sp)
	li $t2, 1
	lw $t1, -440($sp)
	sub $t0, $t1, $t2
	sw $t0, -436($sp)
	li $t0, 0
	sw $t0, -448($sp)
	li $t2, 4
	lw $t1, -436($sp)
	mul $t0, $t1, $t2
	sw $t0, -452($sp)
	lw $t2, -452($sp)
	lw $t1, -448($sp)
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t2, -448($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -456($sp)
	lw $t0, -456($sp)
	lw $t1, -432($sp)
	sw $t1, ($t0)
	lw $t0, -456($sp)
	lw $t1, ($t0)
	sw $t1, -416($sp)
	lw $t0, -456($sp)
	lw $t1, ($t0)
	sw $t1, -416($sp)
L60:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t0, -472($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -468($sp)
	li $t2, 1
	lw $t1, -468($sp)
	sub $t0, $t1, $t2
	sw $t0, -464($sp)
	b L58
L57:
	li $t2, 3
	lw $t1, 8($sp)
	rem $t0, $t1, $t2
	sw $t0, -476($sp)
	li $t2, 1
	lw $t1, -476($sp)
	seq $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t0, -480($sp)
	bne $t0, $0, L63
	b L62
L63:
	li $t2, 1
	lw $t1, 8($sp)
	sub $t0, $t1, $t2
	sw $t0, -488($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -500($sp)
	lw $t0, -500($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -496($sp)
	li $t2, 1
	lw $t1, -496($sp)
	sub $t0, $t1, $t2
	sw $t0, -492($sp)
	li $t0, 0
	sw $t0, -504($sp)
	li $t2, 4
	lw $t1, -492($sp)
	mul $t0, $t1, $t2
	sw $t0, -508($sp)
	lw $t2, -508($sp)
	lw $t1, -504($sp)
	add $t0, $t1, $t2
	sw $t0, -504($sp)
	lw $t2, -504($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -512($sp)
	lw $t0, -512($sp)
	lw $t1, -488($sp)
	sw $t1, ($t0)
	lw $t0, -512($sp)
	lw $t1, ($t0)
	sw $t1, -484($sp)
	lw $t0, -512($sp)
	lw $t1, ($t0)
	sw $t1, -484($sp)
L62:
	lw $t0, 16($sp)
	sw $t0, -880($sp)
	lw $t0, _wb
	sw $t0, -884($sp)
	lw $t0, _wa
	sw $t0, -888($sp)
	lw $t0, -36($sp)
	sw $t0, -892($sp)
	lw $t0, 4($sp)
	sw $t0, -896($sp)
	subu $sp, $sp, 900
	jal _sort
	addi $sp, $sp, 900
	sw $v0, -520($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -524($sp)
L65:
	lw $t2, -52($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t0, -528($sp)
	bne $t0, $0, L66
	b L64
L66:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t2, -548($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t0, -544($sp)
	lw $t1, ($t0)
	sw $t1, -540($sp)
	lw $t0, -540($sp)
	sw $t0, -880($sp)
	lw $t0, -40($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _G
	addi $sp, $sp, 888
	sw $v0, -552($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -556($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t2, -560($sp)
	lw $t1, -556($sp)
	add $t0, $t1, $t2
	sw $t0, -556($sp)
	lw $t2, -556($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -564($sp)
	lw $t0, -564($sp)
	lw $t1, -552($sp)
	sw $t1, ($t0)
	lw $t0, -564($sp)
	lw $t1, ($t0)
	sw $t1, -536($sp)
	lw $t0, -564($sp)
	lw $t1, ($t0)
	sw $t1, -536($sp)
	li $t0, 0
	sw $t0, -572($sp)
	li $t2, 4
	lw $t1, -536($sp)
	mul $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t2, -576($sp)
	lw $t1, -572($sp)
	add $t0, $t1, $t2
	sw $t0, -572($sp)
	lw $t2, -572($sp)
	lw $t1, _wv
	add $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t0, -580($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -580($sp)
	lw $t1, ($t0)
	sw $t1, -532($sp)
	lw $t0, -580($sp)
	lw $t1, ($t0)
	sw $t1, -532($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t0, -596($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -592($sp)
	li $t2, 1
	lw $t1, -592($sp)
	sub $t0, $t1, $t2
	sw $t0, -588($sp)
	b L65
L64:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -600($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -604($sp)
	li $t0, 0
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -608($sp)
L68:
	lw $t2, -36($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t0, -612($sp)
	bne $t0, $0, L70
	b L67
L70:
	lw $t2, -52($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t0, -616($sp)
	bne $t0, $0, L69
	b L67
L69:
	li $t0, 0
	sw $t0, -620($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t2, -624($sp)
	lw $t1, -620($sp)
	add $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t2, -620($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t0, -628($sp)
	lw $t1, ($t0)
	sw $t1, -632($sp)
	li $t2, 3
	lw $t1, -632($sp)
	rem $t0, $t1, $t2
	sw $t0, -636($sp)
	li $t0, 0
	sw $t0, -640($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t2, -644($sp)
	lw $t1, -640($sp)
	add $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t2, -640($sp)
	lw $t1, _wa
	add $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t0, -648($sp)
	lw $t1, ($t0)
	sw $t1, -652($sp)
	li $t0, 0
	sw $t0, -656($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t2, -660($sp)
	lw $t1, -656($sp)
	add $t0, $t1, $t2
	sw $t0, -656($sp)
	lw $t2, -656($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t0, -664($sp)
	lw $t1, ($t0)
	sw $t1, -668($sp)
	lw $t0, -636($sp)
	sw $t0, -880($sp)
	lw $t0, 16($sp)
	sw $t0, -884($sp)
	lw $t0, -652($sp)
	sw $t0, -888($sp)
	lw $t0, -668($sp)
	sw $t0, -892($sp)
	subu $sp, $sp, 896
	jal _c12
	addi $sp, $sp, 896
	sw $v0, -672($sp)
	lw $ra, ($sp)
	lw $t0, -672($sp)
	bne $t0, $0, L72
	b L73
L72:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -688($sp)
	lw $t0, -688($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -684($sp)
	li $t2, 1
	lw $t1, -684($sp)
	sub $t0, $t1, $t2
	sw $t0, -680($sp)
	li $t0, 0
	sw $t0, -692($sp)
	li $t2, 4
	lw $t1, -680($sp)
	mul $t0, $t1, $t2
	sw $t0, -696($sp)
	lw $t2, -696($sp)
	lw $t1, -692($sp)
	add $t0, $t1, $t2
	sw $t0, -692($sp)
	lw $t2, -692($sp)
	lw $t1, _wa
	add $t0, $t1, $t2
	sw $t0, -700($sp)
	lw $t0, -700($sp)
	lw $t1, ($t0)
	sw $t1, -704($sp)
	lw $t2, -56($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t2, -712($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -708($sp)
	lw $t0, -708($sp)
	lw $t1, -704($sp)
	sw $t1, ($t0)
	lw $t0, -708($sp)
	lw $t1, ($t0)
	sw $t1, -676($sp)
	b L71
L73:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -728($sp)
	lw $t0, -728($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -724($sp)
	li $t2, 1
	lw $t1, -724($sp)
	sub $t0, $t1, $t2
	sw $t0, -720($sp)
	li $t0, 0
	sw $t0, -732($sp)
	li $t2, 4
	lw $t1, -720($sp)
	mul $t0, $t1, $t2
	sw $t0, -736($sp)
	lw $t2, -736($sp)
	lw $t1, -732($sp)
	add $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t2, -732($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -740($sp)
	lw $t0, -740($sp)
	lw $t1, ($t0)
	sw $t1, -744($sp)
	lw $t2, -56($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -752($sp)
	lw $t2, -752($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -748($sp)
	lw $t0, -748($sp)
	lw $t1, -744($sp)
	sw $t1, ($t0)
	lw $t0, -748($sp)
	lw $t1, ($t0)
	sw $t1, -716($sp)
L71:
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -764($sp)
	lw $t0, -764($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -760($sp)
	li $t2, 1
	lw $t1, -760($sp)
	sub $t0, $t1, $t2
	sw $t0, -756($sp)
	b L68
L67:
L75:
	lw $t2, -36($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -768($sp)
	lw $t0, -768($sp)
	bne $t0, $0, L76
	b L74
L76:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -784($sp)
	lw $t0, -784($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -780($sp)
	li $t2, 1
	lw $t1, -780($sp)
	sub $t0, $t1, $t2
	sw $t0, -776($sp)
	li $t0, 0
	sw $t0, -788($sp)
	li $t2, 4
	lw $t1, -776($sp)
	mul $t0, $t1, $t2
	sw $t0, -792($sp)
	lw $t2, -792($sp)
	lw $t1, -788($sp)
	add $t0, $t1, $t2
	sw $t0, -788($sp)
	lw $t2, -788($sp)
	lw $t1, _wa
	add $t0, $t1, $t2
	sw $t0, -796($sp)
	lw $t0, -796($sp)
	lw $t1, ($t0)
	sw $t1, -800($sp)
	lw $t2, -56($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -808($sp)
	lw $t2, -808($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -804($sp)
	lw $t0, -804($sp)
	lw $t1, -800($sp)
	sw $t1, ($t0)
	lw $t0, -804($sp)
	lw $t1, ($t0)
	sw $t1, -772($sp)
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t0, -820($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -816($sp)
	li $t2, 1
	lw $t1, -816($sp)
	sub $t0, $t1, $t2
	sw $t0, -812($sp)
	b L75
L74:
L78:
	lw $t2, -52($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -824($sp)
	lw $t0, -824($sp)
	bne $t0, $0, L79
	b L77
L79:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -840($sp)
	lw $t0, -840($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -836($sp)
	li $t2, 1
	lw $t1, -836($sp)
	sub $t0, $t1, $t2
	sw $t0, -832($sp)
	li $t0, 0
	sw $t0, -844($sp)
	li $t2, 4
	lw $t1, -832($sp)
	mul $t0, $t1, $t2
	sw $t0, -848($sp)
	lw $t2, -848($sp)
	lw $t1, -844($sp)
	add $t0, $t1, $t2
	sw $t0, -844($sp)
	lw $t2, -844($sp)
	lw $t1, _wb
	add $t0, $t1, $t2
	sw $t0, -852($sp)
	lw $t0, -852($sp)
	lw $t1, ($t0)
	sw $t1, -856($sp)
	lw $t2, -56($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -864($sp)
	lw $t2, -864($sp)
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t0, -860($sp)
	lw $t1, -856($sp)
	sw $t1, ($t0)
	lw $t0, -860($sp)
	lw $t1, ($t0)
	sw $t1, -828($sp)
	li $t2, 1
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -876($sp)
	lw $t0, -876($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -872($sp)
	li $t2, 1
	lw $t1, -872($sp)
	sub $t0, $t1, $t2
	sw $t0, -868($sp)
	b L78
L77:
	jr $ra
_getInt:
	sw $ra, ($sp)
	subu $sp, $sp, 896
	jal _getchar
	addi $sp, $sp, 896
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -12($sp)
L81:
	li $t2, 48
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L82
	b L83
L83:
	li $t2, 57
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L82
	b L80
L82:
	subu $sp, $sp, 896
	jal _getchar
	addi $sp, $sp, 896
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	b L81
L80:
L85:
	li $t2, 48
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L87
	b L84
L87:
	li $t2, 57
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L86
	b L84
L86:
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
	subu $sp, $sp, 896
	jal _getchar
	addi $sp, $sp, 896
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t0, -60($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -56($sp)
	b L85
L84:
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -184($sp)
	la $t0, str_2
	sw $t0, -220($sp)
	li $t0, 0
	sw $t0, -8($sp)
	subu $sp, $sp, 896
	jal _getInt
	addi $sp, $sp, 896
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t0, -20($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -24($sp)
L89:
	lw $t2, -4($sp)
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L90
	b L88
L90:
	subu $sp, $sp, 896
	jal _getInt
	addi $sp, $sp, 896
	sw $v0, -36($sp)
	lw $ra, ($sp)
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
	lw $t1, _s
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, -36($sp)
	sw $t1, ($t0)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, _s
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	li $t2, 1
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _s
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, -80($sp)
	sw $t1, ($t0)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	li $t2, 1
	lw $t1, -60($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, _s
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	li $t2, 1
	lw $t1, -116($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	sw $t0, -228($sp)
	lw $t0, -8($sp)
	sw $t0, -232($sp)
	subu $sp, $sp, 236
	jal _max
	addi $sp, $sp, 236
	sw $v0, -124($sp)
	lw $ra, ($sp)
	lw $t0, -124($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -100($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -132($sp)
	li $t2, 1
	lw $t1, -132($sp)
	sub $t0, $t1, $t2
	sw $t0, -128($sp)
	b L89
L88:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -148($sp)
	li $t2, 1
	lw $t1, -148($sp)
	sub $t0, $t1, $t2
	sw $t0, -144($sp)
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
	lw $t1, _s
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -140($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -140($sp)
	lw $t0, _s
	sw $t0, -228($sp)
	lw $t0, _sa
	sw $t0, -232($sp)
	lw $t0, -4($sp)
	sw $t0, -236($sp)
	lw $t0, -8($sp)
	sw $t0, -240($sp)
	subu $sp, $sp, 244
	jal _dc3
	addi $sp, $sp, 244
	sw $v0, -172($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -176($sp)
L92:
	lw $t2, -4($sp)
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	bne $t0, $0, L93
	b L91
L93:
	li $t0, 0
	sw $t0, -188($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -188($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, _sa
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -200($sp)
	lw $t0, -184($sp)
	sw $t0, -228($sp)
	lw $t0, -200($sp)
	sw $t0, -232($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 236
	jal _printf
	addi $sp, $sp, 236
	sw $v0, -204($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -212($sp)
	li $t2, 1
	lw $t1, -212($sp)
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	b L92
L91:
	lw $t0, -220($sp)
	sw $t0, -228($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 232
	jal _printf
	addi $sp, $sp, 232
	sw $v0, -224($sp)
	lw $ra, ($sp)
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


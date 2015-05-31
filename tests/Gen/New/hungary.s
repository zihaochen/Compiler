.data
	_printf_cnt: .space 4
	_e: .space 4
	_struct_member_1: .space 4
	_struct_member_2: .space 4
	_struct_member_3: .space 4
	_n: .space 4
	_m: .space 4
	_a: .space 4
	_b: .space 4
	_nxt: .space 4
	_visit: .space 4
	ASU_1: .space 20
	ASU_2: .space 44
	ASU_3: .space 44
	ASU_4: .space 44
	ASU_5: .space 44
	ASU_6: .space 44
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _e
	la $t0, ASU_2
	sw $t0, _struct_member_1
	la $t0, ASU_3
	sw $t0, _struct_member_2
	la $t0, ASU_4
	sw $t0, _struct_member_3
	la $t0, ASU_5
	sw $t0, _nxt
	la $t0, ASU_6
	sw $t0, _visit
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t1, _e
	lw $t2, _struct_member_1
	sw $t2, 0($t1)
	lw $t1, _e
	lw $t2, _struct_member_2
	sw $t2, 4($t1)
	lw $t1, _e
	lw $t2, _struct_member_3
	sw $t2, 8($t1)
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
_addEdge:
	sw $ra, ($sp)
	lw $t1, _e
	lw $t0, 12($t1)
	sw $t0, -8($sp)
	lw $t1, _e
	lw $t0, 0($t1)
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, -16($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t1, _e
	lw $t0, 8($t1)
	sw $t0, -36($sp)
	li $t0, 0
	sw $t0, -40($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t1, _e
	lw $t0, 12($t1)
	sw $t0, -56($sp)
	lw $t1, _e
	lw $t0, 4($t1)
	sw $t0, -60($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, -56($sp)
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	lw $t1, -52($sp)
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t1, _e
	lw $t0, 12($t1)
	sw $t0, -92($sp)
	li $t2, 1
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t1, _e
	lw $t2, -96($sp)
	sw $t2, 12($t1)
	li $t2, 1
	lw $t1, -88($sp)
	sub $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t1, _e
	lw $t0, 8($t1)
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, 8($sp)
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
	lw $t1, -84($sp)
	sw $t1, ($t0)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	jr $ra
_dfs:
	sw $ra, ($sp)
	lw $t1, _e
	lw $t0, 8($t1)
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L2:
	lw $t2, -4($sp)
	not $t0, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L3
	b L1
L3:
	lw $t1, _e
	lw $t0, 0($t1)
	sw $t0, -44($sp)
	li $t0, 0
	sw $t0, -48($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -44($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -40($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, _visit
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L5
	b L4
L5:
	b L2
L4:
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _visit
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	li $t0, 0
	sw $t0, -100($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, _nxt
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	li $t2, -1
	lw $t1, -112($sp)
	seq $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L7
	b L8
L8:
	lw $t0, -8($sp)
	sw $t0, -168($sp)
	subu $sp, $sp, 172
	jal _dfs
	addi $sp, $sp, 172
	sw $v0, -120($sp)
	lw $ra, ($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L7
	b L6
L7:
	li $t0, 0
	sw $t0, -128($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _nxt
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L6:
	lw $t1, _e
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	li $t0, 0
	sw $t0, -152($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -148($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -164($sp)
	lw $t0, -164($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -144($sp)
	b L2
L1:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_getInt:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -8($sp)
	subu $sp, $sp, 68
	jal _getchar
	addi $sp, $sp, 68
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L10:
	li $t2, 48
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L11
	b L12
L12:
	li $t2, 57
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L11
	b L9
L11:
	subu $sp, $sp, 68
	jal _getchar
	addi $sp, $sp, 68
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -32($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -28($sp)
	b L10
L9:
L14:
	li $t2, 48
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L16
	b L13
L16:
	li $t2, 57
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t2, 10
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -4($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t2, 48
	lw $t1, -52($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -44($sp)
	subu $sp, $sp, 68
	jal _getchar
	addi $sp, $sp, 68
	sw $v0, -64($sp)
	lw $ra, ($sp)
	lw $t0, -64($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -60($sp)
	b L14
L13:
	lw $v0, -8($sp)
	sw $v0, -8($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -228($sp)
	li $t0, 0
	sw $t0, -12($sp)
	subu $sp, $sp, 236
	jal _getInt
	addi $sp, $sp, 236
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t0, -20($sp)
	sw $t0, _n
	lw $t0, _n
	sw $t0, -16($sp)
	subu $sp, $sp, 236
	jal _getInt
	addi $sp, $sp, 236
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, _m
	lw $t0, _m
	sw $t0, -24($sp)
	lw $t1, _e
	li $t2, 0
	sw $t2, 12($t1)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -36($sp)
L18:
	li $t2, 10
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L19
	b L17
L19:
	lw $t1, _e
	lw $t0, 8($t1)
	sw $t0, -48($sp)
	li $t0, 0
	sw $t0, -52($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -72($sp)
	li $t2, 1
	lw $t1, -72($sp)
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	b L18
L17:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -80($sp)
L21:
	lw $t2, _m
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	bne $t0, $0, L22
	b L20
L22:
	subu $sp, $sp, 236
	jal _getInt
	addi $sp, $sp, 236
	sw $v0, -92($sp)
	lw $ra, ($sp)
	lw $t0, -92($sp)
	sw $t0, _a
	lw $t0, _a
	sw $t0, -88($sp)
	subu $sp, $sp, 236
	jal _getInt
	addi $sp, $sp, 236
	sw $v0, -100($sp)
	lw $ra, ($sp)
	lw $t0, -100($sp)
	sw $t0, _b
	lw $t0, _b
	sw $t0, -96($sp)
	lw $t0, _a
	sw $t0, -236($sp)
	lw $t0, _b
	sw $t0, -240($sp)
	subu $sp, $sp, 244
	jal _addEdge
	addi $sp, $sp, 244
	sw $v0, -104($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -112($sp)
	li $t2, 1
	lw $t1, -112($sp)
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	b L21
L20:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -120($sp)
L24:
	lw $t2, _n
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L25
	b L23
L25:
	li $t0, 0
	sw $t0, -132($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, _nxt
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -148($sp)
	b L24
L23:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -156($sp)
L27:
	lw $t2, _n
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	bne $t0, $0, L28
	b L26
L28:
	li $t0, 1
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -164($sp)
L30:
	lw $t2, _n
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	bne $t0, $0, L31
	b L29
L31:
	li $t0, 0
	sw $t0, -176($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, -176($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, _visit
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -172($sp)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -172($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -196($sp)
	li $t2, 1
	lw $t1, -196($sp)
	sub $t0, $t1, $t2
	sw $t0, -192($sp)
	b L30
L29:
	lw $t0, -4($sp)
	sw $t0, -236($sp)
	subu $sp, $sp, 240
	jal _dfs
	addi $sp, $sp, 240
	sw $v0, -208($sp)
	lw $ra, ($sp)
	lw $t2, -208($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -204($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -220($sp)
	li $t2, 1
	lw $t1, -220($sp)
	sub $t0, $t1, $t2
	sw $t0, -216($sp)
	b L27
L26:
	lw $t0, -228($sp)
	sw $t0, -236($sp)
	lw $t0, -12($sp)
	sw $t0, -240($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 244
	jal _printf
	addi $sp, $sp, 244
	sw $v0, -232($sp)
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

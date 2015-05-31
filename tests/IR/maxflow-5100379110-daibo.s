.data
	_printf_cnt: .space 4
	_c: .space 4
	_ans: .space 4
	_visit: .space 4
	_pre: .space 4
	_f: .space 4
	_i: .space 4
	_j: .space 4
	_open: .space 4
	_closed: .space 4
	ASU_1: .space 48404
	ASU_2: .space 444
	ASU_3: .space 444
	ASU_4: .space 444
	str_1: .space 20
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _c
	la $t0, ASU_2
	sw $t0, _visit
	la $t0, ASU_3
	sw $t0, _pre
	la $t0, ASU_4
	sw $t0, _f
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
	li $t0, 10
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 16($t1)
	j _main
_build:
	sw $ra, ($sp)
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -4($sp)
L2:
	li $t2, 49
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 50
	sw $t0, _j
	lw $t0, _j
	sw $t0, -12($sp)
L5:
	lw $t2, _i
	li $t1, 98
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -32($sp)
	li $t2, 440
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -56($sp)
	li $t2, 1
	lw $t1, -56($sp)
	sub $t0, $t1, $t2
	sw $t0, -52($sp)
	b L5
L4:
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
	b L2
L1:
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -76($sp)
L8:
	li $t2, 49
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 440
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -112($sp)
	li $t2, 1
	lw $t1, -112($sp)
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	b L8
L7:
	li $t0, 50
	sw $t0, _i
	lw $t0, _i
	sw $t0, -120($sp)
L11:
	li $t2, 98
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t0, 0
	sw $t0, -132($sp)
	li $t2, 440
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -156($sp)
	li $t2, 1
	lw $t1, -156($sp)
	sub $t0, $t1, $t2
	sw $t0, -152($sp)
	b L11
L10:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_find:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, _open
	lw $t0, _open
	sw $t0, -4($sp)
	li $t0, 1
	sw $t0, _closed
	lw $t0, _closed
	sw $t0, -8($sp)
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -12($sp)
L14:
	lw $t2, 12($sp)
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L15
	b L13
L15:
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
	lw $t1, _visit
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -44($sp)
	li $t2, 1
	lw $t1, -44($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	b L14
L13:
	lw $t1, _f
	lw $t2, 8($sp)
	sw $t2, 4($t1)
	lw $t1, _f
	lw $t0, 4($t1)
	sw $t0, -52($sp)
	lw $t0, _f
	lw $t1, ($t0)
	sw $t1, -52($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, 8($sp)
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
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _pre
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
	li $t0, 0
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -100($sp)
L17:
	lw $t2, _closed
	lw $t1, _open
	slt $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L19
	b L16
L19:
	li $t2, 0
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t2, 1
	lw $t1, _open
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	sw $t0, _open
	lw $t0, _open
	sw $t0, -116($sp)
	li $t2, 1
	lw $t1, -116($sp)
	sub $t0, $t1, $t2
	sw $t0, -112($sp)
	li $t0, 0
	sw $t0, -128($sp)
	li $t2, 4
	lw $t1, _open
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -140($sp)
	lw $t0, -140($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -124($sp)
	li $t0, 1
	sw $t0, _j
	lw $t0, _j
	sw $t0, -144($sp)
L21:
	lw $t2, 12($sp)
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L22
	b L20
L22:
	li $t0, 0
	sw $t0, -152($sp)
	li $t2, 440
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	li $t2, 0
	lw $t1, -168($sp)
	sgt $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	bne $t0, $0, L25
	b L23
L25:
	li $t0, 0
	sw $t0, -176($sp)
	li $t2, 4
	lw $t1, _j
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
	lw $t1, ($t0)
	sw $t1, -188($sp)
	li $t2, 0
	lw $t1, -188($sp)
	seq $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	bne $t0, $0, L24
	b L23
L24:
	li $t0, 0
	sw $t0, -200($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, -200($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, _visit
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -208($sp)
	lw $t1, ($t0)
	sw $t1, -196($sp)
	lw $t0, -208($sp)
	lw $t1, ($t0)
	sw $t1, -196($sp)
	li $t2, 1
	lw $t1, _closed
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	sw $t0, _closed
	lw $t0, _closed
	sw $t0, -220($sp)
	li $t2, 1
	lw $t1, -220($sp)
	sub $t0, $t1, $t2
	sw $t0, -216($sp)
	li $t0, 0
	sw $t0, -232($sp)
	li $t2, 4
	lw $t1, _closed
	mul $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t2, -236($sp)
	lw $t1, -232($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t0, -240($sp)
	lw $t1, _j
	sw $t1, ($t0)
	lw $t0, -240($sp)
	lw $t1, ($t0)
	sw $t1, -228($sp)
	lw $t0, -240($sp)
	lw $t1, ($t0)
	sw $t1, -228($sp)
	li $t0, 0
	sw $t0, -252($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, -252($sp)
	add $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t2, -252($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	lw $t1, _i
	sw $t1, ($t0)
	lw $t0, -260($sp)
	lw $t1, ($t0)
	sw $t1, -248($sp)
	lw $t0, -260($sp)
	lw $t1, ($t0)
	sw $t1, -248($sp)
	lw $t2, 12($sp)
	lw $t1, _closed
	seq $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	bne $t0, $0, L27
	b L26
L27:
	li $t0, 1
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -272($sp)
L26:
L23:
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -280($sp)
	li $t2, 1
	lw $t1, -280($sp)
	sub $t0, $t1, $t2
	sw $t0, -276($sp)
	b L21
L20:
	b L17
L16:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_improve:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -4($sp)
	li $t2, 1
	lw $t1, _ans
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, _ans
	lw $t0, _ans
	sw $t0, -12($sp)
	li $t2, 1
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -8($sp)
L29:
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	li $t2, 0
	lw $t1, -32($sp)
	sgt $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L30
	b L28
L30:
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
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t0, -56($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -40($sp)
	li $t0, 0
	sw $t0, -68($sp)
	li $t2, 440
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	li $t2, 1
	lw $t1, -84($sp)
	sub $t0, $t1, $t2
	sw $t0, -88($sp)
	li $t0, 0
	sw $t0, -92($sp)
	li $t2, 440
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	lw $t1, -88($sp)
	sw $t1, ($t0)
	lw $t0, -104($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t0, -104($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	li $t2, 1
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 440
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -136($sp)
	li $t2, 1
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	li $t0, 0
	sw $t0, -144($sp)
	li $t2, 440
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, -144($sp)
	lw $t1, _c
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	lw $t1, -140($sp)
	sw $t1, ($t0)
	lw $t0, -156($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t0, -156($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	li $t2, 1
	lw $t1, -116($sp)
	sub $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, _j
	sw $t0, _i
	lw $t0, _i
	sw $t0, -164($sp)
	b L29
L28:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -56($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	li $t0, 99
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -28($sp)
	li $t0, 100
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -32($sp)
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -36($sp)
	lw $t0, -8($sp)
	sw $t0, -64($sp)
	lw $t0, -12($sp)
	sw $t0, -68($sp)
	subu $sp, $sp, 72
	jal _build
	addi $sp, $sp, 72
	sw $v0, -40($sp)
	lw $ra, ($sp)
L32:
	lw $t0, -12($sp)
	sw $t0, -64($sp)
	lw $t0, -8($sp)
	sw $t0, -68($sp)
	lw $t0, -16($sp)
	sw $t0, -72($sp)
	subu $sp, $sp, 76
	jal _find
	addi $sp, $sp, 76
	sw $v0, -44($sp)
	lw $ra, ($sp)
	li $t2, 0
	lw $t1, -44($sp)
	sgt $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L33
	b L31
L33:
	lw $t0, -12($sp)
	sw $t0, -64($sp)
	subu $sp, $sp, 68
	jal _improve
	addi $sp, $sp, 68
	sw $v0, -52($sp)
	lw $ra, ($sp)
	b L32
L31:
	lw $t0, -56($sp)
	sw $t0, -64($sp)
	lw $t0, _ans
	sw $t0, -68($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 72
	jal _printf
	addi $sp, $sp, 72
	sw $v0, -60($sp)
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


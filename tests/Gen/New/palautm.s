.data
	_printf_cnt: .space 4
	_ch: .space 4
	_ans: .space 4
	_ss: .space 4
	_rood: .space 4
	_reven: .space 4
	_last: .space 4
	_next: .space 4
	_rt: .space 4
	_l: .space 4
	ASU_1: .space 2004
	ASU_2: .space 2004
	ASU_3: .space 4004
	ASU_4: .space 2004
	ASU_5: .space 2004
	str_1: .space 12
	str_2: .space 12
	str_3: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _ch
	la $t0, ASU_2
	sw $t0, _ans
	la $t0, ASU_3
	sw $t0, _next
	la $t0, ASU_4
	sw $t0, _rt
	la $t0, ASU_5
	sw $t0, _l
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 4($t1)
	j _main
_origin:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L2:
	lw $t2, _ss
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
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
	li $t2, 1
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -32($sp)
	li $t2, 8
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -56($sp)
	li $t2, 1
	lw $t1, -56($sp)
	sub $t0, $t1, $t2
	sw $t0, -52($sp)
	b L5
L4:
	li $t0, 0
	sw $t0, -68($sp)
	li $t2, 4
	lw $t1, _ss
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, _l
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	li $t1, -2
	sw $t1, ($t0)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, _ss
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -108($sp)
	li $t2, 1
	lw $t1, -108($sp)
	sub $t0, $t1, $t2
	sw $t0, -104($sp)
	b L2
L1:
	li $t0, 0
	sw $t0, _ss
	lw $t0, _ss
	sw $t0, -116($sp)
	li $t2, 1
	lw $t1, _ss
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	sw $t0, _ss
	lw $t0, _ss
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	sw $t0, _rood
	lw $t0, _rood
	sw $t0, -120($sp)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 4
	lw $t1, _rood
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, _l
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, _rood
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, _rood
	sw $t1, ($t0)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	li $t2, 1
	lw $t1, _ss
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, _ss
	lw $t0, _ss
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	sw $t0, _reven
	lw $t0, _reven
	sw $t0, -172($sp)
	li $t0, 0
	sw $t0, -188($sp)
	li $t2, 4
	lw $t1, _reven
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -188($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, _l
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	li $t0, 0
	sw $t0, -208($sp)
	li $t2, 4
	lw $t1, _reven
	mul $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, -208($sp)
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	lw $t1, _rood
	sw $t1, ($t0)
	lw $t0, -216($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t0, -216($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t0, _rood
	sw $t0, _last
	lw $t0, _last
	sw $t0, -224($sp)
	jr $ra
_palin:
	sw $ra, ($sp)
	li $t2, 1
	lw $t1, 8($sp)
	sub $t0, $t1, $t2
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t2, 4
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, _l
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	li $t2, 97
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, 4($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $v0, -48($sp)
	sw $v0, -48($sp)
	jr $ra
	jr $ra
_add:
	sw $ra, ($sp)
L8:
	lw $t0, _last
	sw $t0, -328($sp)
	lw $t0, 4($sp)
	sw $t0, -332($sp)
	lw $t0, 8($sp)
	sw $t0, -336($sp)
	subu $sp, $sp, 340
	jal _palin
	addi $sp, $sp, 340
	sw $v0, -4($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L7
	b L9
L9:
	li $t0, 0
	sw $t0, -12($sp)
	li $t2, 4
	lw $t1, _last
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, -24($sp)
	sw $t0, _last
	lw $t0, _last
	sw $t0, -8($sp)
	b L8
L7:
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 8
	lw $t1, _last
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t0, -44($sp)
	bne $t0, $0, L11
	b L12
L11:
	li $t0, 0
	sw $t0, -52($sp)
	li $t2, 8
	lw $t1, _last
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	lw $t0, -68($sp)
	sw $t0, _last
	lw $t0, _last
	sw $t0, -48($sp)
	b L10
L12:
	lw $t0, _last
	sw $t0, -72($sp)
	li $t2, 1
	lw $t1, _ss
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, _ss
	lw $t0, _ss
	sw $t0, -76($sp)
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 8
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, _ss
	sw $t1, ($t0)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	li $t0, 0
	sw $t0, -112($sp)
	li $t2, 4
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -112($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, _l
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	li $t2, 2
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	li $t0, 0
	sw $t0, -132($sp)
	li $t2, 4
	lw $t1, _ss
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, _l
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
	lw $t2, _rood
	lw $t1, -72($sp)
	seq $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L14
	b L15
L14:
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, _ss
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, _reven
	sw $t1, ($t0)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -152($sp)
	b L13
L15:
	li $t0, 0
	sw $t0, -176($sp)
	li $t2, 4
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, -176($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -188($sp)
	lw $t0, -188($sp)
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -172($sp)
L17:
	lw $t2, _rood
	lw $t1, -72($sp)
	sne $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	bne $t0, $0, L19
	b L16
L19:
	li $t0, 0
	sw $t0, -196($sp)
	li $t2, 8
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, -196($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, -196($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t0, -212($sp)
	bne $t0, $0, L20
	b L18
L20:
	lw $t0, -72($sp)
	sw $t0, -328($sp)
	lw $t0, 4($sp)
	sw $t0, -332($sp)
	lw $t0, 8($sp)
	sw $t0, -336($sp)
	subu $sp, $sp, 340
	jal _palin
	addi $sp, $sp, 340
	sw $v0, -216($sp)
	lw $ra, ($sp)
	lw $t0, -216($sp)
	bne $t0, $0, L16
	b L18
L18:
	li $t0, 0
	sw $t0, -224($sp)
	li $t2, 4
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t2, -228($sp)
	lw $t1, -224($sp)
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, -224($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t0, -232($sp)
	lw $t1, ($t0)
	sw $t1, -236($sp)
	lw $t0, -236($sp)
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -220($sp)
	b L17
L16:
	li $t0, 0
	sw $t0, -240($sp)
	li $t2, 8
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, -240($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, -240($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t0, -252($sp)
	lw $t1, ($t0)
	sw $t1, -256($sp)
	lw $t0, -256($sp)
	bne $t0, $0, L24
	b L23
L24:
	lw $t0, -72($sp)
	sw $t0, -328($sp)
	lw $t0, 4($sp)
	sw $t0, -332($sp)
	lw $t0, 8($sp)
	sw $t0, -336($sp)
	subu $sp, $sp, 340
	jal _palin
	addi $sp, $sp, 340
	sw $v0, -260($sp)
	lw $ra, ($sp)
	lw $t0, -260($sp)
	bne $t0, $0, L22
	b L23
L22:
	li $t0, 0
	sw $t0, -268($sp)
	li $t2, 8
	lw $t1, -72($sp)
	mul $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t2, -276($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, -268($sp)
	lw $t1, _next
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t0, -280($sp)
	lw $t1, ($t0)
	sw $t1, -284($sp)
	li $t0, 0
	sw $t0, -288($sp)
	li $t2, 4
	lw $t1, _ss
	mul $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, -288($sp)
	add $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	lw $t1, -284($sp)
	sw $t1, ($t0)
	lw $t0, -296($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	lw $t0, -296($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	b L21
L23:
	li $t0, 0
	sw $t0, -308($sp)
	li $t2, 4
	lw $t1, _ss
	mul $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t2, -312($sp)
	lw $t1, -308($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, _rt
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	lw $t1, _rood
	sw $t1, ($t0)
	lw $t0, -316($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	lw $t0, -316($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
L21:
L13:
	lw $t0, _ss
	sw $t0, _last
	lw $t0, _last
	sw $t0, -324($sp)
L10:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -184($sp)
	la $t0, str_2
	sw $t0, -192($sp)
	la $t0, str_3
	sw $t0, -236($sp)
	li $t0, 1
	sw $t0, -8($sp)
	subu $sp, $sp, 340
	jal _getchar
	addi $sp, $sp, 340
	sw $v0, -16($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
L26:
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	li $t2, 97
	lw $t1, -48($sp)
	seq $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L27
	b L28
L28:
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	li $t2, 98
	lw $t1, -68($sp)
	seq $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L27
	b L25
L27:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -76($sp)
	subu $sp, $sp, 340
	jal _getchar
	addi $sp, $sp, 340
	sw $v0, -88($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, -88($sp)
	sw $t1, ($t0)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	b L26
L25:
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
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	subu $sp, $sp, 340
	jal _origin
	addi $sp, $sp, 340
	sw $v0, -128($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -136($sp)
	li $t2, 1
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -144($sp)
L30:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L31
	b L29
L31:
	lw $t0, _ss
	sw $t0, -152($sp)
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
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	li $t2, 97
	lw $t1, -168($sp)
	sub $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	sw $t0, -244($sp)
	lw $t0, -4($sp)
	sw $t0, -248($sp)
	subu $sp, $sp, 252
	jal _add
	addi $sp, $sp, 252
	sw $v0, -176($sp)
	lw $ra, ($sp)
	lw $t2, _ss
	lw $t1, -152($sp)
	sne $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	bne $t0, $0, L33
	b L34
L33:
	lw $t0, -184($sp)
	sw $t0, -244($sp)
	li $t0, 49
	sw $t0, -248($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 252
	jal _printf
	addi $sp, $sp, 252
	sw $v0, -188($sp)
	lw $ra, ($sp)
	b L32
L34:
	lw $t0, -192($sp)
	sw $t0, -244($sp)
	li $t0, 48
	sw $t0, -248($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 252
	jal _printf
	addi $sp, $sp, 252
	sw $v0, -196($sp)
	lw $ra, ($sp)
L32:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -204($sp)
	li $t2, 1
	lw $t1, -204($sp)
	sub $t0, $t1, $t2
	sw $t0, -200($sp)
	b L30
L29:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	li $t0, 0
	sw $t0, -220($sp)
	li $t2, 4
	lw $t1, -216($sp)
	mul $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, -224($sp)
	lw $t1, -220($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, _ans
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -228($sp)
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t0, -228($sp)
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t0, -236($sp)
	sw $t0, -244($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 248
	jal _printf
	addi $sp, $sp, 248
	sw $v0, -240($sp)
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


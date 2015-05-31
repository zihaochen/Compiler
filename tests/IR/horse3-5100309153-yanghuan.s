.data
	_printf_cnt: .space 4
	_N: .space 4
	_head: .space 4
	_startx: .space 4
	_starty: .space 4
	_targetx: .space 4
	_targety: .space 4
	_x: .space 4
	_y: .space 4
	_xlist: .space 4
	_ylist: .space 4
	_tail: .space 4
	_ok: .space 4
	_now: .space 4
	_dx: .space 4
	_dy: .space 4
	_step: .space 4
	_i: .space 4
	_j: .space 4
	ASU_1: .space 48004
	ASU_2: .space 48004
	ASU_3: .space 36
	ASU_4: .space 40
	ASU_5: .space 44948
	str_1: .space 16
	str_2: .space 56
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _xlist
	la $t0, ASU_2
	sw $t0, _ylist
	la $t0, ASU_3
	sw $t0, _dx
	la $t0, ASU_4
	sw $t0, _dy
	la $t0, ASU_5
	sw $t0, _step
	li $t0, 0
	sw $t0, _printf_cnt
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
	li $t0, 110
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 115
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 108
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 117
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 105
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 36($t1)
	li $t0, 110
	la $t1, str_2
	sw $t0, 40($t1)
	li $t0, 33
	la $t1, str_2
	sw $t0, 44($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 48($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 52($t1)
	j _main
_check:
	sw $ra, ($sp)
	lw $t2, _N
	lw $t1, 4($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L3
	b L2
L3:
	li $t2, 0
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L1
	b L2
L1:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L2:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_addList:
	sw $ra, ($sp)
	lw $t0, 8($sp)
	sw $t0, -136($sp)
	subu $sp, $sp, 140
	jal _check
	addi $sp, $sp, 140
	sw $v0, -4($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	seq $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L7
	b L4
L7:
	lw $t0, 4($sp)
	sw $t0, -136($sp)
	subu $sp, $sp, 140
	jal _check
	addi $sp, $sp, 140
	sw $v0, -12($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -12($sp)
	seq $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 424
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t2, -1
	lw $t1, -36($sp)
	seq $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L5
	b L4
L5:
	li $t2, 1
	lw $t1, _tail
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, _tail
	lw $t0, _tail
	sw $t0, -48($sp)
	li $t2, 1
	lw $t1, -48($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	li $t0, 0
	sw $t0, -60($sp)
	li $t2, 4
	lw $t1, _tail
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, _xlist
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, 8($sp)
	sw $t1, ($t0)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	li $t0, 0
	sw $t0, -80($sp)
	li $t2, 4
	lw $t1, _tail
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, _ylist
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -88($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t0, -88($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	li $t2, 1
	lw $t1, _now
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 424
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	lw $t1, -100($sp)
	sw $t1, ($t0)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t2, _targetx
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L10
	b L8
L10:
	lw $t2, _targety
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L9
	b L8
L9:
	li $t0, 1
	sw $t0, _ok
	lw $t0, _ok
	sw $t0, -132($sp)
L8:
L4:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -404($sp)
	la $t0, str_2
	sw $t0, -432($sp)
	subu $sp, $sp, 140
	jal _getchar
	addi $sp, $sp, 140
	sw $v0, -8($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	li $t1, 100
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	subu $sp, $sp, 140
	jal _getchar
	addi $sp, $sp, 140
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -20($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	li $t1, 10
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	subu $sp, $sp, 140
	jal _getchar
	addi $sp, $sp, 140
	sw $v0, -36($sp)
	lw $ra, ($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t2, 48
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, _N
	lw $t0, _N
	sw $t0, -4($sp)
	li $t2, 1
	lw $t1, _N
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, _targety
	lw $t0, _targety
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, _targetx
	lw $t0, _targetx
	sw $t0, -48($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -60($sp)
L12:
	lw $t2, _N
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	bne $t0, $0, L13
	b L11
L13:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -68($sp)
L15:
	lw $t2, _N
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L16
	b L14
L16:
	li $t0, 0
	sw $t0, -80($sp)
	li $t2, 424
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -104($sp)
	li $t2, 1
	lw $t1, -104($sp)
	sub $t0, $t1, $t2
	sw $t0, -100($sp)
	b L15
L14:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -116($sp)
	li $t2, 1
	lw $t1, -116($sp)
	sub $t0, $t1, $t2
	sw $t0, -112($sp)
	b L12
L11:
	lw $t0, _dx
	li $t1, -2
	sw $t1, ($t0)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t0, _dy
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t1, _dx
	li $t2, -2
	sw $t2, 4($t1)
	lw $t1, _dx
	lw $t0, 4($t1)
	sw $t0, -140($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -140($sp)
	lw $t1, _dy
	li $t2, 1
	sw $t2, 4($t1)
	lw $t1, _dy
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t1, _dx
	li $t2, 2
	sw $t2, 8($t1)
	lw $t1, _dx
	lw $t0, 8($t1)
	sw $t0, -156($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -156($sp)
	lw $t1, _dy
	li $t2, -1
	sw $t2, 8($t1)
	lw $t1, _dy
	lw $t0, 8($t1)
	sw $t0, -164($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -164($sp)
	lw $t1, _dx
	li $t2, 2
	sw $t2, 12($t1)
	lw $t1, _dx
	lw $t0, 12($t1)
	sw $t0, -172($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -172($sp)
	lw $t1, _dy
	li $t2, 1
	sw $t2, 12($t1)
	lw $t1, _dy
	lw $t0, 12($t1)
	sw $t0, -180($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -180($sp)
	lw $t1, _dx
	li $t2, -1
	sw $t2, 16($t1)
	lw $t1, _dx
	lw $t0, 16($t1)
	sw $t0, -188($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -188($sp)
	lw $t1, _dy
	li $t2, -2
	sw $t2, 16($t1)
	lw $t1, _dy
	lw $t0, 16($t1)
	sw $t0, -196($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -196($sp)
	lw $t1, _dx
	li $t2, -1
	sw $t2, 20($t1)
	lw $t1, _dx
	lw $t0, 20($t1)
	sw $t0, -204($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t1, _dy
	li $t2, 2
	sw $t2, 20($t1)
	lw $t1, _dy
	lw $t0, 20($t1)
	sw $t0, -212($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t1, _dx
	li $t2, 1
	sw $t2, 24($t1)
	lw $t1, _dx
	lw $t0, 24($t1)
	sw $t0, -220($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -220($sp)
	lw $t1, _dy
	li $t2, -2
	sw $t2, 24($t1)
	lw $t1, _dy
	lw $t0, 24($t1)
	sw $t0, -228($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -228($sp)
	lw $t1, _dx
	li $t2, 1
	sw $t2, 28($t1)
	lw $t1, _dx
	lw $t0, 28($t1)
	sw $t0, -236($sp)
	lw $t0, _dx
	lw $t1, ($t0)
	sw $t1, -236($sp)
	lw $t1, _dy
	li $t2, 2
	sw $t2, 28($t1)
	lw $t1, _dy
	lw $t0, 28($t1)
	sw $t0, -244($sp)
	lw $t0, _dy
	lw $t1, ($t0)
	sw $t1, -244($sp)
L18:
	lw $t2, _tail
	lw $t1, _head
	sle $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t0, -252($sp)
	bne $t0, $0, L19
	b L17
L19:
	li $t0, 0
	sw $t0, -260($sp)
	li $t2, 4
	lw $t1, _head
	mul $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, -260($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, _xlist
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -272($sp)
	lw $t0, -272($sp)
	sw $t0, _x
	lw $t0, _x
	sw $t0, -256($sp)
	li $t0, 0
	sw $t0, -280($sp)
	li $t2, 4
	lw $t1, _head
	mul $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t2, -284($sp)
	lw $t1, -280($sp)
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, _ylist
	add $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t0, -288($sp)
	lw $t1, ($t0)
	sw $t1, -292($sp)
	lw $t0, -292($sp)
	sw $t0, _y
	lw $t0, _y
	sw $t0, -276($sp)
	li $t0, 0
	sw $t0, -300($sp)
	li $t2, 424
	lw $t1, _x
	mul $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t2, -304($sp)
	lw $t1, -300($sp)
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	li $t2, 4
	lw $t1, _y
	mul $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, -300($sp)
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t2, -300($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -316($sp)
	lw $t0, -316($sp)
	sw $t0, _now
	lw $t0, _now
	sw $t0, -296($sp)
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -320($sp)
L21:
	li $t2, 8
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t0, -324($sp)
	bne $t0, $0, L22
	b L20
L22:
	li $t0, 0
	sw $t0, -328($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t2, -332($sp)
	lw $t1, -328($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t2, -328($sp)
	lw $t1, _dx
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t0, -336($sp)
	lw $t1, ($t0)
	sw $t1, -340($sp)
	lw $t2, -340($sp)
	lw $t1, _x
	add $t0, $t1, $t2
	sw $t0, -344($sp)
	li $t0, 0
	sw $t0, -348($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t2, -352($sp)
	lw $t1, -348($sp)
	add $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t2, -348($sp)
	lw $t1, _dy
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t0, -356($sp)
	lw $t1, ($t0)
	sw $t1, -360($sp)
	lw $t2, -360($sp)
	lw $t1, _y
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -344($sp)
	sw $t0, -440($sp)
	lw $t0, -364($sp)
	sw $t0, -444($sp)
	subu $sp, $sp, 448
	jal _addList
	addi $sp, $sp, 448
	sw $v0, -368($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t0, -380($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -376($sp)
	li $t2, 1
	lw $t1, -376($sp)
	sub $t0, $t1, $t2
	sw $t0, -372($sp)
	b L21
L20:
	li $t2, 1
	lw $t1, _ok
	seq $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t0, -384($sp)
	bne $t0, $0, L24
	b L23
L24:
	b L17
L23:
	li $t2, 1
	lw $t1, _head
	add $t0, $t1, $t2
	sw $t0, -396($sp)
	lw $t0, -396($sp)
	sw $t0, _head
	lw $t0, _head
	sw $t0, -392($sp)
	li $t2, 1
	lw $t1, -392($sp)
	sub $t0, $t1, $t2
	sw $t0, -388($sp)
	b L18
L17:
	li $t2, 1
	lw $t1, _ok
	seq $t0, $t1, $t2
	sw $t0, -400($sp)
	lw $t0, -400($sp)
	bne $t0, $0, L26
	b L27
L26:
	li $t0, 0
	sw $t0, -408($sp)
	li $t2, 424
	lw $t1, _targetx
	mul $t0, $t1, $t2
	sw $t0, -412($sp)
	lw $t2, -412($sp)
	lw $t1, -408($sp)
	add $t0, $t1, $t2
	sw $t0, -408($sp)
	li $t2, 4
	lw $t1, _targety
	mul $t0, $t1, $t2
	sw $t0, -416($sp)
	lw $t2, -416($sp)
	lw $t1, -408($sp)
	add $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t2, -408($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -420($sp)
	lw $t0, -420($sp)
	lw $t1, ($t0)
	sw $t1, -424($sp)
	lw $t0, -404($sp)
	sw $t0, -440($sp)
	lw $t0, -424($sp)
	sw $t0, -444($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 448
	jal _printf
	addi $sp, $sp, 448
	sw $v0, -428($sp)
	lw $ra, ($sp)
	b L25
L27:
	lw $t0, -432($sp)
	sw $t0, -440($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 444
	jal _printf
	addi $sp, $sp, 444
	sw $v0, -436($sp)
	lw $ra, ($sp)
L25:
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


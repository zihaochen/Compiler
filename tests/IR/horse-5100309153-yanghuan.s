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
	_step: .space 4
	_i: .space 4
	_j: .space 4
	ASU_1: .space 40004
	ASU_2: .space 40004
	ASU_3: .space 40004
	str_1: .asciiz "%d\n"
	str_2: .asciiz "no solution!\n"
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
	sw $t0, _step
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 20
	sw $t0, _N
	j _main
_check:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L3
	b L2
L3:
	li $t2, 0
	lw $t1, 8($sp)
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
	sw $t0, -132($sp)
	lw $t0, _N
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
	sw $t0, -132($sp)
	lw $t0, _N
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
	li $t2, 400
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
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, _tail
	lw $t0, _tail
	sw $t0, -44($sp)
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 4
	lw $t1, _tail
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, _xlist
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, 8($sp)
	sw $t1, ($t0)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	li $t0, 0
	sw $t0, -76($sp)
	li $t2, 4
	lw $t1, _tail
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, _ylist
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	li $t2, 1
	lw $t1, _now
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	li $t0, 0
	sw $t0, -100($sp)
	li $t2, 400
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	lw $t1, -96($sp)
	sw $t1, ($t0)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t2, _targetx
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L10
	b L8
L10:
	lw $t2, _targety
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L9
	b L8
L9:
	li $t0, 1
	sw $t0, _ok
	lw $t0, _ok
	sw $t0, -128($sp)
L8:
L4:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -260($sp)
	la $t0, str_2
	sw $t0, -288($sp)
	li $t2, 1
	lw $t1, _N
	sub $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, _targety
	lw $t0, _targety
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, _targetx
	lw $t0, _targetx
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -16($sp)
L12:
	lw $t2, _N
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L13
	b L11
L13:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -24($sp)
L15:
	lw $t2, _N
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	bne $t0, $0, L16
	b L14
L16:
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 400
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t0, -48($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -60($sp)
	li $t2, 1
	lw $t1, -60($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	b L15
L14:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -72($sp)
	li $t2, 1
	lw $t1, -72($sp)
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	b L12
L11:
L18:
	lw $t2, _tail
	lw $t1, _head
	sle $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	bne $t0, $0, L19
	b L17
L19:
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, _head
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, _xlist
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t0, -100($sp)
	sw $t0, _x
	lw $t0, _x
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -108($sp)
	li $t2, 4
	lw $t1, _head
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, -108($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, _ylist
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t0, -120($sp)
	sw $t0, _y
	lw $t0, _y
	sw $t0, -104($sp)
	li $t0, 0
	sw $t0, -128($sp)
	li $t2, 400
	lw $t1, _x
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	li $t2, 4
	lw $t1, _y
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	lw $t0, -144($sp)
	sw $t0, _now
	lw $t0, _now
	sw $t0, -124($sp)
	li $t2, 1
	lw $t1, _x
	sub $t0, $t1, $t2
	sw $t0, -148($sp)
	li $t2, 2
	lw $t1, _y
	sub $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -148($sp)
	sw $t0, -296($sp)
	lw $t0, -152($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -156($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _x
	sub $t0, $t1, $t2
	sw $t0, -160($sp)
	li $t2, 2
	lw $t1, _y
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -160($sp)
	sw $t0, -296($sp)
	lw $t0, -164($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -168($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _x
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	li $t2, 2
	lw $t1, _y
	sub $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -172($sp)
	sw $t0, -296($sp)
	lw $t0, -176($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -180($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _x
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	li $t2, 2
	lw $t1, _y
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -184($sp)
	sw $t0, -296($sp)
	lw $t0, -188($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -192($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, _x
	sub $t0, $t1, $t2
	sw $t0, -196($sp)
	li $t2, 1
	lw $t1, _y
	sub $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -196($sp)
	sw $t0, -296($sp)
	lw $t0, -200($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -204($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, _x
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	li $t2, 1
	lw $t1, _y
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -208($sp)
	sw $t0, -296($sp)
	lw $t0, -212($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -216($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, _x
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	li $t2, 1
	lw $t1, _y
	sub $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -220($sp)
	sw $t0, -296($sp)
	lw $t0, -224($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -228($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, _x
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	li $t2, 1
	lw $t1, _y
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -232($sp)
	sw $t0, -296($sp)
	lw $t0, -236($sp)
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _addList
	addi $sp, $sp, 304
	sw $v0, -240($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _ok
	seq $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t0, -244($sp)
	bne $t0, $0, L21
	b L20
L21:
	b L17
L20:
	li $t2, 1
	lw $t1, _head
	add $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t0, -252($sp)
	sw $t0, _head
	lw $t0, _head
	sw $t0, -248($sp)
	b L18
L17:
	li $t2, 1
	lw $t1, _ok
	seq $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	bne $t0, $0, L23
	b L24
L23:
	li $t0, 0
	sw $t0, -264($sp)
	li $t2, 400
	lw $t1, _targetx
	mul $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, -268($sp)
	lw $t1, -264($sp)
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	li $t2, 4
	lw $t1, _targety
	mul $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -264($sp)
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, _step
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -280($sp)
	lw $t0, -260($sp)
	sw $t0, -296($sp)
	lw $t0, -280($sp)
	sw $t0, -300($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 304
	jal _printf
	addi $sp, $sp, 304
	sw $v0, -284($sp)
	lw $ra, ($sp)
	b L22
L24:
	lw $t0, -288($sp)
	sw $t0, -296($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 300
	jal _printf
	addi $sp, $sp, 300
	sw $v0, -292($sp)
	lw $ra, ($sp)
L22:
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
	addu $a1, $a1, 1
	beq $a0, '%', _printf_fmt
	li $v0, 11
	syscall
	b _printf_loop

_printf_fmt:
	lb $a0, 0($a1)
	addu $a1, $a1, 1
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
	addu $a1, $a1, 1
	sub $t1, $t1, '1'
	addu $a1, $a1, 1
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


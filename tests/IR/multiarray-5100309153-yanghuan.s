.data
	_printf_cnt: .space 4
	_a: .space 4
	_i: .space 4
	_j: .space 4
	_b: .space 4
	_forStructArray_1: .space 4
	_forStructArray_2: .space 4
	_forStructArray_3: .space 4
	_forStructArray_4: .space 4
	_forStructArray_5: .space 4
	ASU_1: .space 164
	ASU_2: .space 64
	ASU_3: .space 12
	ASU_4: .space 12
	ASU_5: .space 12
	ASU_6: .space 12
	ASU_7: .space 12
	str_1: .space 12
	str_2: .space 8
	str_3: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	la $t0, ASU_2
	sw $t0, _b
	la $t0, ASU_3
	sw $t0, _forStructArray_1
	la $t0, ASU_4
	sw $t0, _forStructArray_2
	la $t0, ASU_5
	sw $t0, _forStructArray_3
	la $t0, ASU_6
	sw $t0, _forStructArray_4
	la $t0, ASU_7
	sw $t0, _forStructArray_5
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t1, _b
	lw $t2, _forStructArray_1
	sw $t2, 0($t1)
	lw $t1, _b
	lw $t2, _forStructArray_2
	sw $t2, 12($t1)
	lw $t1, _b
	lw $t2, _forStructArray_3
	sw $t2, 24($t1)
	lw $t1, _b
	lw $t2, _forStructArray_4
	sw $t2, 36($t1)
	lw $t1, _b
	lw $t2, _forStructArray_5
	sw $t2, 48($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 0($t1)
	j _main
_printNum:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -4($sp)
	la $t0, str_2
	sw $t0, -12($sp)
	lw $t0, -4($sp)
	sw $t0, -20($sp)
	lw $t0, 4($sp)
	sw $t0, -24($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 28
	jal _printf
	addi $sp, $sp, 28
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -20($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 24
	jal _printf
	addi $sp, $sp, 24
	sw $v0, -16($sp)
	lw $ra, ($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_3
	sw $t0, -268($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -4($sp)
L2:
	li $t2, 4
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -12($sp)
L5:
	li $t2, 10
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -24($sp)
	li $t2, 40
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	li $t1, 888
	sw $t1, ($t0)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -48($sp)
	li $t2, 1
	lw $t1, -48($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	b L5
L4:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -60($sp)
	li $t2, 1
	lw $t1, -60($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	b L2
L1:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -68($sp)
L8:
	li $t2, 5
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t0, 0
	sw $t0, -80($sp)
	li $t2, 12
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t1, -92($sp)
	li $t2, -1
	sw $t2, 0($t1)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -100($sp)
	li $t2, 1
	lw $t1, -100($sp)
	sub $t0, $t1, $t2
	sw $t0, -96($sp)
	b L8
L7:
	lw $t1, _a
	lw $t0, 156($t1)
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	sw $t0, -332($sp)
	subu $sp, $sp, 336
	jal _printNum
	addi $sp, $sp, 336
	sw $v0, -112($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -116($sp)
L11:
	li $t2, 3
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -124($sp)
L14:
	li $t2, 9
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t2, 10
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, _j
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	li $t0, 0
	sw $t0, -144($sp)
	li $t2, 40
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
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	lw $t1, -140($sp)
	sw $t1, ($t0)
	lw $t0, -156($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, -156($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -168($sp)
	li $t2, 1
	lw $t1, -168($sp)
	sub $t0, $t1, $t2
	sw $t0, -164($sp)
	b L14
L13:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -180($sp)
	li $t2, 1
	lw $t1, -180($sp)
	sub $t0, $t1, $t2
	sw $t0, -176($sp)
	b L11
L10:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -188($sp)
L17:
	li $t2, 3
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -196($sp)
L20:
	li $t2, 9
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t0, 0
	sw $t0, -204($sp)
	li $t2, 40
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	lw $t1, ($t0)
	sw $t1, -220($sp)
	lw $t0, -220($sp)
	sw $t0, -332($sp)
	subu $sp, $sp, 336
	jal _printNum
	addi $sp, $sp, 336
	sw $v0, -224($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -232($sp)
	li $t2, 1
	lw $t1, -232($sp)
	sub $t0, $t1, $t2
	sw $t0, -228($sp)
	b L20
L19:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -244($sp)
	li $t2, 1
	lw $t1, -244($sp)
	sub $t0, $t1, $t2
	sw $t0, -240($sp)
	b L17
L16:
	lw $t1, _a
	li $t2, 0
	sw $t2, 120($t1)
	lw $t1, _a
	lw $t0, 120($t1)
	sw $t0, -252($sp)
	lw $t0, _a
	lw $t1, ($t0)
	sw $t1, -252($sp)
	lw $t1, _a
	lw $t0, 120($t1)
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	sw $t0, -332($sp)
	subu $sp, $sp, 336
	jal _printNum
	addi $sp, $sp, 336
	sw $v0, -264($sp)
	lw $ra, ($sp)
	lw $t0, -268($sp)
	sw $t0, -332($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 336
	jal _printf
	addi $sp, $sp, 336
	sw $v0, -272($sp)
	lw $ra, ($sp)
	lw $t0, _b
	lw $t1, ($t0)
	sw $t1, -280($sp)
	lw $t1, -280($sp)
	li $t2, -2
	sw $t2, 0($t1)
	lw $t1, _a
	lw $t0, 120($t1)
	sw $t0, -288($sp)
	li $t0, 0
	sw $t0, -292($sp)
	li $t2, 12
	lw $t1, -288($sp)
	mul $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t2, -296($sp)
	lw $t1, -292($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t0, -300($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	lw $t1, -304($sp)
	li $t2, -10
	sw $t2, 0($t1)
	lw $t0, _b
	lw $t1, ($t0)
	sw $t1, -308($sp)
	lw $t1, -308($sp)
	lw $t0, 0($t1)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -332($sp)
	subu $sp, $sp, 336
	jal _printNum
	addi $sp, $sp, 336
	sw $v0, -316($sp)
	lw $ra, ($sp)
	lw $t1, _b
	lw $t0, 12($t1)
	sw $t0, -320($sp)
	lw $t1, -320($sp)
	lw $t0, 0($t1)
	sw $t0, -324($sp)
	lw $t0, -324($sp)
	sw $t0, -332($sp)
	subu $sp, $sp, 336
	jal _printNum
	addi $sp, $sp, 336
	sw $v0, -328($sp)
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


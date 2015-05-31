.data
	_printf_cnt: .space 4
	_a: .space 4
	_i: .space 4
	_j: .space 4
	_sum: .space 4
	_cnt: .space 4
	ASU_1: .space 80004
	str_1: .asciiz "%d\n"
	str_2: .asciiz "%d\n"
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 0
	sw $t0, _sum
	li $t0, 0
	sw $t0, _cnt
	j _main
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -188($sp)
	la $t0, str_2
	sw $t0, -196($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -4($sp)
L2:
	li $t2, 100
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
	li $t2, 100
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -24($sp)
	li $t2, 400
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
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, _j
	sw $t0, -44($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, _j
	b L5
L4:
	lw $t0, _i
	sw $t0, -48($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, _i
	b L2
L1:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -52($sp)
L8:
	li $t2, 100
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t2, 20
	lw $t1, _i
	sgt $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t2, 80
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	bne $t0, $0, L11
	b L10
L11:
	li $t0, 0
	sw $t0, -72($sp)
	li $t2, 400
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -68($sp)
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -88($sp)
L14:
	li $t2, 100
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t2, 5
	lw $t1, _j
	sgt $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L17
	b L18
L18:
	li $t2, 90
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L17
	b L16
L17:
	lw $t0, _cnt
	sw $t0, -104($sp)
	li $t2, 1
	lw $t1, _cnt
	add $t0, $t1, $t2
	sw $t0, _cnt
	li $t2, 50
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t0, -116($sp)
	lw $t1, -112($sp)
	sw $t1, ($t0)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
L16:
	lw $t0, _j
	sw $t0, -128($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, _j
	b L14
L13:
L10:
	lw $t0, _i
	sw $t0, -132($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, _i
	b L8
L7:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -136($sp)
L20:
	li $t2, 100
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t0, 0
	sw $t0, _j
	lw $t0, _j
	sw $t0, -144($sp)
L23:
	li $t2, 100
	lw $t1, _j
	slt $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L24
	b L22
L24:
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 400
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	lw $t1, ($t0)
	sw $t1, -172($sp)
	lw $t2, -172($sp)
	lw $t1, _sum
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	sw $t0, _sum
	lw $t0, _sum
	sw $t0, -152($sp)
	lw $t0, _j
	sw $t0, -180($sp)
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, _j
	b L23
L22:
	lw $t0, _i
	sw $t0, -184($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, _i
	b L20
L19:
	lw $t0, -188($sp)
	sw $t0, -204($sp)
	lw $t0, _cnt
	sw $t0, -208($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 212
	jal _printf
	addi $sp, $sp, 212
	sw $v0, -192($sp)
	lw $ra, ($sp)
	lw $t0, -196($sp)
	sw $t0, -204($sp)
	lw $t0, _sum
	sw $t0, -208($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 212
	jal _printf
	addi $sp, $sp, 212
	sw $v0, -200($sp)
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

_malloc:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	move $t0, $v0
	li $v0, 9
	li $a0, 4
	syscall
	sw $t0, ($v0)
	jr $ra


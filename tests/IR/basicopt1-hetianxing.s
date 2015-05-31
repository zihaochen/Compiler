.data
	_printf_cnt: .space 4
	ASU_1: .space 40004
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
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
	j _main
_main:
	sw $ra, ($sp)
	la $t0, ASU_1
	sw $t0, -4($sp)
	la $t0, str_1
	sw $t0, -252($sp)
	li $t0, 0
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
L2:
	li $t2, 100
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -28($sp)
L5:
	li $t2, 100
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -40($sp)
	li $t2, 400
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t0, -52($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -64($sp)
	li $t2, 1
	lw $t1, -64($sp)
	sub $t0, $t1, $t2
	sw $t0, -60($sp)
	b L5
L4:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -76($sp)
	li $t2, 1
	lw $t1, -76($sp)
	sub $t0, $t1, $t2
	sw $t0, -72($sp)
	b L2
L1:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -84($sp)
L8:
	li $t2, 100
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t2, 20
	lw $t1, -8($sp)
	sgt $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t2, 80
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L11
	b L10
L11:
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 400
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -120($sp)
L14:
	li $t2, 100
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t2, 5
	lw $t1, -12($sp)
	sgt $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L17
	b L18
L18:
	li $t2, 90
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	bne $t0, $0, L17
	b L16
L17:
	li $t2, 50
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -144($sp)
	li $t2, 4
	lw $t1, -144($sp)
	mul $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	lw $t0, -148($sp)
	lw $t1, -140($sp)
	sw $t1, ($t0)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -136($sp)
L16:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -164($sp)
	li $t2, 1
	lw $t1, -164($sp)
	sub $t0, $t1, $t2
	sw $t0, -160($sp)
	b L14
L13:
L10:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -176($sp)
	li $t2, 1
	lw $t1, -176($sp)
	sub $t0, $t1, $t2
	sw $t0, -172($sp)
	b L8
L7:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -184($sp)
L20:
	li $t2, 100
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -192($sp)
L23:
	li $t2, 100
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	bne $t0, $0, L24
	b L22
L24:
	li $t0, 0
	sw $t0, -204($sp)
	li $t2, 400
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, -212($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	lw $t1, ($t0)
	sw $t1, -220($sp)
	lw $t2, -220($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -200($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -232($sp)
	li $t2, 1
	lw $t1, -232($sp)
	sub $t0, $t1, $t2
	sw $t0, -228($sp)
	b L23
L22:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -244($sp)
	li $t2, 1
	lw $t1, -244($sp)
	sub $t0, $t1, $t2
	sw $t0, -240($sp)
	b L20
L19:
	lw $t0, -252($sp)
	sw $t0, -260($sp)
	lw $t0, -16($sp)
	sw $t0, -264($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 268
	jal _printf
	addi $sp, $sp, 268
	sw $v0, -256($sp)
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


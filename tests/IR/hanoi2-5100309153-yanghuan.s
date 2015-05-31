.data
	_printf_cnt: .space 4
	str_1: .space 40
	str_2: .space 40
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
	li $t0, 99
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 45
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 62
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 36($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 45
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 62
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 99
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 36($t1)
	j _main
_hanoi:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -16($sp)
	la $t0, str_2
	sw $t0, -32($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L3
L2:
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, 16($sp)
	sw $t0, -40($sp)
	lw $t0, 8($sp)
	sw $t0, -44($sp)
	lw $t0, 12($sp)
	sw $t0, -48($sp)
	lw $t0, -8($sp)
	sw $t0, -52($sp)
	subu $sp, $sp, 56
	jal _hanoi
	addi $sp, $sp, 56
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -40($sp)
	lw $t0, 16($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 52
	jal _printf
	addi $sp, $sp, 52
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, 12($sp)
	sw $t0, -40($sp)
	lw $t0, 16($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	lw $t0, -24($sp)
	sw $t0, -52($sp)
	subu $sp, $sp, 56
	jal _hanoi
	addi $sp, $sp, 56
	sw $v0, -28($sp)
	lw $ra, ($sp)
	b L1
L3:
	lw $t0, -32($sp)
	sw $t0, -40($sp)
	lw $t0, 16($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 52
	jal _printf
	addi $sp, $sp, 52
	sw $v0, -36($sp)
	lw $ra, ($sp)
L1:
	jr $ra
_main:
	sw $ra, ($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -8($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	li $t1, 10
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t2, -20($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	li $t2, 48
	lw $t1, -24($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -4($sp)
	li $t2, 0
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L5
	b L4
L5:
	li $t0, 97
	sw $t0, -40($sp)
	li $t0, 98
	sw $t0, -44($sp)
	li $t0, 99
	sw $t0, -48($sp)
	lw $t0, -4($sp)
	sw $t0, -52($sp)
	subu $sp, $sp, 56
	jal _hanoi
	addi $sp, $sp, 56
	sw $v0, -36($sp)
	lw $ra, ($sp)
L4:
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


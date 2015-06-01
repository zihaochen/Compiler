.data
	_printf_cnt: .space 4
	str_1: .space 16
	str_2: .space 64
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
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 97
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 61
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 44
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 98
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 36($t1)
	li $t0, 61
	la $t1, str_2
	sw $t0, 40($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 44($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 48($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 52($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 56($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 60($t1)
	j _main
_read:
	sw $ra, ($sp)
	subu $sp, $sp, 40
	jal _getchar
	addi $sp, $sp, 40
	sw $v0, -4($sp)
	lw $ra, ($sp)
L2:
	li $t2, 48
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L3
	b L4
L4:
	li $t2, 57
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L3
	b L1
L3:
	subu $sp, $sp, 40
	jal _getchar
	addi $sp, $sp, 40
	sw $v0, -4($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	b L2
L1:
	li $t2, 48
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -32($sp)
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_print:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -8($sp)
	li $t0, 12345
	sw $t0, -4($sp)
	lw $t0, -8($sp)
	sw $t0, -16($sp)
	lw $t0, -4($sp)
	sw $t0, -20($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 24
	jal _printf
	addi $sp, $sp, 24
	sw $v0, -12($sp)
	lw $ra, ($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_2
	sw $t0, -24($sp)
	subu $sp, $sp, 32
	jal _read
	addi $sp, $sp, 32
	sw $v0, -4($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 32
	jal _read
	addi $sp, $sp, 32
	sw $v0, -12($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 32
	jal _print
	addi $sp, $sp, 32
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t0, -24($sp)
	sw $t0, -32($sp)
	lw $t0, -4($sp)
	sw $t0, -36($sp)
	lw $t0, -12($sp)
	sw $t0, -40($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 44
	jal _printf
	addi $sp, $sp, 44
	sw $v0, -28($sp)
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
	lw $a3, 0($a2)
	b _printf_str_loop

_printf_str_loop:
	lw $a0, ($a3)
	beq $a0, 0, _printf_loop
	li $v0, 11
	syscall
	addu $a3, $a3, 4
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

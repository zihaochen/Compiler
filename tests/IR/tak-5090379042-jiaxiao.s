.data
	_printf_cnt: .space 4
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
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
	j _main
_tak:
	sw $ra, ($sp)
	lw $t2, 12($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L3
L2:
	li $t2, 1
	lw $t1, 12($sp)
	sub $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -40($sp)
	lw $t0, 8($sp)
	sw $t0, -44($sp)
	lw $t0, 4($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _tak
	addi $sp, $sp, 52
	sw $v0, -12($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 8($sp)
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -40($sp)
	lw $t0, 4($sp)
	sw $t0, -44($sp)
	lw $t0, 12($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _tak
	addi $sp, $sp, 52
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -40($sp)
	lw $t0, 12($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _tak
	addi $sp, $sp, 52
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -40($sp)
	lw $t0, -20($sp)
	sw $t0, -44($sp)
	lw $t0, -28($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _tak
	addi $sp, $sp, 52
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t2, -32($sp)
	li $t1, 1
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $v0, -36($sp)
	sw $v0, -36($sp)
	jr $ra
	b L1
L3:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
L1:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -92($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
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
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	li $t2, 48
	lw $t1, -36($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -16($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -44($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -52($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -52($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	li $t1, 10
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -64($sp)
	lw $ra, ($sp)
	lw $t2, -64($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t2, 48
	lw $t1, -68($sp)
	sub $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -76($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 52
	jal _getchar
	addi $sp, $sp, 52
	sw $v0, -84($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -84($sp)
	sub $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -80($sp)
	lw $t0, -4($sp)
	sw $t0, -104($sp)
	lw $t0, -8($sp)
	sw $t0, -108($sp)
	lw $t0, -12($sp)
	sw $t0, -112($sp)
	subu $sp, $sp, 116
	jal _tak
	addi $sp, $sp, 116
	sw $v0, -96($sp)
	lw $ra, ($sp)
	lw $t0, -92($sp)
	sw $t0, -104($sp)
	lw $t0, -96($sp)
	sw $t0, -108($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 112
	jal _printf
	addi $sp, $sp, 112
	sw $v0, -100($sp)
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


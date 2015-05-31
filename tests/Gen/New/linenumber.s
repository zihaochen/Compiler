.data
	_printf_cnt: .space 4
	str_1: .space 40
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
	li $t0, 46
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 51
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 58
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 115
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 36($t1)
	j _main
_getline1:
	sw $ra, ($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L2:
	li $t2, 10
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L3
	b L1
L3:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t0, 4($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	li $t2, 4
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -28($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $t0, -44($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -40($sp)
	b L2
L1:
	li $t2, 10
	lw $t1, -4($sp)
	seq $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L5
	b L4
L5:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t0, 4($sp)
	li $t1, 10
	sw $t1, ($t0)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	li $t2, 4
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -60($sp)
L4:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t0, 4($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	jr $ra
_isdecdigit:
	sw $ra, ($sp)
	li $t2, 48
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L8
	b L7
L8:
	li $t2, 57
	lw $t1, 4($sp)
	sle $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L6
	b L7
L6:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L7:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_getint:
	sw $ra, ($sp)
L10:
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -60($sp)
	subu $sp, $sp, 64
	jal _isdecdigit
	addi $sp, $sp, 64
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L9
	b L11
L11:
	b L10
	b L10
L9:
	li $t2, 48
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -24($sp)
L13:
	subu $sp, $sp, 64
	jal _getchar
	addi $sp, $sp, 64
	sw $v0, -36($sp)
	lw $ra, ($sp)
	lw $t0, -36($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -60($sp)
	subu $sp, $sp, 64
	jal _isdecdigit
	addi $sp, $sp, 64
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L14
	b L12
L14:
	li $t2, 10
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -4($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t2, 48
	lw $t1, -52($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -44($sp)
	b L13
L12:
	lw $v0, -8($sp)
	sw $v0, -8($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -40($sp)
	li $t0, 0
	sw $t0, -8($sp)
	subu $sp, $sp, 64
	jal _getint
	addi $sp, $sp, 64
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L16:
	lw $t2, -4($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L17
	b L15
L17:
	li $t2, 505
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -56($sp)
	subu $sp, $sp, 60
	jal _malloc
	addi $sp, $sp, 60
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -32($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -56($sp)
	subu $sp, $sp, 60
	jal _getline1
	addi $sp, $sp, 60
	sw $v0, -36($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -44($sp)
	lw $t0, -40($sp)
	sw $t0, -56($sp)
	lw $t0, -44($sp)
	sw $t0, -60($sp)
	lw $t0, -24($sp)
	sw $t0, -64($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 68
	jal _printf
	addi $sp, $sp, 68
	sw $v0, -52($sp)
	lw $ra, ($sp)
	b L16
L15:
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


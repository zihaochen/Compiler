.data
	_printf_cnt: .space 4
	str_1: .space 48
	str_2: .space 124
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 101
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 120
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 112
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 108
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 111
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 101
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 36($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 40($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 44($t1)
	li $t0, 87
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 119
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 44
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 99
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 110
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 103
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 114
	la $t1, str_2
	sw $t0, 36($t1)
	li $t0, 97
	la $t1, str_2
	sw $t0, 40($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 44($t1)
	li $t0, 117
	la $t1, str_2
	sw $t0, 48($t1)
	li $t0, 108
	la $t1, str_2
	sw $t0, 52($t1)
	li $t0, 97
	la $t1, str_2
	sw $t0, 56($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 60($t1)
	li $t0, 105
	la $t1, str_2
	sw $t0, 64($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 68($t1)
	li $t0, 110
	la $t1, str_2
	sw $t0, 72($t1)
	li $t0, 115
	la $t1, str_2
	sw $t0, 76($t1)
	li $t0, 33
	la $t1, str_2
	sw $t0, 80($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 84($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 88($t1)
	li $t0, 49
	la $t1, str_2
	sw $t0, 92($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 96($t1)
	li $t0, 61
	la $t1, str_2
	sw $t0, 100($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 104($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 108($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 112($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 116($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 120($t1)
	j _main
_isdecdigit:
	sw $ra, ($sp)
	li $t2, 48
	lw $t1, 4($sp)
	sge $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L3
	b L2
L3:
	li $t2, 57
	lw $t1, 4($sp)
	sle $t0, $t1, $t2
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
_getint:
	sw $ra, ($sp)
L5:
	subu $sp, $sp, 60
	jal _getchar
	addi $sp, $sp, 60
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
	bne $t0, $0, L4
	b L6
L6:
	b L5
	b L5
L4:
	li $t2, 48
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -24($sp)
L8:
	subu $sp, $sp, 60
	jal _getchar
	addi $sp, $sp, 60
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
	bne $t0, $0, L9
	b L7
L9:
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
	b L8
L7:
	lw $v0, -8($sp)
	sw $v0, -8($sp)
	jr $ra
	jr $ra
_explode:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -16($sp)
	lw $t0, 4($sp)
	bne $t0, $0, L11
	b L10
L11:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L13:
	li $t2, 1000
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L14
	b L12
L14:
	lw $t0, -16($sp)
	sw $t0, -32($sp)
	lw $t0, -4($sp)
	sw $t0, -36($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 40
	jal _printf
	addi $sp, $sp, 40
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -24($sp)
	b L13
L12:
L10:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_2
	sw $t0, -100($sp)
	subu $sp, $sp, 124
	jal _getint
	addi $sp, $sp, 124
	sw $v0, -8($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	subu $sp, $sp, 124
	jal _getint
	addi $sp, $sp, 124
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 2
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -16($sp)
	subu $sp, $sp, 124
	jal _getint
	addi $sp, $sp, 124
	sw $v0, -32($sp)
	lw $ra, ($sp)
	li $t2, 3
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -28($sp)
	li $t0, 100
	sw $t0, -40($sp)
L16:
	li $t2, 0
	lw $t1, -40($sp)
	sgt $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	bne $t0, $0, L17
	b L15
L17:
	li $t2, 0
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L19
	b L21
L21:
	lw $t0, -4($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -52($sp)
	lw $ra, ($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L19
	b L20
L19:
	li $t2, 1
	lw $t1, -16($sp)
	sgt $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	bne $t0, $0, L26
	b L25
L26:
	li $t2, 2
	lw $t1, -28($sp)
	sgt $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L23
	b L25
L25:
	lw $t0, -16($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -64($sp)
	lw $ra, ($sp)
	lw $t0, -64($sp)
	bne $t0, $0, L23
	b L24
L23:
	li $t2, 0
	lw $t1, -16($sp)
	sle $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	bne $t0, $0, L30
	b L29
L30:
	lw $t0, -28($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -72($sp)
	lw $ra, ($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L28
	b L29
L28:
	lw $t0, -28($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -76($sp)
	lw $ra, ($sp)
	b L27
L29:
	lw $t0, -16($sp)
	bne $t0, $0, L38
	b L37
L38:
	lw $t0, -28($sp)
	bne $t0, $0, L35
	b L37
L37:
	li $t0, 1000
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -80($sp)
	lw $ra, ($sp)
	lw $t0, -80($sp)
	bne $t0, $0, L35
	b L36
L36:
	lw $t0, -4($sp)
	bne $t0, $0, L35
	b L33
L35:
	li $t0, 0
	bne $t0, $0, L34
	b L33
L34:
	li $t0, 1000
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -84($sp)
	lw $ra, ($sp)
	lw $t0, -84($sp)
	bne $t0, $0, L32
	b L33
L32:
	li $t0, 1000
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -88($sp)
	lw $ra, ($sp)
	b L31
L33:
	li $t0, 0
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -92($sp)
	lw $ra, ($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L41
	b L39
L41:
	li $t2, 1
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L40
	b L39
L40:
	lw $t0, -100($sp)
	sw $t0, -124($sp)
	lw $t0, -4($sp)
	sw $t0, -128($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 132
	jal _printf
	addi $sp, $sp, 132
	sw $v0, -104($sp)
	lw $ra, ($sp)
L39:
L31:
L27:
	b L22
L24:
	lw $t0, -16($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -108($sp)
	lw $ra, ($sp)
L22:
	b L18
L20:
	lw $t0, -4($sp)
	sw $t0, -124($sp)
	subu $sp, $sp, 128
	jal _explode
	addi $sp, $sp, 128
	sw $v0, -112($sp)
	lw $ra, ($sp)
L18:
	li $t2, 1
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -116($sp)
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
	lw $a3, 0($a2)
	b _printf_str_loop

_printf_str_loop:
	addu $a3, $a3, 4
	lw $a0, ($a3)
	beq $a0, 0, _printf_loop
	li $v0, 11
	syscall
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

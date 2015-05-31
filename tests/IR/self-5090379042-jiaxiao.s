.data
	_printf_cnt: .space 4
	_f: .space 4
	_str_ptr_1: .space 4
	str_1: .space 292
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, str_1
	sw $t0, _str_ptr_1
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t0, _str_ptr_1
	sw $t0, _f
	li $t0, 35
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 105
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 110
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 108
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 117
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 101
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 60
	la $t1, str_1
	sw $t0, 36($t1)
	li $t0, 115
	la $t1, str_1
	sw $t0, 40($t1)
	li $t0, 116
	la $t1, str_1
	sw $t0, 44($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 48($t1)
	li $t0, 105
	la $t1, str_1
	sw $t0, 52($t1)
	li $t0, 111
	la $t1, str_1
	sw $t0, 56($t1)
	li $t0, 46
	la $t1, str_1
	sw $t0, 60($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 64($t1)
	li $t0, 62
	la $t1, str_1
	sw $t0, 68($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 72($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 76($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 80($t1)
	li $t0, 104
	la $t1, str_1
	sw $t0, 84($t1)
	li $t0, 97
	la $t1, str_1
	sw $t0, 88($t1)
	li $t0, 114
	la $t1, str_1
	sw $t0, 92($t1)
	li $t0, 42
	la $t1, str_1
	sw $t0, 96($t1)
	li $t0, 102
	la $t1, str_1
	sw $t0, 100($t1)
	li $t0, 61
	la $t1, str_1
	sw $t0, 104($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 108($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 112($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 116($t1)
	li $t0, 115
	la $t1, str_1
	sw $t0, 120($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 124($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 128($t1)
	li $t0, 59
	la $t1, str_1
	sw $t0, 132($t1)
	li $t0, 105
	la $t1, str_1
	sw $t0, 136($t1)
	li $t0, 110
	la $t1, str_1
	sw $t0, 140($t1)
	li $t0, 116
	la $t1, str_1
	sw $t0, 144($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 148($t1)
	li $t0, 109
	la $t1, str_1
	sw $t0, 152($t1)
	li $t0, 97
	la $t1, str_1
	sw $t0, 156($t1)
	li $t0, 105
	la $t1, str_1
	sw $t0, 160($t1)
	li $t0, 110
	la $t1, str_1
	sw $t0, 164($t1)
	li $t0, 40
	la $t1, str_1
	sw $t0, 168($t1)
	li $t0, 41
	la $t1, str_1
	sw $t0, 172($t1)
	li $t0, 123
	la $t1, str_1
	sw $t0, 176($t1)
	li $t0, 112
	la $t1, str_1
	sw $t0, 180($t1)
	li $t0, 114
	la $t1, str_1
	sw $t0, 184($t1)
	li $t0, 105
	la $t1, str_1
	sw $t0, 188($t1)
	li $t0, 110
	la $t1, str_1
	sw $t0, 192($t1)
	li $t0, 116
	la $t1, str_1
	sw $t0, 196($t1)
	li $t0, 102
	la $t1, str_1
	sw $t0, 200($t1)
	li $t0, 40
	la $t1, str_1
	sw $t0, 204($t1)
	li $t0, 102
	la $t1, str_1
	sw $t0, 208($t1)
	li $t0, 44
	la $t1, str_1
	sw $t0, 212($t1)
	li $t0, 49
	la $t1, str_1
	sw $t0, 216($t1)
	li $t0, 48
	la $t1, str_1
	sw $t0, 220($t1)
	li $t0, 44
	la $t1, str_1
	sw $t0, 224($t1)
	li $t0, 51
	la $t1, str_1
	sw $t0, 228($t1)
	li $t0, 52
	la $t1, str_1
	sw $t0, 232($t1)
	li $t0, 44
	la $t1, str_1
	sw $t0, 236($t1)
	li $t0, 102
	la $t1, str_1
	sw $t0, 240($t1)
	li $t0, 44
	la $t1, str_1
	sw $t0, 244($t1)
	li $t0, 51
	la $t1, str_1
	sw $t0, 248($t1)
	li $t0, 52
	la $t1, str_1
	sw $t0, 252($t1)
	li $t0, 44
	la $t1, str_1
	sw $t0, 256($t1)
	li $t0, 49
	la $t1, str_1
	sw $t0, 260($t1)
	li $t0, 48
	la $t1, str_1
	sw $t0, 264($t1)
	li $t0, 41
	la $t1, str_1
	sw $t0, 268($t1)
	li $t0, 59
	la $t1, str_1
	sw $t0, 272($t1)
	li $t0, 125
	la $t1, str_1
	sw $t0, 276($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 280($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 284($t1)
	j _main
_main:
	sw $ra, ($sp)
	lw $t0, _f
	sw $t0, -8($sp)
	li $t0, 10
	sw $t0, -12($sp)
	li $t0, 34
	sw $t0, -16($sp)
	lw $t0, _f
	sw $t0, -20($sp)
	li $t0, 34
	sw $t0, -24($sp)
	li $t0, 10
	sw $t0, -28($sp)
	li $t0, 6
	sw $t0, _printf_cnt
	subu $sp, $sp, 32
	jal _printf
	addi $sp, $sp, 32
	sw $v0, -4($sp)
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


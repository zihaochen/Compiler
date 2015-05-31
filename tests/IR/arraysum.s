.data
	_printf_cnt: .space 4
	_a: .space 4
	_struct_member_1: .space 4
	_b: .space 4
	_struct_member_2: .space 4
	ASU_1: .space 8
	ASU_2: .space 20
	ASU_3: .space 8
	ASU_4: .space 20
	ASU_5: .space 8
	ASU_6: .space 20
	ASU_7: .space 8
	ASU_8: .space 20
	ASU_9: .space 8
	ASU_10: .space 20
	ASU_11: .space 8
	ASU_12: .space 20
	str_1: .space 32
	str_2: .space 32
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	la $t0, ASU_2
	sw $t0, _struct_member_1
	la $t0, ASU_3
	sw $t0, _b
	la $t0, ASU_4
	sw $t0, _struct_member_2
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t1, _a
	lw $t2, _struct_member_1
	sw $t2, 0($t1)
	lw $t1, _b
	lw $t2, _struct_member_2
	sw $t2, 0($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 32
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
	li $t0, 10
	la $t1, str_2
	sw $t0, 24($t1)
	j _main
_print:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -4($sp)
	la $t0, str_2
	sw $t0, -28($sp)
	lw $t1, 8($sp)
	lw $t0, 0($t1)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t1, 8($sp)
	lw $t0, 0($t1)
	sw $t0, -16($sp)
	lw $t1, -16($sp)
	lw $t0, 8($t1)
	sw $t0, -20($sp)
	lw $t0, -4($sp)
	sw $t0, -52($sp)
	lw $t0, -12($sp)
	sw $t0, -56($sp)
	lw $t0, -20($sp)
	sw $t0, -60($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 64
	jal _printf
	addi $sp, $sp, 64
	sw $v0, -24($sp)
	lw $ra, ($sp)
	lw $t1, 4($sp)
	lw $t0, 0($t1)
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, 4($sp)
	lw $t0, 0($t1)
	sw $t0, -40($sp)
	lw $t1, -40($sp)
	lw $t0, 8($t1)
	sw $t0, -44($sp)
	lw $t0, -28($sp)
	sw $t0, -52($sp)
	lw $t0, -36($sp)
	sw $t0, -56($sp)
	lw $t0, -44($sp)
	sw $t0, -60($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 64
	jal _printf
	addi $sp, $sp, 64
	sw $v0, -48($sp)
	lw $ra, ($sp)
	jr $ra
_f:
	sw $ra, ($sp)
	lw $t1, 4($sp)
	lw $t0, 0($t1)
	sw $t0, -8($sp)
	lw $t1, -8($sp)
	li $t2, 123
	sw $t2, 8($t1)
	lw $t1, -8($sp)
	lw $t0, 8($t1)
	sw $t0, -4($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_g:
	sw $ra, ($sp)
	lw $t1, 4($sp)
	lw $t0, 0($t1)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	li $t1, 123
	sw $t1, ($t0)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, ASU_5
	sw $t0, -28($sp)
	la $t0, ASU_6
	sw $t0, -32($sp)
	la $t0, ASU_7
	sw $t0, -64($sp)
	la $t0, ASU_8
	sw $t0, -68($sp)
	la $t0, ASU_9
	sw $t0, -100($sp)
	la $t0, ASU_10
	sw $t0, -104($sp)
	la $t0, ASU_11
	sw $t0, -132($sp)
	la $t0, ASU_12
	sw $t0, -136($sp)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -4($sp)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -20($sp)
	lw $t1, -20($sp)
	li $t2, 2
	sw $t2, 8($t1)
	lw $t1, -20($sp)
	lw $t0, 8($t1)
	sw $t0, -16($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t1, -28($sp)
	lw $t2, -32($sp)
	sw $t2, 0($t1)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -36($sp)
	lw $t1, -28($sp)
	lw $t0, 0($t1)
	sw $t0, -40($sp)
	lw $t1, -36($sp)
	lw $t0, 0($t1)
	sw $t0, -44($sp)
	lw $t1, -40($sp)
	lw $t2, -44($sp)
	sw $t2, 0($t1)
	lw $t1, -36($sp)
	lw $t0, 4($t1)
	sw $t0, -48($sp)
	lw $t1, -40($sp)
	lw $t2, -48($sp)
	sw $t2, 4($t1)
	lw $t1, -36($sp)
	lw $t0, 8($t1)
	sw $t0, -52($sp)
	lw $t1, -40($sp)
	lw $t2, -52($sp)
	sw $t2, 8($t1)
	lw $t1, -36($sp)
	lw $t0, 12($t1)
	sw $t0, -56($sp)
	lw $t1, -40($sp)
	lw $t2, -56($sp)
	sw $t2, 12($t1)
	lw $t0, -28($sp)
	sw $t0, -168($sp)
	subu $sp, $sp, 172
	jal _g
	addi $sp, $sp, 172
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t1, -64($sp)
	lw $t2, -68($sp)
	sw $t2, 0($t1)
	lw $t1, _a
	lw $t0, 0($t1)
	sw $t0, -72($sp)
	lw $t1, -64($sp)
	lw $t0, 0($t1)
	sw $t0, -76($sp)
	lw $t1, -72($sp)
	lw $t0, 0($t1)
	sw $t0, -80($sp)
	lw $t1, -76($sp)
	lw $t2, -80($sp)
	sw $t2, 0($t1)
	lw $t1, -72($sp)
	lw $t0, 4($t1)
	sw $t0, -84($sp)
	lw $t1, -76($sp)
	lw $t2, -84($sp)
	sw $t2, 4($t1)
	lw $t1, -72($sp)
	lw $t0, 8($t1)
	sw $t0, -88($sp)
	lw $t1, -76($sp)
	lw $t2, -88($sp)
	sw $t2, 8($t1)
	lw $t1, -72($sp)
	lw $t0, 12($t1)
	sw $t0, -92($sp)
	lw $t1, -76($sp)
	lw $t2, -92($sp)
	sw $t2, 12($t1)
	lw $t0, -64($sp)
	sw $t0, -168($sp)
	subu $sp, $sp, 172
	jal _f
	addi $sp, $sp, 172
	sw $v0, -96($sp)
	lw $ra, ($sp)
	lw $t1, -100($sp)
	lw $t2, -104($sp)
	sw $t2, 0($t1)
	lw $t1, -60($sp)
	lw $t0, 0($t1)
	sw $t0, -108($sp)
	lw $t1, -100($sp)
	lw $t0, 0($t1)
	sw $t0, -112($sp)
	lw $t1, -108($sp)
	lw $t0, 0($t1)
	sw $t0, -116($sp)
	lw $t1, -112($sp)
	lw $t2, -116($sp)
	sw $t2, 0($t1)
	lw $t1, -108($sp)
	lw $t0, 4($t1)
	sw $t0, -120($sp)
	lw $t1, -112($sp)
	lw $t2, -120($sp)
	sw $t2, 4($t1)
	lw $t1, -108($sp)
	lw $t0, 8($t1)
	sw $t0, -124($sp)
	lw $t1, -112($sp)
	lw $t2, -124($sp)
	sw $t2, 8($t1)
	lw $t1, -108($sp)
	lw $t0, 12($t1)
	sw $t0, -128($sp)
	lw $t1, -112($sp)
	lw $t2, -128($sp)
	sw $t2, 12($t1)
	lw $t1, -132($sp)
	lw $t2, -136($sp)
	sw $t2, 0($t1)
	lw $t1, -96($sp)
	lw $t0, 0($t1)
	sw $t0, -140($sp)
	lw $t1, -132($sp)
	lw $t0, 0($t1)
	sw $t0, -144($sp)
	lw $t1, -140($sp)
	lw $t0, 0($t1)
	sw $t0, -148($sp)
	lw $t1, -144($sp)
	lw $t2, -148($sp)
	sw $t2, 0($t1)
	lw $t1, -140($sp)
	lw $t0, 4($t1)
	sw $t0, -152($sp)
	lw $t1, -144($sp)
	lw $t2, -152($sp)
	sw $t2, 4($t1)
	lw $t1, -140($sp)
	lw $t0, 8($t1)
	sw $t0, -156($sp)
	lw $t1, -144($sp)
	lw $t2, -156($sp)
	sw $t2, 8($t1)
	lw $t1, -140($sp)
	lw $t0, 12($t1)
	sw $t0, -160($sp)
	lw $t1, -144($sp)
	lw $t2, -160($sp)
	sw $t2, 12($t1)
	lw $t0, -100($sp)
	sw $t0, -168($sp)
	lw $t0, -132($sp)
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _print
	addi $sp, $sp, 176
	sw $v0, -164($sp)
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


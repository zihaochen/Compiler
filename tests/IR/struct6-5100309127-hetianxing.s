.data
	_printf_cnt: .space 4
	ASU_1: .space 12
	ASU_2: .space 84
	ASU_3: .space 12
	ASU_4: .space 84
	ASU_5: .space 12
	ASU_6: .space 84
	str_1: .space 28
	str_2: .space 16
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
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 8($t1)
	j _main
_main:
	sw $ra, ($sp)
	la $t0, ASU_1
	sw $t0, -8($sp)
	la $t0, ASU_2
	sw $t0, -12($sp)
	la $t0, ASU_3
	sw $t0, -16($sp)
	la $t0, ASU_4
	sw $t0, -20($sp)
	la $t0, ASU_5
	sw $t0, -24($sp)
	la $t0, ASU_6
	sw $t0, -28($sp)
	la $t0, str_1
	sw $t0, -256($sp)
	la $t0, str_2
	sw $t0, -280($sp)
	li $t0, 3
	sw $t0, -4($sp)
	lw $t1, -8($sp)
	lw $t2, -12($sp)
	sw $t2, 4($t1)
	lw $t1, -16($sp)
	lw $t2, -20($sp)
	sw $t2, 4($t1)
	lw $t1, -24($sp)
	lw $t2, -28($sp)
	sw $t2, 4($t1)
	la $t1, -4($sp)
	sw $t1, -36($sp)
	lw $t1, -8($sp)
	lw $t2, -36($sp)
	sw $t2, 0($t1)
	lw $t1, -8($sp)
	lw $t0, 4($t1)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	li $t1, 2
	sw $t1, ($t0)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t1, -8($sp)
	lw $t0, 4($t1)
	sw $t0, -60($sp)
	lw $t1, -16($sp)
	lw $t0, 4($t1)
	sw $t0, -64($sp)
	lw $t1, -60($sp)
	lw $t0, 0($t1)
	sw $t0, -68($sp)
	lw $t1, -64($sp)
	lw $t2, -68($sp)
	sw $t2, 0($t1)
	lw $t1, -60($sp)
	lw $t0, 4($t1)
	sw $t0, -72($sp)
	lw $t1, -64($sp)
	lw $t2, -72($sp)
	sw $t2, 4($t1)
	lw $t1, -60($sp)
	lw $t0, 8($t1)
	sw $t0, -76($sp)
	lw $t1, -64($sp)
	lw $t2, -76($sp)
	sw $t2, 8($t1)
	lw $t1, -60($sp)
	lw $t0, 12($t1)
	sw $t0, -80($sp)
	lw $t1, -64($sp)
	lw $t2, -80($sp)
	sw $t2, 12($t1)
	lw $t1, -60($sp)
	lw $t0, 16($t1)
	sw $t0, -84($sp)
	lw $t1, -64($sp)
	lw $t2, -84($sp)
	sw $t2, 16($t1)
	lw $t1, -60($sp)
	lw $t0, 20($t1)
	sw $t0, -88($sp)
	lw $t1, -64($sp)
	lw $t2, -88($sp)
	sw $t2, 20($t1)
	lw $t1, -60($sp)
	lw $t0, 24($t1)
	sw $t0, -92($sp)
	lw $t1, -64($sp)
	lw $t2, -92($sp)
	sw $t2, 24($t1)
	lw $t1, -60($sp)
	lw $t0, 28($t1)
	sw $t0, -96($sp)
	lw $t1, -64($sp)
	lw $t2, -96($sp)
	sw $t2, 28($t1)
	lw $t1, -60($sp)
	lw $t0, 32($t1)
	sw $t0, -100($sp)
	lw $t1, -64($sp)
	lw $t2, -100($sp)
	sw $t2, 32($t1)
	lw $t1, -60($sp)
	lw $t0, 36($t1)
	sw $t0, -104($sp)
	lw $t1, -64($sp)
	lw $t2, -104($sp)
	sw $t2, 36($t1)
	lw $t1, -60($sp)
	lw $t0, 40($t1)
	sw $t0, -108($sp)
	lw $t1, -64($sp)
	lw $t2, -108($sp)
	sw $t2, 40($t1)
	lw $t1, -60($sp)
	lw $t0, 44($t1)
	sw $t0, -112($sp)
	lw $t1, -64($sp)
	lw $t2, -112($sp)
	sw $t2, 44($t1)
	lw $t1, -60($sp)
	lw $t0, 48($t1)
	sw $t0, -116($sp)
	lw $t1, -64($sp)
	lw $t2, -116($sp)
	sw $t2, 48($t1)
	lw $t1, -60($sp)
	lw $t0, 52($t1)
	sw $t0, -120($sp)
	lw $t1, -64($sp)
	lw $t2, -120($sp)
	sw $t2, 52($t1)
	lw $t1, -60($sp)
	lw $t0, 56($t1)
	sw $t0, -124($sp)
	lw $t1, -64($sp)
	lw $t2, -124($sp)
	sw $t2, 56($t1)
	lw $t1, -60($sp)
	lw $t0, 60($t1)
	sw $t0, -128($sp)
	lw $t1, -64($sp)
	lw $t2, -128($sp)
	sw $t2, 60($t1)
	lw $t1, -60($sp)
	lw $t0, 64($t1)
	sw $t0, -132($sp)
	lw $t1, -64($sp)
	lw $t2, -132($sp)
	sw $t2, 64($t1)
	lw $t1, -60($sp)
	lw $t0, 68($t1)
	sw $t0, -136($sp)
	lw $t1, -64($sp)
	lw $t2, -136($sp)
	sw $t2, 68($t1)
	lw $t1, -60($sp)
	lw $t0, 72($t1)
	sw $t0, -140($sp)
	lw $t1, -64($sp)
	lw $t2, -140($sp)
	sw $t2, 72($t1)
	lw $t1, -60($sp)
	lw $t0, 76($t1)
	sw $t0, -144($sp)
	lw $t1, -64($sp)
	lw $t2, -144($sp)
	sw $t2, 76($t1)
	lw $t1, -8($sp)
	lw $t0, 0($t1)
	sw $t0, -148($sp)
	lw $t1, -16($sp)
	lw $t2, -148($sp)
	sw $t2, 0($t1)
	lw $t0, -16($sp)
	sw $t0, -56($sp)
	lw $t1, -56($sp)
	lw $t0, 4($t1)
	sw $t0, -152($sp)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -156($sp)
	lw $t1, -152($sp)
	lw $t0, 0($t1)
	sw $t0, -160($sp)
	lw $t1, -156($sp)
	lw $t2, -160($sp)
	sw $t2, 0($t1)
	lw $t1, -152($sp)
	lw $t0, 4($t1)
	sw $t0, -164($sp)
	lw $t1, -156($sp)
	lw $t2, -164($sp)
	sw $t2, 4($t1)
	lw $t1, -152($sp)
	lw $t0, 8($t1)
	sw $t0, -168($sp)
	lw $t1, -156($sp)
	lw $t2, -168($sp)
	sw $t2, 8($t1)
	lw $t1, -152($sp)
	lw $t0, 12($t1)
	sw $t0, -172($sp)
	lw $t1, -156($sp)
	lw $t2, -172($sp)
	sw $t2, 12($t1)
	lw $t1, -152($sp)
	lw $t0, 16($t1)
	sw $t0, -176($sp)
	lw $t1, -156($sp)
	lw $t2, -176($sp)
	sw $t2, 16($t1)
	lw $t1, -152($sp)
	lw $t0, 20($t1)
	sw $t0, -180($sp)
	lw $t1, -156($sp)
	lw $t2, -180($sp)
	sw $t2, 20($t1)
	lw $t1, -152($sp)
	lw $t0, 24($t1)
	sw $t0, -184($sp)
	lw $t1, -156($sp)
	lw $t2, -184($sp)
	sw $t2, 24($t1)
	lw $t1, -152($sp)
	lw $t0, 28($t1)
	sw $t0, -188($sp)
	lw $t1, -156($sp)
	lw $t2, -188($sp)
	sw $t2, 28($t1)
	lw $t1, -152($sp)
	lw $t0, 32($t1)
	sw $t0, -192($sp)
	lw $t1, -156($sp)
	lw $t2, -192($sp)
	sw $t2, 32($t1)
	lw $t1, -152($sp)
	lw $t0, 36($t1)
	sw $t0, -196($sp)
	lw $t1, -156($sp)
	lw $t2, -196($sp)
	sw $t2, 36($t1)
	lw $t1, -152($sp)
	lw $t0, 40($t1)
	sw $t0, -200($sp)
	lw $t1, -156($sp)
	lw $t2, -200($sp)
	sw $t2, 40($t1)
	lw $t1, -152($sp)
	lw $t0, 44($t1)
	sw $t0, -204($sp)
	lw $t1, -156($sp)
	lw $t2, -204($sp)
	sw $t2, 44($t1)
	lw $t1, -152($sp)
	lw $t0, 48($t1)
	sw $t0, -208($sp)
	lw $t1, -156($sp)
	lw $t2, -208($sp)
	sw $t2, 48($t1)
	lw $t1, -152($sp)
	lw $t0, 52($t1)
	sw $t0, -212($sp)
	lw $t1, -156($sp)
	lw $t2, -212($sp)
	sw $t2, 52($t1)
	lw $t1, -152($sp)
	lw $t0, 56($t1)
	sw $t0, -216($sp)
	lw $t1, -156($sp)
	lw $t2, -216($sp)
	sw $t2, 56($t1)
	lw $t1, -152($sp)
	lw $t0, 60($t1)
	sw $t0, -220($sp)
	lw $t1, -156($sp)
	lw $t2, -220($sp)
	sw $t2, 60($t1)
	lw $t1, -152($sp)
	lw $t0, 64($t1)
	sw $t0, -224($sp)
	lw $t1, -156($sp)
	lw $t2, -224($sp)
	sw $t2, 64($t1)
	lw $t1, -152($sp)
	lw $t0, 68($t1)
	sw $t0, -228($sp)
	lw $t1, -156($sp)
	lw $t2, -228($sp)
	sw $t2, 68($t1)
	lw $t1, -152($sp)
	lw $t0, 72($t1)
	sw $t0, -232($sp)
	lw $t1, -156($sp)
	lw $t2, -232($sp)
	sw $t2, 72($t1)
	lw $t1, -152($sp)
	lw $t0, 76($t1)
	sw $t0, -236($sp)
	lw $t1, -156($sp)
	lw $t2, -236($sp)
	sw $t2, 76($t1)
	lw $t1, -56($sp)
	lw $t0, 0($t1)
	sw $t0, -240($sp)
	lw $t1, -24($sp)
	lw $t2, -240($sp)
	sw $t2, 0($t1)
	lw $t0, -24($sp)
	sw $t0, -52($sp)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	li $t1, 3
	sw $t1, ($t0)
	lw $t0, -248($sp)
	lw $t1, ($t0)
	sw $t1, -244($sp)
	lw $t0, -248($sp)
	lw $t1, ($t0)
	sw $t1, -244($sp)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	lw $t1, -24($sp)
	lw $t0, 0($t1)
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -272($sp)
	lw $t0, -256($sp)
	sw $t0, -296($sp)
	lw $t0, -264($sp)
	sw $t0, -300($sp)
	lw $t0, -272($sp)
	sw $t0, -304($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 308
	jal _printf
	addi $sp, $sp, 308
	sw $v0, -276($sp)
	lw $ra, ($sp)
	lw $t1, -8($sp)
	lw $t0, 4($t1)
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	lw $t1, ($t0)
	sw $t1, -288($sp)
	lw $t0, -280($sp)
	sw $t0, -296($sp)
	lw $t0, -288($sp)
	sw $t0, -300($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 304
	jal _printf
	addi $sp, $sp, 304
	sw $v0, -292($sp)
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


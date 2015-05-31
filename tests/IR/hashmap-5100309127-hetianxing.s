.data
	_printf_cnt: .space 4
	_hashsize: .space 4
	_table: .space 4
	ASU_1: .space 404
	str_1: .space 28
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _table
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 100
	sw $t0, _hashsize
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
	j _main
_getHash:
	sw $ra, ($sp)
	li $t2, 237
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t2, _hashsize
	lw $t1, -4($sp)
	rem $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $v0, -8($sp)
	sw $v0, -8($sp)
	jr $ra
	jr $ra
_put:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, 8($sp)
	sw $t0, -252($sp)
	subu $sp, $sp, 256
	jal _getHash
	addi $sp, $sp, 256
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	li $t2, 0
	lw $t1, -32($sp)
	seq $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L2
	b L1
L2:
	li $t0, 16
	sw $t0, -252($sp)
	subu $sp, $sp, 256
	jal _malloc_struct
	addi $sp, $sp, 256
	sw $v0, -48($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -52($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, -48($sp)
	sw $t1, ($t0)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	li $t0, 0
	sw $t0, -72($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -72($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t1, -88($sp)
	lw $t2, 8($sp)
	sw $t2, 0($t1)
	lw $t1, -88($sp)
	lw $t0, 0($t1)
	sw $t0, -68($sp)
	li $t0, 0
	sw $t0, -96($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	lw $t1, -112($sp)
	lw $t2, 4($sp)
	sw $t2, 4($t1)
	lw $t1, -112($sp)
	lw $t0, 4($t1)
	sw $t0, -92($sp)
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -136($sp)
	lw $t1, -136($sp)
	li $t2, 0
	sw $t2, 8($t1)
	lw $t1, -136($sp)
	lw $t0, 8($t1)
	sw $t0, -116($sp)
	jr $ra
L1:
	li $t0, 0
	sw $t0, -144($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, -144($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	lw $t0, -156($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -140($sp)
L4:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -160($sp)
	lw $t1, -160($sp)
	lw $t0, 0($t1)
	sw $t0, -164($sp)
	lw $t2, 8($sp)
	lw $t1, -164($sp)
	sne $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	bne $t0, $0, L5
	b L3
L5:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -172($sp)
	lw $t1, -172($sp)
	lw $t0, 8($t1)
	sw $t0, -176($sp)
	li $t2, 0
	lw $t1, -176($sp)
	seq $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	bne $t0, $0, L7
	b L6
L7:
	li $t0, 16
	sw $t0, -252($sp)
	subu $sp, $sp, 256
	jal _malloc_struct
	addi $sp, $sp, 256
	sw $v0, -192($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -196($sp)
	lw $t1, -196($sp)
	lw $t2, -192($sp)
	sw $t2, 8($t1)
	lw $t1, -196($sp)
	lw $t0, 8($t1)
	sw $t0, -184($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t1, -204($sp)
	lw $t0, 8($t1)
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t1, -212($sp)
	lw $t2, 8($sp)
	sw $t2, 0($t1)
	lw $t1, -212($sp)
	lw $t0, 0($t1)
	sw $t0, -200($sp)
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -220($sp)
	lw $t1, -220($sp)
	lw $t0, 8($t1)
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	lw $t1, ($t0)
	sw $t1, -228($sp)
	lw $t1, -228($sp)
	li $t2, 0
	sw $t2, 8($t1)
	lw $t1, -228($sp)
	lw $t0, 8($t1)
	sw $t0, -216($sp)
L6:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -236($sp)
	lw $t1, -236($sp)
	lw $t0, 8($t1)
	sw $t0, -240($sp)
	lw $t0, -240($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -232($sp)
	b L4
L3:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -248($sp)
	lw $t1, -248($sp)
	lw $t2, 4($sp)
	sw $t2, 4($t1)
	lw $t1, -248($sp)
	lw $t0, 4($t1)
	sw $t0, -244($sp)
	jr $ra
_get:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, 4($sp)
	sw $t0, -68($sp)
	subu $sp, $sp, 72
	jal _getHash
	addi $sp, $sp, 72
	sw $v0, -16($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -12($sp)
L9:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t0, 0($t1)
	sw $t0, -40($sp)
	lw $t2, 4($sp)
	lw $t1, -40($sp)
	sne $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	bne $t0, $0, L10
	b L8
L10:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t1, -52($sp)
	lw $t0, 8($t1)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -48($sp)
	b L9
L8:
	lw $t0, -8($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t1, -60($sp)
	lw $t0, 4($t1)
	sw $t0, -64($sp)
	lw $v0, -64($sp)
	sw $v0, -64($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -80($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L12:
	lw $t2, _hashsize
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L13
	b L11
L13:
	li $t0, 0
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, _table
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -40($sp)
	li $t2, 1
	lw $t1, -40($sp)
	sub $t0, $t1, $t2
	sw $t0, -36($sp)
	b L12
L11:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
L15:
	li $t2, 1000
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L16
	b L14
L16:
	lw $t0, -4($sp)
	sw $t0, -104($sp)
	lw $t0, -4($sp)
	sw $t0, -108($sp)
	subu $sp, $sp, 112
	jal _put
	addi $sp, $sp, 112
	sw $v0, -56($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -64($sp)
	li $t2, 1
	lw $t1, -64($sp)
	sub $t0, $t1, $t2
	sw $t0, -60($sp)
	b L15
L14:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -72($sp)
L18:
	li $t2, 1000
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L19
	b L17
L19:
	lw $t0, -4($sp)
	sw $t0, -104($sp)
	subu $sp, $sp, 108
	jal _get
	addi $sp, $sp, 108
	sw $v0, -84($sp)
	lw $ra, ($sp)
	lw $t0, -80($sp)
	sw $t0, -104($sp)
	lw $t0, -4($sp)
	sw $t0, -108($sp)
	lw $t0, -84($sp)
	sw $t0, -112($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 116
	jal _printf
	addi $sp, $sp, 116
	sw $v0, -88($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -96($sp)
	li $t2, 1
	lw $t1, -96($sp)
	sub $t0, $t1, $t2
	sw $t0, -92($sp)
	b L18
L17:
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


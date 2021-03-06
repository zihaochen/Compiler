.data
	_printf_cnt: .space 4
	_N: .space 4
	_row: .space 4
	_col: .space 4
	_d: .space 4
	ASU_1: .space 36
	ASU_2: .space 36
	ASU_3: .space 124
	str_1: .space 12
	str_2: .space 12
	str_3: .space 8
	str_4: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _row
	la $t0, ASU_2
	sw $t0, _col
	la $t0, ASU_3
	sw $t0, _d
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 8
	sw $t0, _N
	li $t0, 32
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 79
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 46
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_4
	sw $t0, 4($t1)
	j _main
_printBoard:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -48($sp)
	la $t0, str_2
	sw $t0, -56($sp)
	la $t0, str_3
	sw $t0, -76($sp)
	la $t0, str_4
	sw $t0, -96($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L2:
	lw $t2, _N
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
L5:
	lw $t2, _N
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _col
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t2, -8($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	bne $t0, $0, L8
	b L9
L8:
	lw $t0, -48($sp)
	sw $t0, -104($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 108
	jal _printf
	addi $sp, $sp, 108
	sw $v0, -52($sp)
	lw $ra, ($sp)
	b L7
L9:
	lw $t0, -56($sp)
	sw $t0, -104($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 108
	jal _printf
	addi $sp, $sp, 108
	sw $v0, -60($sp)
	lw $ra, ($sp)
L7:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -68($sp)
	li $t2, 1
	lw $t1, -68($sp)
	sub $t0, $t1, $t2
	sw $t0, -64($sp)
	b L5
L4:
	lw $t0, -76($sp)
	sw $t0, -104($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 108
	jal _printf
	addi $sp, $sp, 108
	sw $v0, -80($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -88($sp)
	li $t2, 1
	lw $t1, -88($sp)
	sub $t0, $t1, $t2
	sw $t0, -84($sp)
	b L2
L1:
	lw $t0, -96($sp)
	sw $t0, -104($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 108
	jal _printf
	addi $sp, $sp, 108
	sw $v0, -100($sp)
	lw $ra, ($sp)
	jr $ra
_search:
	sw $ra, ($sp)
	lw $t2, _N
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L11
	b L12
L11:
	subu $sp, $sp, 108
	jal _printBoard
	addi $sp, $sp, 108
	sw $v0, -8($sp)
	lw $ra, ($sp)
	b L10
L12:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -16($sp)
L14:
	lw $t2, _N
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t0, 0
	sw $t0, -24($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, _row
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	li $t2, 0
	lw $t1, -36($sp)
	seq $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L19
	b L16
L19:
	lw $t2, 4($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	li $t0, 0
	sw $t0, -48($sp)
	li $t2, 60
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, _d
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	li $t2, 0
	lw $t1, -64($sp)
	seq $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	bne $t0, $0, L18
	b L16
L18:
	lw $t2, _N
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	li $t2, 1
	lw $t1, -72($sp)
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, 4($sp)
	lw $t1, -76($sp)
	sub $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 60
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -80($sp)
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _d
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	li $t2, 0
	lw $t1, -100($sp)
	seq $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L17
	b L16
L17:
	lw $t2, _N
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	li $t2, 1
	lw $t1, -120($sp)
	sub $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, 4($sp)
	lw $t1, -124($sp)
	sub $t0, $t1, $t2
	sw $t0, -128($sp)
	li $t0, 0
	sw $t0, -132($sp)
	li $t2, 60
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	li $t2, 4
	lw $t1, -128($sp)
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, _d
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t2, 4($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 60
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, -152($sp)
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _d
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	lw $t1, -116($sp)
	sw $t1, ($t0)
	lw $t0, -168($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	lw $t0, -168($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	li $t0, 0
	sw $t0, -176($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, -176($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, _row
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	lw $t1, -112($sp)
	sw $t1, ($t0)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	li $t0, 0
	sw $t0, -196($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, -196($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, _col
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t0, -204($sp)
	lw $t1, -12($sp)
	sw $t1, ($t0)
	lw $t0, -204($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	lw $t0, -204($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	li $t2, 1
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, -316($sp)
	subu $sp, $sp, 320
	jal _search
	addi $sp, $sp, 320
	sw $v0, -216($sp)
	lw $ra, ($sp)
	lw $t2, _N
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	li $t2, 1
	lw $t1, -232($sp)
	sub $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t2, 4($sp)
	lw $t1, -236($sp)
	sub $t0, $t1, $t2
	sw $t0, -240($sp)
	li $t0, 0
	sw $t0, -244($sp)
	li $t2, 60
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, -244($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	li $t2, 4
	lw $t1, -240($sp)
	mul $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t2, -252($sp)
	lw $t1, -244($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, _d
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -256($sp)
	lw $t1, ($t0)
	sw $t1, -228($sp)
	lw $t0, -256($sp)
	lw $t1, ($t0)
	sw $t1, -228($sp)
	lw $t2, 4($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	li $t0, 0
	sw $t0, -268($sp)
	li $t2, 60
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	li $t2, 4
	lw $t1, -264($sp)
	mul $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t2, -276($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, -268($sp)
	lw $t1, _d
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t0, -280($sp)
	lw $t1, -228($sp)
	sw $t1, ($t0)
	lw $t0, -280($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	lw $t0, -280($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	li $t0, 0
	sw $t0, -288($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, -288($sp)
	add $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, _row
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	lw $t1, -224($sp)
	sw $t1, ($t0)
	lw $t0, -296($sp)
	lw $t1, ($t0)
	sw $t1, -220($sp)
	lw $t0, -296($sp)
	lw $t1, ($t0)
	sw $t1, -220($sp)
L16:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -308($sp)
	li $t2, 1
	lw $t1, -308($sp)
	sub $t0, $t1, $t2
	sw $t0, -304($sp)
	b L14
L13:
L10:
	jr $ra
_main:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -8($sp)
	subu $sp, $sp, 12
	jal _search
	addi $sp, $sp, 12
	sw $v0, -4($sp)
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


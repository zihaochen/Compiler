.data
	_printf_cnt: .space 4
	_N: .space 4
	_h: .space 4
	_i: .space 4
	_j: .space 4
	_k: .space 4
	_total: .space 4
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 99
	sw $t0, _h
	li $t0, 100
	sw $t0, _i
	li $t0, 101
	sw $t0, _j
	li $t0, 102
	sw $t0, _k
	li $t0, 0
	sw $t0, _total
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
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -336($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -32($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -32($sp)
	sub $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, _N
	lw $t0, _N
	sw $t0, -28($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -40($sp)
L2:
	lw $t2, _N
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 1
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -48($sp)
L5:
	lw $t2, _N
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 1
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -56($sp)
L8:
	lw $t2, _N
	lw $t1, -12($sp)
	sle $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t0, 1
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -64($sp)
L11:
	lw $t2, _N
	lw $t1, -16($sp)
	sle $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t0, 1
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -72($sp)
L14:
	lw $t2, _N
	lw $t1, -20($sp)
	sle $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t0, 1
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -80($sp)
L17:
	lw $t2, _N
	lw $t1, -24($sp)
	sle $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	bne $t0, $0, L18
	b L16
L18:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	bne $t0, $0, L60
	b L19
L60:
	lw $t2, -12($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	bne $t0, $0, L59
	b L19
L59:
	lw $t2, -16($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L58
	b L19
L58:
	lw $t2, -20($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L57
	b L19
L57:
	lw $t2, -24($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L56
	b L19
L56:
	lw $t2, _h
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	bne $t0, $0, L55
	b L19
L55:
	lw $t2, _i
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	bne $t0, $0, L54
	b L19
L54:
	lw $t2, _j
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L53
	b L19
L53:
	lw $t2, _k
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	bne $t0, $0, L52
	b L19
L52:
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L51
	b L19
L51:
	lw $t2, -16($sp)
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	bne $t0, $0, L50
	b L19
L50:
	lw $t2, -20($sp)
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	bne $t0, $0, L49
	b L19
L49:
	lw $t2, -24($sp)
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	bne $t0, $0, L48
	b L19
L48:
	lw $t2, _h
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	bne $t0, $0, L47
	b L19
L47:
	lw $t2, _i
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	bne $t0, $0, L46
	b L19
L46:
	lw $t2, _j
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L45
	b L19
L45:
	lw $t2, _k
	lw $t1, -8($sp)
	sne $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	bne $t0, $0, L44
	b L19
L44:
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	bne $t0, $0, L43
	b L19
L43:
	lw $t2, -20($sp)
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	bne $t0, $0, L42
	b L19
L42:
	lw $t2, -24($sp)
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	bne $t0, $0, L41
	b L19
L41:
	lw $t2, _h
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	bne $t0, $0, L40
	b L19
L40:
	lw $t2, _i
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	bne $t0, $0, L39
	b L19
L39:
	lw $t2, _j
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	bne $t0, $0, L38
	b L19
L38:
	lw $t2, _k
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	bne $t0, $0, L37
	b L19
L37:
	lw $t2, -20($sp)
	lw $t1, -16($sp)
	sne $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	bne $t0, $0, L36
	b L19
L36:
	lw $t2, -24($sp)
	lw $t1, -16($sp)
	sne $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	bne $t0, $0, L35
	b L19
L35:
	lw $t2, _h
	lw $t1, -16($sp)
	sne $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t0, -192($sp)
	bne $t0, $0, L34
	b L19
L34:
	lw $t2, _i
	lw $t1, -16($sp)
	sne $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	bne $t0, $0, L33
	b L19
L33:
	lw $t2, _j
	lw $t1, -16($sp)
	sne $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	bne $t0, $0, L32
	b L19
L32:
	lw $t2, _k
	lw $t1, -16($sp)
	sne $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t0, -204($sp)
	bne $t0, $0, L31
	b L19
L31:
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	sne $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	bne $t0, $0, L30
	b L19
L30:
	lw $t2, _h
	lw $t1, -20($sp)
	sne $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	bne $t0, $0, L29
	b L19
L29:
	lw $t2, _i
	lw $t1, -20($sp)
	sne $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	bne $t0, $0, L28
	b L19
L28:
	lw $t2, _j
	lw $t1, -20($sp)
	sne $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	bne $t0, $0, L27
	b L19
L27:
	lw $t2, _k
	lw $t1, -20($sp)
	sne $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	bne $t0, $0, L26
	b L19
L26:
	lw $t2, _h
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	bne $t0, $0, L25
	b L19
L25:
	lw $t2, _i
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t0, -232($sp)
	bne $t0, $0, L24
	b L19
L24:
	lw $t2, _j
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	bne $t0, $0, L23
	b L19
L23:
	lw $t2, _k
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t0, -240($sp)
	bne $t0, $0, L22
	b L19
L22:
	lw $t2, _j
	lw $t1, _i
	sne $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t0, -244($sp)
	bne $t0, $0, L21
	b L19
L21:
	lw $t2, _k
	lw $t1, _h
	sne $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	bne $t0, $0, L20
	b L19
L20:
	li $t2, 1
	lw $t1, _total
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t0, -260($sp)
	sw $t0, _total
	lw $t0, _total
	sw $t0, -256($sp)
	li $t2, 1
	lw $t1, -256($sp)
	sub $t0, $t1, $t2
	sw $t0, -252($sp)
L19:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t0, -272($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -268($sp)
	li $t2, 1
	lw $t1, -268($sp)
	sub $t0, $t1, $t2
	sw $t0, -264($sp)
	b L17
L16:
	li $t2, 1
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -280($sp)
	li $t2, 1
	lw $t1, -280($sp)
	sub $t0, $t1, $t2
	sw $t0, -276($sp)
	b L14
L13:
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -292($sp)
	li $t2, 1
	lw $t1, -292($sp)
	sub $t0, $t1, $t2
	sw $t0, -288($sp)
	b L11
L10:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -304($sp)
	li $t2, 1
	lw $t1, -304($sp)
	sub $t0, $t1, $t2
	sw $t0, -300($sp)
	b L8
L7:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t0, -320($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -316($sp)
	li $t2, 1
	lw $t1, -316($sp)
	sub $t0, $t1, $t2
	sw $t0, -312($sp)
	b L5
L4:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t0, -332($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -328($sp)
	li $t2, 1
	lw $t1, -328($sp)
	sub $t0, $t1, $t2
	sw $t0, -324($sp)
	b L2
L1:
	lw $t0, -336($sp)
	sw $t0, -344($sp)
	lw $t0, _total
	sw $t0, -348($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 352
	jal _printf
	addi $sp, $sp, 352
	sw $v0, -340($sp)
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


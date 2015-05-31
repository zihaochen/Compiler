.data
	_printf_cnt: .space 4
	_n: .space 4
	_m: .space 4
	_top: .space 4
	_dom: .space 4
	_source: .space 4
	_pre: .space 4
	_stack: .space 4
	_order: .space 4
	_g: .space 4
	_imm: .space 4
	_fron: .space 4
	str_1: .space 28
	str_2: .space 16
	str_3: .space 16
	str_4: .space 8
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
	li $t0, 0
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 58
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 12($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_4
	sw $t0, 4($t1)
	j _main
_dfs:
	sw $ra, ($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, _g
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
L2:
	lw $t0, -4($sp)
	bne $t0, $0, L3
	b L1
L3:
	li $t0, 12
	sw $t0, -192($sp)
	subu $sp, $sp, 196
	jal _malloc_struct
	addi $sp, $sp, 196
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, -20($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t1, -32($sp)
	lw $t0, 0($t1)
	sw $t0, -36($sp)
	li $t2, 4
	lw $t1, -36($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	li $t2, -1
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L5
	b L4
L5:
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t1, -60($sp)
	lw $t0, 0($t1)
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -76($sp)
	lw $t1, -76($sp)
	lw $t0, 0($t1)
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -192($sp)
	subu $sp, $sp, 196
	jal _dfs
	addi $sp, $sp, 196
	sw $v0, -84($sp)
	lw $ra, ($sp)
L4:
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t1, -92($sp)
	lw $t2, 4($sp)
	sw $t2, 0($t1)
	lw $t1, -92($sp)
	lw $t0, 0($t1)
	sw $t0, -88($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t1, -100($sp)
	lw $t0, 0($t1)
	sw $t0, -104($sp)
	li $t2, 4
	lw $t1, -104($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, _imm
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t1, -120($sp)
	lw $t2, -108($sp)
	sw $t2, 4($t1)
	lw $t1, -120($sp)
	lw $t0, 4($t1)
	sw $t0, -96($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t1, -128($sp)
	lw $t0, 0($t1)
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, _imm
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, -20($sp)
	sw $t1, ($t0)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t1, -148($sp)
	lw $t0, 4($t1)
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -144($sp)
	b L2
L1:
	li $t2, 1
	lw $t1, _top
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	sw $t0, _top
	lw $t0, _top
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, _n
	sub $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, _stack
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	lw $t1, 4($sp)
	sw $t1, ($t0)
	lw $t0, -172($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	lw $t2, 4($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, _order
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	lw $t1, _top
	sw $t1, ($t0)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -180($sp)
	jr $ra
_get_dom:
	sw $ra, ($sp)
L7:
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	sne $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L8
	b L6
L8:
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, _order
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _order
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L10
	b L11
L10:
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -48($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t0, -40($sp)
	sw $t0, 8($sp)
	lw $t0, 8($sp)
	sw $t0, -36($sp)
	b L9
L11:
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t0, -56($sp)
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, -52($sp)
L9:
	b L7
L6:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
	jr $ra
_get_int:
	sw $ra, ($sp)
	subu $sp, $sp, 80
	jal _getchar
	addi $sp, $sp, 80
	sw $v0, -8($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -12($sp)
L13:
	li $t2, 48
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L15
	b L16
L16:
	li $t2, 57
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L15
	b L12
L15:
	li $t2, 45
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L14
	b L12
L14:
	subu $sp, $sp, 80
	jal _getchar
	addi $sp, $sp, 80
	sw $v0, -32($sp)
	lw $ra, ($sp)
	lw $t0, -32($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -28($sp)
	b L13
L12:
	li $t2, 45
	lw $t1, -4($sp)
	seq $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L18
	b L17
L18:
	subu $sp, $sp, 80
	jal _get_int
	addi $sp, $sp, 80
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t2, -40($sp)
	sub $t0, $0, $t2
	sw $t0, -44($sp)
	lw $v0, -44($sp)
	sw $v0, -44($sp)
	jr $ra
L17:
L20:
	li $t2, 48
	lw $t1, -4($sp)
	sge $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L22
	b L19
L22:
	li $t2, 57
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t2, 10
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -4($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	li $t2, 48
	lw $t1, -64($sp)
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -56($sp)
	subu $sp, $sp, 80
	jal _getchar
	addi $sp, $sp, 80
	sw $v0, -76($sp)
	lw $ra, ($sp)
	lw $t0, -76($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -72($sp)
	b L20
L19:
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -648($sp)
	la $t0, str_2
	sw $t0, -684($sp)
	la $t0, str_3
	sw $t0, -692($sp)
	la $t0, str_4
	sw $t0, -720($sp)
	li $t0, 1
	sw $t0, -4($sp)
	subu $sp, $sp, 736
	jal _get_int
	addi $sp, $sp, 736
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, _n
	lw $t0, _n
	sw $t0, -12($sp)
	subu $sp, $sp, 736
	jal _get_int
	addi $sp, $sp, 736
	sw $v0, -24($sp)
	lw $ra, ($sp)
	lw $t0, -24($sp)
	sw $t0, _m
	lw $t0, _m
	sw $t0, -20($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -36($sp)
	lw $ra, ($sp)
	lw $t0, -36($sp)
	sw $t0, _dom
	lw $t0, _dom
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -48($sp)
	lw $ra, ($sp)
	lw $t0, -48($sp)
	sw $t0, _pre
	lw $t0, _pre
	sw $t0, -40($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t0, -60($sp)
	sw $t0, _stack
	lw $t0, _stack
	sw $t0, -52($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -72($sp)
	lw $ra, ($sp)
	lw $t0, -72($sp)
	sw $t0, _order
	lw $t0, _order
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -84($sp)
	lw $ra, ($sp)
	lw $t0, -84($sp)
	sw $t0, _g
	lw $t0, _g
	sw $t0, -76($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -96($sp)
	lw $ra, ($sp)
	lw $t0, -96($sp)
	sw $t0, _imm
	lw $t0, _imm
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, _n
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc
	addi $sp, $sp, 740
	sw $v0, -108($sp)
	lw $ra, ($sp)
	lw $t0, -108($sp)
	sw $t0, _fron
	lw $t0, _fron
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -112($sp)
L24:
	lw $t2, _n
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L25
	b L23
L25:
	lw $t2, -8($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	lw $t2, -8($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, -124($sp)
	sw $t1, ($t0)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t2, -8($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _g
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t2, -8($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, _imm
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	lw $t1, -148($sp)
	sw $t1, ($t0)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -168($sp)
	b L24
L23:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -176($sp)
L27:
	lw $t2, _m
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	bne $t0, $0, L28
	b L26
L28:
	subu $sp, $sp, 736
	jal _get_int
	addi $sp, $sp, 736
	sw $v0, -188($sp)
	lw $ra, ($sp)
	lw $t0, -188($sp)
	sw $t0, -184($sp)
	subu $sp, $sp, 736
	jal _get_int
	addi $sp, $sp, 736
	sw $v0, -196($sp)
	lw $ra, ($sp)
	lw $t0, -196($sp)
	sw $t0, -192($sp)
	li $t0, 12
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _malloc_struct
	addi $sp, $sp, 740
	sw $v0, -208($sp)
	lw $ra, ($sp)
	lw $t0, -208($sp)
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -216($sp)
	lw $t1, -216($sp)
	lw $t2, -192($sp)
	sw $t2, 0($t1)
	lw $t1, -216($sp)
	lw $t0, 0($t1)
	sw $t0, -212($sp)
	li $t2, 4
	lw $t1, -184($sp)
	mul $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, _g
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -236($sp)
	lw $t1, -236($sp)
	lw $t2, -224($sp)
	sw $t2, 4($t1)
	lw $t1, -236($sp)
	lw $t0, 4($t1)
	sw $t0, -220($sp)
	lw $t2, -184($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, _g
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t0, -244($sp)
	lw $t1, -200($sp)
	sw $t1, ($t0)
	lw $t0, -244($sp)
	lw $t1, ($t0)
	sw $t1, -240($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -252($sp)
	b L27
L26:
	subu $sp, $sp, 736
	jal _get_int
	addi $sp, $sp, 736
	sw $v0, -264($sp)
	lw $ra, ($sp)
	lw $t0, -264($sp)
	sw $t0, _source
	lw $t0, _source
	sw $t0, -260($sp)
	lw $t2, _source
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	lw $t1, _source
	sw $t1, ($t0)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -272($sp)
	lw $t2, _source
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	lw $t1, -272($sp)
	sw $t1, ($t0)
	lw $t0, -284($sp)
	lw $t1, ($t0)
	sw $t1, -268($sp)
	lw $t0, _source
	sw $t0, -736($sp)
	subu $sp, $sp, 740
	jal _dfs
	addi $sp, $sp, 740
	sw $v0, -292($sp)
	lw $ra, ($sp)
L30:
	lw $t0, -4($sp)
	bne $t0, $0, L31
	b L29
L31:
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -300($sp)
	li $t0, 1
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -304($sp)
L33:
	lw $t2, _n
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	bne $t0, $0, L34
	b L32
L34:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, _stack
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t0, -320($sp)
	lw $t1, ($t0)
	sw $t1, -316($sp)
	li $t2, 4
	lw $t1, -316($sp)
	mul $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t2, -336($sp)
	lw $t1, _imm
	add $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t0, -332($sp)
	lw $t1, ($t0)
	sw $t1, -328($sp)
	lw $t0, -328($sp)
	sw $t0, -312($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t2, -352($sp)
	lw $t1, _stack
	add $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t0, -348($sp)
	lw $t1, ($t0)
	sw $t1, -344($sp)
	li $t2, 4
	lw $t1, -344($sp)
	mul $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t2, -364($sp)
	lw $t1, _pre
	add $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t0, -360($sp)
	lw $t1, ($t0)
	sw $t1, -356($sp)
	lw $t0, -356($sp)
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	sw $t0, -340($sp)
L36:
	lw $t0, -312($sp)
	bne $t0, $0, L37
	b L35
L37:
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -368($sp)
	lw $t1, -368($sp)
	lw $t0, 0($t1)
	sw $t0, -372($sp)
	li $t2, 4
	lw $t1, -372($sp)
	mul $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t2, -384($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t0, -380($sp)
	lw $t1, ($t0)
	sw $t1, -376($sp)
	li $t2, -1
	lw $t1, -376($sp)
	sne $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t0, -388($sp)
	bne $t0, $0, L39
	b L38
L39:
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -396($sp)
	lw $t1, -396($sp)
	lw $t0, 0($t1)
	sw $t0, -400($sp)
	lw $t0, -296($sp)
	sw $t0, -736($sp)
	lw $t0, -400($sp)
	sw $t0, -740($sp)
	subu $sp, $sp, 744
	jal _get_dom
	addi $sp, $sp, 744
	sw $v0, -404($sp)
	lw $ra, ($sp)
	lw $t0, -404($sp)
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	sw $t0, -392($sp)
L38:
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -412($sp)
	lw $t1, -412($sp)
	lw $t0, 4($t1)
	sw $t0, -416($sp)
	lw $t0, -416($sp)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -408($sp)
	b L36
L35:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t2, -428($sp)
	lw $t1, _stack
	add $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t0, -424($sp)
	lw $t1, ($t0)
	sw $t1, -420($sp)
	li $t2, 4
	lw $t1, -420($sp)
	mul $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t2, -440($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -436($sp)
	lw $t0, -436($sp)
	lw $t1, ($t0)
	sw $t1, -432($sp)
	lw $t2, -432($sp)
	lw $t1, -296($sp)
	sne $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t0, -444($sp)
	bne $t0, $0, L41
	b L40
L41:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t2, -460($sp)
	lw $t1, _stack
	add $t0, $t1, $t2
	sw $t0, -456($sp)
	lw $t0, -456($sp)
	lw $t1, ($t0)
	sw $t1, -452($sp)
	lw $t2, -452($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -468($sp)
	lw $t2, -468($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -464($sp)
	lw $t0, -464($sp)
	lw $t1, -296($sp)
	sw $t1, ($t0)
	lw $t0, -464($sp)
	lw $t1, ($t0)
	sw $t1, -448($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -472($sp)
L40:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t0, -480($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -476($sp)
	b L33
L32:
	b L30
L29:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -484($sp)
L43:
	lw $t2, _n
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -488($sp)
	lw $t0, -488($sp)
	bne $t0, $0, L44
	b L42
L44:
	li $t0, 0
	sw $t0, -492($sp)
L46:
	lw $t0, -312($sp)
	bne $t0, $0, L47
	b L45
L47:
	li $t2, 1
	lw $t1, -492($sp)
	add $t0, $t1, $t2
	sw $t0, -500($sp)
	lw $t0, -500($sp)
	sw $t0, -492($sp)
	lw $t0, -492($sp)
	sw $t0, -496($sp)
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -508($sp)
	lw $t1, -508($sp)
	lw $t0, 4($t1)
	sw $t0, -512($sp)
	lw $t0, -512($sp)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -504($sp)
	b L46
L45:
	li $t2, 2
	lw $t1, -492($sp)
	sge $t0, $t1, $t2
	sw $t0, -516($sp)
	lw $t0, -516($sp)
	bne $t0, $0, L49
	b L48
L49:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -532($sp)
	lw $t2, -532($sp)
	lw $t1, _imm
	add $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t0, -528($sp)
	lw $t1, ($t0)
	sw $t1, -524($sp)
	lw $t0, -524($sp)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -520($sp)
L51:
	lw $t0, -312($sp)
	bne $t0, $0, L52
	b L50
L52:
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -540($sp)
	lw $t1, -540($sp)
	lw $t0, 0($t1)
	sw $t0, -544($sp)
	lw $t0, -544($sp)
	sw $t0, -536($sp)
L54:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -556($sp)
	lw $t2, -556($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -552($sp)
	lw $t0, -552($sp)
	lw $t1, ($t0)
	sw $t1, -548($sp)
	lw $t2, -548($sp)
	lw $t1, -536($sp)
	sne $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t0, -560($sp)
	bne $t0, $0, L55
	b L53
L55:
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -568($sp)
	lw $t1, -568($sp)
	lw $t2, -8($sp)
	sw $t2, 0($t1)
	lw $t1, -568($sp)
	lw $t0, 0($t1)
	sw $t0, -564($sp)
	li $t2, 4
	lw $t1, -536($sp)
	mul $t0, $t1, $t2
	sw $t0, -584($sp)
	lw $t2, -584($sp)
	lw $t1, _fron
	add $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t0, -580($sp)
	lw $t1, ($t0)
	sw $t1, -576($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -588($sp)
	lw $t1, -588($sp)
	lw $t2, -576($sp)
	sw $t2, 4($t1)
	lw $t1, -588($sp)
	lw $t0, 4($t1)
	sw $t0, -572($sp)
	lw $t2, -536($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -600($sp)
	lw $t2, -600($sp)
	lw $t1, _fron
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t0, -596($sp)
	lw $t1, -200($sp)
	sw $t1, ($t0)
	lw $t0, -596($sp)
	lw $t1, ($t0)
	sw $t1, -592($sp)
	li $t2, 4
	lw $t1, -536($sp)
	mul $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t2, -616($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t0, -612($sp)
	lw $t1, ($t0)
	sw $t1, -608($sp)
	lw $t0, -608($sp)
	sw $t0, -536($sp)
	lw $t0, -536($sp)
	sw $t0, -604($sp)
	b L54
L53:
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -624($sp)
	lw $t1, -624($sp)
	lw $t0, 4($t1)
	sw $t0, -628($sp)
	lw $t0, -628($sp)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -620($sp)
	b L51
L50:
L48:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -636($sp)
	lw $t0, -636($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -632($sp)
	b L43
L42:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -640($sp)
L57:
	lw $t2, _n
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t0, -644($sp)
	bne $t0, $0, L58
	b L56
L58:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t2, -660($sp)
	lw $t1, _dom
	add $t0, $t1, $t2
	sw $t0, -656($sp)
	lw $t0, -656($sp)
	lw $t1, ($t0)
	sw $t1, -652($sp)
	lw $t0, -648($sp)
	sw $t0, -736($sp)
	lw $t0, -8($sp)
	sw $t0, -740($sp)
	lw $t0, -652($sp)
	sw $t0, -744($sp)
	li $t0, 3
	sw $t0, _printf_cnt
	subu $sp, $sp, 748
	jal _printf
	addi $sp, $sp, 748
	sw $v0, -664($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -672($sp)
	lw $t0, -672($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -668($sp)
	b L57
L56:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -676($sp)
L60:
	lw $t2, _n
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -680($sp)
	lw $t0, -680($sp)
	bne $t0, $0, L61
	b L59
L61:
	lw $t0, -684($sp)
	sw $t0, -736($sp)
	lw $t0, -8($sp)
	sw $t0, -740($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 744
	jal _printf
	addi $sp, $sp, 744
	sw $v0, -688($sp)
	lw $ra, ($sp)
L63:
	lw $t0, -312($sp)
	bne $t0, $0, L64
	b L62
L64:
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -696($sp)
	lw $t1, -696($sp)
	lw $t0, 0($t1)
	sw $t0, -700($sp)
	lw $t0, -692($sp)
	sw $t0, -736($sp)
	lw $t0, -700($sp)
	sw $t0, -740($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 744
	jal _printf
	addi $sp, $sp, 744
	sw $v0, -704($sp)
	lw $ra, ($sp)
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -712($sp)
	lw $t1, -712($sp)
	lw $t0, 4($t1)
	sw $t0, -716($sp)
	lw $t0, -716($sp)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -708($sp)
	b L63
L62:
	lw $t0, -720($sp)
	sw $t0, -736($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 740
	jal _printf
	addi $sp, $sp, 740
	sw $v0, -724($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t0, -732($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -728($sp)
	b L60
L59:
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

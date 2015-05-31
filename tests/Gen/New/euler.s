.data
	_printf_cnt: .space 4
	_lin: .space 4
	_top: .space 4
	_used: .space 4
	_sum: .space 4
	_path: .space 4
	_n: .space 4
	_m: .space 4
	ASU_1: .space 204
	ASU_2: .space 8004
	ASU_3: .space 204
	ASU_4: .space 8004
	str_1: .space 16
	str_2: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _lin
	la $t0, ASU_2
	sw $t0, _used
	la $t0, ASU_3
	sw $t0, _sum
	la $t0, ASU_4
	sw $t0, _path
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 0
	sw $t0, _top
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 37
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 12($t1)
	j _main
_init:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -12($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_clear:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L2:
	li $t2, 50
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L3
	b L1
L3:
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
	lw $t1, _lin
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
	b L2
L1:
	li $t0, 0
	sw $t0, _top
	lw $t0, _top
	sw $t0, -48($sp)
	jr $ra
_ins:
	sw $ra, ($sp)
	li $t0, 16
	sw $t0, -76($sp)
	subu $sp, $sp, 80
	jal _malloc_struct
	addi $sp, $sp, 80
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t1, -20($sp)
	lw $t2, 8($sp)
	sw $t2, 0($t1)
	lw $t1, -20($sp)
	lw $t0, 0($t1)
	sw $t0, -16($sp)
	li $t0, 0
	sw $t0, -28($sp)
	li $t2, 4
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, _lin
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t1, -44($sp)
	lw $t2, -40($sp)
	sw $t2, 8($t1)
	lw $t1, -44($sp)
	lw $t0, 8($t1)
	sw $t0, -24($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t1, -52($sp)
	lw $t2, 4($sp)
	sw $t2, 4($t1)
	lw $t1, -52($sp)
	lw $t0, 4($t1)
	sw $t0, -48($sp)
	li $t0, 0
	sw $t0, -60($sp)
	li $t2, 4
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, _lin
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, -4($sp)
	sw $t1, ($t0)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	jr $ra
_dfs:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t2, 4
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, _lin
	add $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -4($sp)
L5:
	li $t2, 0
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L6
	b L4
L6:
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t1, -28($sp)
	lw $t0, 4($t1)
	sw $t0, -32($sp)
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 4
	lw $t1, -32($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, _used
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L7
	b L8
L8:
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -56($sp)
	lw $t1, -56($sp)
	lw $t0, 4($t1)
	sw $t0, -60($sp)
	li $t0, 0
	sw $t0, -64($sp)
	li $t2, 4
	lw $t1, -60($sp)
	mul $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, _used
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t0, -72($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t1, -80($sp)
	lw $t0, 0($t1)
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -140($sp)
	subu $sp, $sp, 144
	jal _dfs
	addi $sp, $sp, 144
	sw $v0, -88($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	lw $t1, -96($sp)
	lw $t0, 4($t1)
	sw $t0, -100($sp)
	li $t2, 1
	lw $t1, _top
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	sw $t0, _top
	lw $t0, _top
	sw $t0, -104($sp)
	li $t0, 0
	sw $t0, -112($sp)
	li $t2, 4
	lw $t1, -104($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -112($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, _path
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, -100($sp)
	sw $t1, ($t0)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
L7:
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t1, -132($sp)
	lw $t0, 8($t1)
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -128($sp)
	b L5
L4:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -252($sp)
	la $t0, str_2
	sw $t0, -288($sp)
	li $t0, 1
	sw $t0, -12($sp)
	subu $sp, $sp, 144
	jal _init
	addi $sp, $sp, 144
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t0, -20($sp)
	sw $t0, _n
	lw $t0, _n
	sw $t0, -16($sp)
	subu $sp, $sp, 144
	jal _init
	addi $sp, $sp, 144
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t0, -28($sp)
	sw $t0, _m
	lw $t0, _m
	sw $t0, -24($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -32($sp)
L10:
	lw $t2, _m
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	bne $t0, $0, L11
	b L9
L11:
	subu $sp, $sp, 144
	jal _init
	addi $sp, $sp, 144
	sw $v0, -56($sp)
	lw $ra, ($sp)
	lw $t0, -56($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -52($sp)
	subu $sp, $sp, 144
	jal _init
	addi $sp, $sp, 144
	sw $v0, -64($sp)
	lw $ra, ($sp)
	lw $t0, -64($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -60($sp)
	subu $sp, $sp, 144
	jal _init
	addi $sp, $sp, 144
	sw $v0, -72($sp)
	lw $ra, ($sp)
	lw $t0, -72($sp)
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -68($sp)
	lw $t0, -40($sp)
	sw $t0, -300($sp)
	lw $t0, -44($sp)
	sw $t0, -304($sp)
	lw $t0, -48($sp)
	sw $t0, -308($sp)
	subu $sp, $sp, 312
	jal _ins
	addi $sp, $sp, 312
	sw $v0, -76($sp)
	lw $ra, ($sp)
	lw $t0, -44($sp)
	sw $t0, -300($sp)
	lw $t0, -40($sp)
	sw $t0, -304($sp)
	lw $t0, -48($sp)
	sw $t0, -308($sp)
	subu $sp, $sp, 312
	jal _ins
	addi $sp, $sp, 312
	sw $v0, -80($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -92($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -92($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, _sum
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -104($sp)
	li $t2, 1
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	li $t0, 0
	sw $t0, -112($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -112($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, _sum
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, -108($sp)
	sw $t1, ($t0)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	li $t2, 1
	lw $t1, -88($sp)
	sub $t0, $t1, $t2
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, _sum
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	li $t2, 1
	lw $t1, -148($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _sum
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, -152($sp)
	sw $t1, ($t0)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	li $t2, 1
	lw $t1, -132($sp)
	sub $t0, $t1, $t2
	sw $t0, -128($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -176($sp)
	li $t2, 1
	lw $t1, -176($sp)
	sub $t0, $t1, $t2
	sw $t0, -172($sp)
	b L10
L9:
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -184($sp)
L13:
	li $t2, 50
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	bne $t0, $0, L14
	b L12
L14:
	li $t0, 0
	sw $t0, -192($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -192($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, _sum
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	li $t2, 2
	lw $t1, -204($sp)
	rem $t0, $t1, $t2
	sw $t0, -208($sp)
	li $t2, 1
	lw $t1, -208($sp)
	seq $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	bne $t0, $0, L16
	b L15
L16:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -216($sp)
	b L12
L15:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -224($sp)
	li $t2, 1
	lw $t1, -224($sp)
	sub $t0, $t1, $t2
	sw $t0, -220($sp)
	b L13
L12:
	lw $t0, _used
	li $t1, 1
	sw $t1, ($t0)
	lw $t0, _used
	lw $t1, ($t0)
	sw $t1, -232($sp)
	lw $t0, _used
	lw $t1, ($t0)
	sw $t1, -232($sp)
	li $t0, 1
	sw $t0, -300($sp)
	subu $sp, $sp, 304
	jal _dfs
	addi $sp, $sp, 304
	sw $v0, -240($sp)
	lw $ra, ($sp)
	lw $t0, _top
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -244($sp)
L18:
	li $t2, 1
	lw $t1, -8($sp)
	sgt $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	bne $t0, $0, L19
	b L17
L19:
	li $t0, 0
	sw $t0, -256($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, -256($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, _path
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t0, -264($sp)
	lw $t1, ($t0)
	sw $t1, -268($sp)
	lw $t0, -252($sp)
	sw $t0, -300($sp)
	lw $t0, -268($sp)
	sw $t0, -304($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 308
	jal _printf
	addi $sp, $sp, 308
	sw $v0, -272($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -280($sp)
	li $t2, 1
	lw $t1, -280($sp)
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	b L18
L17:
	lw $t1, _path
	lw $t0, 4($t1)
	sw $t0, -292($sp)
	lw $t0, -288($sp)
	sw $t0, -300($sp)
	lw $t0, -292($sp)
	sw $t0, -304($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 308
	jal _printf
	addi $sp, $sp, 308
	sw $v0, -296($sp)
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


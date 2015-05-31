.data
	_printf_cnt: .space 4
	_N: .space 4
	_A: .space 4
	_B: .space 4
	_C: .space 4
	_X: .space 4
	_i: .space 4
	_root: .space 4
	str_1: .space 16
	str_2: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 2000
	sw $t0, _N
	li $t0, 12345
	sw $t0, _B
	li $t0, 32768
	sw $t0, _C
	li $t0, 86421
	sw $t0, _X
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
_get_random:
	sw $ra, ($sp)
	lw $t2, _X
	lw $t1, _A
	mul $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, _B
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t2, _C
	lw $t1, -4($sp)
	rem $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, _X
	lw $t0, _X
	sw $t0, -16($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_sum_of:
	sw $ra, ($sp)
	li $t2, 0
	lw $t1, 4($sp)
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L1
L2:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
L1:
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 8($t1)
	sw $t0, -12($sp)
	lw $v0, -12($sp)
	sw $v0, -12($sp)
	jr $ra
	jr $ra
_update:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 12($t1)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -44($sp)
	subu $sp, $sp, 48
	jal _sum_of
	addi $sp, $sp, 48
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t1, -20($sp)
	lw $t0, 16($t1)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -44($sp)
	subu $sp, $sp, 48
	jal _sum_of
	addi $sp, $sp, 48
	sw $v0, -28($sp)
	lw $ra, ($sp)
	lw $t2, -28($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t2, 1
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -40($sp)
	lw $t1, -40($sp)
	lw $t2, -36($sp)
	sw $t2, 8($t1)
	lw $t1, -40($sp)
	lw $t0, 8($t1)
	sw $t0, -4($sp)
	jr $ra
_rotate_left:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 16($t1)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t1, -20($sp)
	lw $t0, 12($t1)
	sw $t0, -24($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t1, -28($sp)
	lw $t2, -24($sp)
	sw $t2, 16($t1)
	lw $t1, -28($sp)
	lw $t0, 16($t1)
	sw $t0, -16($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t2, 4($sp)
	sw $t2, 12($t1)
	lw $t1, -36($sp)
	lw $t0, 12($t1)
	sw $t0, -32($sp)
	lw $t0, 4($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _update
	addi $sp, $sp, 52
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _update
	addi $sp, $sp, 52
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_rotate_right:
	sw $ra, ($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 12($t1)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t1, -20($sp)
	lw $t0, 16($t1)
	sw $t0, -24($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t1, -28($sp)
	lw $t2, -24($sp)
	sw $t2, 12($t1)
	lw $t1, -28($sp)
	lw $t0, 12($t1)
	sw $t0, -16($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	lw $t2, 4($sp)
	sw $t2, 16($t1)
	lw $t1, -36($sp)
	lw $t0, 16($t1)
	sw $t0, -32($sp)
	lw $t0, 4($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _update
	addi $sp, $sp, 52
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	sw $t0, -48($sp)
	subu $sp, $sp, 52
	jal _update
	addi $sp, $sp, 52
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_insert_node:
	sw $ra, ($sp)
	li $t2, 0
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L4
	b L3
L4:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
L3:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 0($t1)
	sw $t0, -12($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t1, -16($sp)
	lw $t0, 0($t1)
	sw $t0, -20($sp)
	lw $t2, -20($sp)
	lw $t1, -12($sp)
	sgt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L6
	b L7
L6:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t1, -32($sp)
	lw $t0, 12($t1)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -160($sp)
	lw $t0, 4($sp)
	sw $t0, -164($sp)
	subu $sp, $sp, 168
	jal _insert_node
	addi $sp, $sp, 168
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t1, -44($sp)
	lw $t2, -40($sp)
	sw $t2, 12($t1)
	lw $t1, -44($sp)
	lw $t0, 12($t1)
	sw $t0, -28($sp)
	b L5
L7:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -52($sp)
	lw $t1, -52($sp)
	lw $t0, 16($t1)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -160($sp)
	lw $t0, 4($sp)
	sw $t0, -164($sp)
	subu $sp, $sp, 168
	jal _insert_node
	addi $sp, $sp, 168
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t1, -64($sp)
	lw $t2, -60($sp)
	sw $t2, 16($t1)
	lw $t1, -64($sp)
	lw $t0, 16($t1)
	sw $t0, -48($sp)
L5:
	lw $t0, 8($sp)
	sw $t0, -160($sp)
	subu $sp, $sp, 164
	jal _update
	addi $sp, $sp, 164
	sw $v0, -68($sp)
	lw $ra, ($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t1, -72($sp)
	lw $t0, 12($t1)
	sw $t0, -76($sp)
	li $t2, 0
	lw $t1, -76($sp)
	sne $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	bne $t0, $0, L10
	b L8
L10:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -84($sp)
	lw $t1, -84($sp)
	lw $t0, 12($t1)
	sw $t0, -88($sp)
	lw $t0, -88($sp)
	lw $t1, ($t0)
	sw $t1, -92($sp)
	lw $t1, -92($sp)
	lw $t0, 4($t1)
	sw $t0, -96($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t1, -100($sp)
	lw $t0, 4($t1)
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -96($sp)
	sgt $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	bne $t0, $0, L9
	b L8
L9:
	lw $t0, 8($sp)
	sw $t0, -160($sp)
	subu $sp, $sp, 164
	jal _rotate_right
	addi $sp, $sp, 164
	sw $v0, -112($sp)
	lw $ra, ($sp)
	lw $v0, -112($sp)
	sw $v0, -112($sp)
	jr $ra
L8:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t1, -116($sp)
	lw $t0, 16($t1)
	sw $t0, -120($sp)
	li $t2, 0
	lw $t1, -120($sp)
	sne $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	bne $t0, $0, L13
	b L11
L13:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -128($sp)
	lw $t1, -128($sp)
	lw $t0, 16($t1)
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -136($sp)
	lw $t1, -136($sp)
	lw $t0, 4($t1)
	sw $t0, -140($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	lw $t1, -144($sp)
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -140($sp)
	sgt $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	bne $t0, $0, L12
	b L11
L12:
	lw $t0, 8($sp)
	sw $t0, -160($sp)
	subu $sp, $sp, 164
	jal _rotate_left
	addi $sp, $sp, 164
	sw $v0, -156($sp)
	lw $ra, ($sp)
	lw $v0, -156($sp)
	sw $v0, -156($sp)
	jr $ra
L11:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
	jr $ra
_get_kth_element:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -8($sp)
	lw $t1, -8($sp)
	lw $t0, 12($t1)
	sw $t0, -12($sp)
	li $t2, 0
	lw $t1, -12($sp)
	sne $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L15
	b L14
L15:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t1, -24($sp)
	lw $t0, 12($t1)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	lw $t1, ($t0)
	sw $t1, -32($sp)
	lw $t1, -32($sp)
	lw $t0, 8($t1)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -20($sp)
L14:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L17
	b L16
L17:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t1, -44($sp)
	lw $t0, 12($t1)
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -88($sp)
	lw $t0, 4($sp)
	sw $t0, -92($sp)
	subu $sp, $sp, 96
	jal _get_kth_element
	addi $sp, $sp, 96
	sw $v0, -52($sp)
	lw $ra, ($sp)
	lw $v0, -52($sp)
	sw $v0, -52($sp)
	jr $ra
L16:
	lw $t2, 4($sp)
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	bne $t0, $0, L19
	b L18
L19:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t1, -60($sp)
	lw $t0, 16($t1)
	sw $t0, -64($sp)
	lw $t2, -4($sp)
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	li $t2, 1
	lw $t1, -68($sp)
	sub $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -64($sp)
	sw $t0, -88($sp)
	lw $t0, -72($sp)
	sw $t0, -92($sp)
	subu $sp, $sp, 96
	jal _get_kth_element
	addi $sp, $sp, 96
	sw $v0, -76($sp)
	lw $ra, ($sp)
	lw $v0, -76($sp)
	sw $v0, -76($sp)
	jr $ra
L18:
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t1, -80($sp)
	lw $t0, 0($t1)
	sw $t0, -84($sp)
	lw $v0, -84($sp)
	sw $v0, -84($sp)
	jr $ra
	jr $ra
_alloc_node:
	sw $ra, ($sp)
	li $t0, 24
	sw $t0, -64($sp)
	subu $sp, $sp, 68
	jal _malloc_struct
	addi $sp, $sp, 68
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t1, -24($sp)
	li $t2, 0
	sw $t2, 16($t1)
	lw $t1, -24($sp)
	lw $t0, 16($t1)
	sw $t0, -20($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -28($sp)
	lw $t1, -28($sp)
	lw $t2, -20($sp)
	sw $t2, 12($t1)
	lw $t1, -28($sp)
	lw $t0, 12($t1)
	sw $t0, -16($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -36($sp)
	lw $t1, -36($sp)
	li $t2, 1
	sw $t2, 8($t1)
	lw $t1, -36($sp)
	lw $t0, 8($t1)
	sw $t0, -32($sp)
	subu $sp, $sp, 64
	jal _get_random
	addi $sp, $sp, 64
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t1, -48($sp)
	lw $t2, -44($sp)
	sw $t2, 4($t1)
	lw $t1, -48($sp)
	lw $t0, 4($t1)
	sw $t0, -40($sp)
	subu $sp, $sp, 64
	jal _get_random
	addi $sp, $sp, 64
	sw $v0, -56($sp)
	lw $ra, ($sp)
	lw $t0, -4($sp)
	lw $t1, ($t0)
	sw $t1, -60($sp)
	lw $t1, -60($sp)
	lw $t2, -56($sp)
	sw $t2, 0($t1)
	lw $t1, -60($sp)
	lw $t0, 0($t1)
	sw $t0, -52($sp)
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -80($sp)
	la $t0, str_2
	sw $t0, -136($sp)
	subu $sp, $sp, 160
	jal _getchar
	addi $sp, $sp, 160
	sw $v0, -8($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	li $t1, 10000
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	subu $sp, $sp, 160
	jal _getchar
	addi $sp, $sp, 160
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -20($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	li $t1, 1000
	mul $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, -28($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	subu $sp, $sp, 160
	jal _getchar
	addi $sp, $sp, 160
	sw $v0, -36($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -36($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	li $t1, 100
	mul $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	subu $sp, $sp, 160
	jal _getchar
	addi $sp, $sp, 160
	sw $v0, -52($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -52($sp)
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	li $t1, 10
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	subu $sp, $sp, 160
	jal _getchar
	addi $sp, $sp, 160
	sw $v0, -68($sp)
	lw $ra, ($sp)
	lw $t2, -68($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	li $t2, 48
	lw $t1, -72($sp)
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	sw $t0, _A
	lw $t0, _A
	sw $t0, -4($sp)
	lw $t0, -80($sp)
	sw $t0, -160($sp)
	lw $t0, _A
	sw $t0, -164($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 168
	jal _printf
	addi $sp, $sp, 168
	sw $v0, -84($sp)
	lw $ra, ($sp)
	subu $sp, $sp, 160
	jal _alloc_node
	addi $sp, $sp, 160
	sw $v0, -92($sp)
	lw $ra, ($sp)
	lw $t0, -92($sp)
	sw $t0, _root
	lw $t0, _root
	sw $t0, -88($sp)
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -96($sp)
L21:
	lw $t2, _N
	lw $t1, _i
	slt $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L22
	b L20
L22:
	subu $sp, $sp, 160
	jal _alloc_node
	addi $sp, $sp, 160
	sw $v0, -108($sp)
	lw $ra, ($sp)
	lw $t0, _root
	sw $t0, -160($sp)
	lw $t0, -108($sp)
	sw $t0, -164($sp)
	subu $sp, $sp, 168
	jal _insert_node
	addi $sp, $sp, 168
	sw $v0, -112($sp)
	lw $ra, ($sp)
	lw $t0, -112($sp)
	sw $t0, _root
	lw $t0, _root
	sw $t0, -104($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -120($sp)
	li $t2, 1
	lw $t1, -120($sp)
	sub $t0, $t1, $t2
	sw $t0, -116($sp)
	b L21
L20:
	li $t0, 0
	sw $t0, _i
	lw $t0, _i
	sw $t0, -128($sp)
L24:
	lw $t2, _N
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	bne $t0, $0, L25
	b L23
L25:
	lw $t0, _root
	sw $t0, -160($sp)
	lw $t0, _i
	sw $t0, -164($sp)
	subu $sp, $sp, 168
	jal _get_kth_element
	addi $sp, $sp, 168
	sw $v0, -140($sp)
	lw $ra, ($sp)
	lw $t0, -136($sp)
	sw $t0, -160($sp)
	lw $t0, -140($sp)
	sw $t0, -164($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 168
	jal _printf
	addi $sp, $sp, 168
	sw $v0, -144($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t0, -156($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -152($sp)
	li $t2, 1
	lw $t1, -152($sp)
	sub $t0, $t1, $t2
	sw $t0, -148($sp)
	b L24
L23:
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

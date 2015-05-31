.data
	_printf_cnt: .space 4
	ASU_1: .space 48
	ASU_2: .space 12
	ASU_3: .space 52
	str_1: .space 48
	str_2: .space 12
	str_3: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 97
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 98
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 97
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 98
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 102
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 101
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 97
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 98
	la $t1, str_1
	sw $t0, 36($t1)
	li $t0, 99
	la $t1, str_1
	sw $t0, 40($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 44($t1)
	li $t0, 97
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 98
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 12($t1)
	j _main
_main:
	sw $ra, ($sp)
	la $t0, ASU_1
	sw $t0, -4($sp)
	la $t0, ASU_2
	sw $t0, -12($sp)
	la $t0, ASU_3
	sw $t0, -40($sp)
	la $t0, str_1
	sw $t0, -8($sp)
	la $t0, str_2
	sw $t0, -16($sp)
	la $t0, str_3
	sw $t0, -404($sp)
	lw $t0, -8($sp)
	sw $t0, -4($sp)
	lw $t0, -16($sp)
	sw $t0, -12($sp)
	li $t0, 0
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -44($sp)
	lw $t0, -40($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	li $t0, -1
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -56($sp)
	li $t0, 2
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -60($sp)
	li $t0, 11
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -64($sp)
	li $t0, 1
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -68($sp)
L2:
	lw $t2, -28($sp)
	lw $t1, -20($sp)
	slt $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	bne $t0, $0, L3
	b L1
L3:
L5:
	li $t2, -1
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L7
	b L4
L7:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 4
	lw $t1, -80($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	lw $t1, ($t0)
	sw $t1, -96($sp)
	li $t0, 0
	sw $t0, -100($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, -100($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	lw $t1, ($t0)
	sw $t1, -112($sp)
	lw $t2, -112($sp)
	lw $t1, -96($sp)
	sne $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -124($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -136($sp)
	lw $t0, -136($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -120($sp)
	b L5
L4:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	li $t0, 0
	sw $t0, -144($sp)
	li $t2, 4
	lw $t1, -140($sp)
	mul $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, -144($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	lw $t1, ($t0)
	sw $t1, -156($sp)
	li $t0, 0
	sw $t0, -160($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, -160($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	lw $t1, ($t0)
	sw $t1, -172($sp)
	lw $t2, -172($sp)
	lw $t1, -156($sp)
	seq $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	bne $t0, $0, L9
	b L8
L9:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -184($sp)
	li $t2, 1
	lw $t1, -184($sp)
	sub $t0, $t1, $t2
	sw $t0, -180($sp)
L8:
	li $t0, 0
	sw $t0, -196($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, -196($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t0, -204($sp)
	lw $t1, -24($sp)
	sw $t1, ($t0)
	lw $t0, -204($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	lw $t0, -204($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	li $t2, 1
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t0, -220($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -216($sp)
	li $t2, 1
	lw $t1, -216($sp)
	sub $t0, $t1, $t2
	sw $t0, -212($sp)
	b L2
L1:
	li $t0, -1
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -224($sp)
	li $t0, 0
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -228($sp)
L11:
	lw $t2, -32($sp)
	lw $t1, -20($sp)
	slt $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t0, -232($sp)
	bne $t0, $0, L12
	b L10
L12:
L14:
	li $t2, -1
	lw $t1, -24($sp)
	sne $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	bne $t0, $0, L16
	b L13
L16:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	li $t0, 0
	sw $t0, -244($sp)
	li $t2, 4
	lw $t1, -240($sp)
	mul $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, -244($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t0, -252($sp)
	lw $t1, ($t0)
	sw $t1, -256($sp)
	li $t0, 0
	sw $t0, -260($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, -260($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -256($sp)
	sne $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t0, 0
	sw $t0, -284($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, -284($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t2, -284($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t0, -292($sp)
	lw $t1, ($t0)
	sw $t1, -296($sp)
	lw $t0, -296($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -280($sp)
	b L14
L13:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	li $t0, 0
	sw $t0, -304($sp)
	li $t2, 4
	lw $t1, -300($sp)
	mul $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, -304($sp)
	add $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t2, -304($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	lw $t1, ($t0)
	sw $t1, -316($sp)
	li $t0, 0
	sw $t0, -320($sp)
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, -320($sp)
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, -320($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t0, -328($sp)
	lw $t1, ($t0)
	sw $t1, -332($sp)
	lw $t2, -332($sp)
	lw $t1, -316($sp)
	seq $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t0, -336($sp)
	bne $t0, $0, L18
	b L17
L18:
	li $t2, 1
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t0, -348($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -344($sp)
	li $t2, 1
	lw $t1, -344($sp)
	sub $t0, $t1, $t2
	sw $t0, -340($sp)
L17:
	li $t2, 1
	lw $t1, -28($sp)
	sub $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t2, -352($sp)
	lw $t1, -24($sp)
	seq $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t0, -356($sp)
	bne $t0, $0, L20
	b L19
L20:
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t0, -368($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -364($sp)
	li $t2, 1
	lw $t1, -364($sp)
	sub $t0, $t1, $t2
	sw $t0, -360($sp)
	li $t0, 0
	sw $t0, -376($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t2, -380($sp)
	lw $t1, -376($sp)
	add $t0, $t1, $t2
	sw $t0, -376($sp)
	lw $t2, -376($sp)
	lw $t1, -40($sp)
	add $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t0, -384($sp)
	lw $t1, ($t0)
	sw $t1, -388($sp)
	lw $t0, -388($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -372($sp)
L19:
	li $t2, 1
	lw $t1, -20($sp)
	add $t0, $t1, $t2
	sw $t0, -400($sp)
	lw $t0, -400($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -396($sp)
	li $t2, 1
	lw $t1, -396($sp)
	sub $t0, $t1, $t2
	sw $t0, -392($sp)
	b L11
L10:
	lw $t0, -404($sp)
	sw $t0, -412($sp)
	lw $t0, -36($sp)
	sw $t0, -416($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 420
	jal _printf
	addi $sp, $sp, 420
	sw $v0, -408($sp)
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


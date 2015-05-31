.data
	printf_cnt: .space 4
	str_1: .asciiz "%d %d %d %d\n"
	str_2: .asciiz "%c %d %d %c\n"
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, printf_cnt
	j _main
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -36($sp)
	la $t0, str_2
	sw $t0, -44($sp)
	li $t0, 51
	sw $t0, -4($sp)
	li $t0, 17658
	sw $t0, -8($sp)
	li $t0, 11
	sw $t0, -12($sp)
	li $t0, 8
	sw $t0, -16($sp)
	li $t0, 10
	sw $t0, -20($sp)
	li $t0, 40
	sw $t0, -24($sp)
	lw $t2, -20($sp)
	lw $t1, -24($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -28($sp)
	lw $t0, -36($sp)
	sw $t0, -52($sp)
	lw $t0, -4($sp)
	sw $t0, -56($sp)
	lw $t0, -8($sp)
	sw $t0, -60($sp)
	lw $t0, -12($sp)
	sw $t0, -64($sp)
	lw $t0, -16($sp)
	sw $t0, -68($sp)
	li $t0, 5
	sw $t0, printf_cnt
	subu $sp, $sp, 72
	jal printf
	addi $sp, $sp, 72
	sw $v0, -40($sp)
	lw $ra, ($sp)
	lw $t0, -44($sp)
	sw $t0, -52($sp)
	lw $t0, -4($sp)
	sw $t0, -56($sp)
	lw $t0, -16($sp)
	sw $t0, -60($sp)
	li $t0, 4
	sw $t0, -64($sp)
	lw $t0, -24($sp)
	sw $t0, -68($sp)
	li $t0, 5
	sw $t0, printf_cnt
	subu $sp, $sp, 72
	jal printf
	addi $sp, $sp, 72
	sw $v0, -48($sp)
	lw $ra, ($sp)
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra

printf:
	lw $t0, printf_cnt
	mul $t0, $t0, 4
	add $t0, $t0, $sp
	lw $a1, ($t0)
	move $a2, $t0
	
printf_loop:
	lb $a0, 0($a1)
	beq $a0, 0, printf_end
	addu $a1, $a1, 1
	beq $a0, '%', printf_fmt
	li $v0, 11
	syscall
	b printf_loop

printf_fmt:
	lb $a0, 0($a1)
	addu $a1, $a1, 1
	beq $a0, 'd', printf_int
	beq $a0, 's', printf_str
	beq $a0, 'c', printf_char
	beq $a0, '0', printf_width
	beq $a0, '.', printf_width

printf_int:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 1
	syscall
	b printf_loop

printf_str:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 4
	syscall
	b printf_loop

printf_char:
	subu $a2, $a2, 4
	lw $a0, 0($a2)
	li $v0, 11
	syscall
	b printf_loop

printf_width:
	lb $t1, 0($a1)
	addu $a1, $a1, 1
	sub $t1, $t1, '1'
	addu $a1, $a1, 1
	subu $a2, $a2, 4
	lw $t0, 0($a2)
	blt $t0, 10, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 1000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 10000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 1000000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 10000000, printf_width_tmp
	subu $t1, $t1, 1
	blt $t0, 100000000, printf_width_tmp
	subu $t1, $t1, 1

printf_width_tmp:
	li $a0, '0'
	beq $t1, 0, printf_width_tmp2
	subu $a2 $a2 1
	li $v0, 11
	syscall
	b printf_width_tmp

printf_width_tmp2:
	move $a0, $t0
	li $v0, 1
	syscall
	b printf_loop

printf_end:
	jr $ra

getchar:
	li $v0, 12
	syscall
	jr $ra

malloc:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	jr $ra


.data
	printf_cnt: .space 4
	str_1: .asciiz "%c -> %c\n"
	str_2: .asciiz "%c -> %c\n"
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, printf_cnt
	j _main
hanoi:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -16($sp)
	la $t0, str_2
	sw $t0, -32($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L3
L2:
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, 16($sp)
	sw $t0, -40($sp)
	lw $t0, 8($sp)
	sw $t0, -44($sp)
	lw $t0, 12($sp)
	sw $t0, -48($sp)
	lw $t0, -8($sp)
	sw $t0, -52($sp)
	subu $sp, $sp, 56
	jal hanoi
	addi $sp, $sp, 56
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -40($sp)
	lw $t0, 16($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	li $t0, 3
	sw $t0, printf_cnt
	subu $sp, $sp, 52
	jal printf
	addi $sp, $sp, 52
	sw $v0, -20($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, 4($sp)
	sub $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, 12($sp)
	sw $t0, -40($sp)
	lw $t0, 16($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	lw $t0, -24($sp)
	sw $t0, -52($sp)
	subu $sp, $sp, 56
	jal hanoi
	addi $sp, $sp, 56
	sw $v0, -28($sp)
	lw $ra, ($sp)
	b L1
L3:
	lw $t0, -32($sp)
	sw $t0, -40($sp)
	lw $t0, 16($sp)
	sw $t0, -44($sp)
	lw $t0, 8($sp)
	sw $t0, -48($sp)
	li $t0, 3
	sw $t0, printf_cnt
	subu $sp, $sp, 52
	jal printf
	addi $sp, $sp, 52
	sw $v0, -36($sp)
	lw $ra, ($sp)
L1:
	jr $ra
_main:
	sw $ra, ($sp)
	li $t0, 12
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
	li $t2, 0
	lw $t1, -4($sp)
	sgt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L5
	b L4
L5:
	li $t0, 97
	sw $t0, -20($sp)
	li $t0, 98
	sw $t0, -24($sp)
	li $t0, 99
	sw $t0, -28($sp)
	lw $t0, -4($sp)
	sw $t0, -32($sp)
	subu $sp, $sp, 36
	jal hanoi
	addi $sp, $sp, 36
	sw $v0, -16($sp)
	lw $ra, ($sp)
L4:
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


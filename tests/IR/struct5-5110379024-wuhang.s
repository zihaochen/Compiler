.data
	_printf_cnt: .space 4
	_size1: .space 4
	_size2: .space 4
	_a: .space 4
	_forStructArray_1: .space 4
	_struct_member_1: .space 4
	_struct_member_2: .space 4
	_struct_member_3: .space 4
	_forStructArray_2: .space 4
	_struct_member_4: .space 4
	_struct_member_5: .space 4
	_struct_member_6: .space 4
	_forStructArray_3: .space 4
	_struct_member_7: .space 4
	_struct_member_8: .space 4
	_struct_member_9: .space 4
	_forStructArray_4: .space 4
	_struct_member_10: .space 4
	_struct_member_11: .space 4
	_struct_member_12: .space 4
	_forStructArray_5: .space 4
	_struct_member_13: .space 4
	_struct_member_14: .space 4
	_struct_member_15: .space 4
	ASU_1: .space 104
	ASU_2: .space 20
	ASU_3: .space 104
	ASU_4: .space 12
	ASU_5: .space 8
	ASU_6: .space 20
	ASU_7: .space 104
	ASU_8: .space 12
	ASU_9: .space 8
	ASU_10: .space 20
	ASU_11: .space 104
	ASU_12: .space 12
	ASU_13: .space 8
	ASU_14: .space 20
	ASU_15: .space 104
	ASU_16: .space 12
	ASU_17: .space 8
	ASU_18: .space 20
	ASU_19: .space 104
	ASU_20: .space 12
	ASU_21: .space 8
	ASU_22: .space 8
	ASU_23: .space 8
	ASU_24: .space 20
	ASU_25: .space 104
	ASU_26: .space 12
	ASU_27: .space 8
	ASU_28: .space 20
	ASU_29: .space 104
	ASU_30: .space 12
	ASU_31: .space 8
	ASU_32: .space 20
	ASU_33: .space 104
	ASU_34: .space 12
	ASU_35: .space 8
	ASU_36: .space 20
	ASU_37: .space 104
	ASU_38: .space 12
	ASU_39: .space 8
	ASU_40: .space 20
	ASU_41: .space 104
	ASU_42: .space 12
	ASU_43: .space 8
	str_1: .space 16
	str_2: .space 8
	str_3: .space 56
	str_4: .space 8
	str_5: .space 16
	str_6: .space 8
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	la $t0, ASU_2
	sw $t0, _forStructArray_1
	la $t0, ASU_3
	sw $t0, _struct_member_1
	la $t0, ASU_4
	sw $t0, _struct_member_2
	la $t0, ASU_5
	sw $t0, _struct_member_3
	la $t0, ASU_6
	sw $t0, _forStructArray_2
	la $t0, ASU_7
	sw $t0, _struct_member_4
	la $t0, ASU_8
	sw $t0, _struct_member_5
	la $t0, ASU_9
	sw $t0, _struct_member_6
	la $t0, ASU_10
	sw $t0, _forStructArray_3
	la $t0, ASU_11
	sw $t0, _struct_member_7
	la $t0, ASU_12
	sw $t0, _struct_member_8
	la $t0, ASU_13
	sw $t0, _struct_member_9
	la $t0, ASU_14
	sw $t0, _forStructArray_4
	la $t0, ASU_15
	sw $t0, _struct_member_10
	la $t0, ASU_16
	sw $t0, _struct_member_11
	la $t0, ASU_17
	sw $t0, _struct_member_12
	la $t0, ASU_18
	sw $t0, _forStructArray_5
	la $t0, ASU_19
	sw $t0, _struct_member_13
	la $t0, ASU_20
	sw $t0, _struct_member_14
	la $t0, ASU_21
	sw $t0, _struct_member_15
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 5
	sw $t0, _size1
	li $t0, 5
	sw $t0, _size2
	lw $t1, _forStructArray_1
	lw $t2, _struct_member_1
	sw $t2, 0($t1)
	lw $t1, _forStructArray_1
	lw $t2, _struct_member_2
	sw $t2, 4($t1)
	lw $t1, _forStructArray_1
	lw $t2, _struct_member_3
	sw $t2, 12($t1)
	lw $t1, _a
	lw $t2, _forStructArray_1
	sw $t2, 0($t1)
	lw $t1, _forStructArray_2
	lw $t2, _struct_member_4
	sw $t2, 0($t1)
	lw $t1, _forStructArray_2
	lw $t2, _struct_member_5
	sw $t2, 4($t1)
	lw $t1, _forStructArray_2
	lw $t2, _struct_member_6
	sw $t2, 12($t1)
	lw $t1, _a
	lw $t2, _forStructArray_2
	sw $t2, 20($t1)
	lw $t1, _forStructArray_3
	lw $t2, _struct_member_7
	sw $t2, 0($t1)
	lw $t1, _forStructArray_3
	lw $t2, _struct_member_8
	sw $t2, 4($t1)
	lw $t1, _forStructArray_3
	lw $t2, _struct_member_9
	sw $t2, 12($t1)
	lw $t1, _a
	lw $t2, _forStructArray_3
	sw $t2, 40($t1)
	lw $t1, _forStructArray_4
	lw $t2, _struct_member_10
	sw $t2, 0($t1)
	lw $t1, _forStructArray_4
	lw $t2, _struct_member_11
	sw $t2, 4($t1)
	lw $t1, _forStructArray_4
	lw $t2, _struct_member_12
	sw $t2, 12($t1)
	lw $t1, _a
	lw $t2, _forStructArray_4
	sw $t2, 60($t1)
	lw $t1, _forStructArray_5
	lw $t2, _struct_member_13
	sw $t2, 0($t1)
	lw $t1, _forStructArray_5
	lw $t2, _struct_member_14
	sw $t2, 4($t1)
	lw $t1, _forStructArray_5
	lw $t2, _struct_member_15
	sw $t2, 12($t1)
	lw $t1, _a
	lw $t2, _forStructArray_5
	sw $t2, 80($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 9
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 0($t1)
	li $t0, 99
	la $t1, str_3
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 12($t1)
	li $t0, 99
	la $t1, str_3
	sw $t0, 16($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 20($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 24($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 28($t1)
	li $t0, 44
	la $t1, str_3
	sw $t0, 32($t1)
	li $t0, 32
	la $t1, str_3
	sw $t0, 36($t1)
	li $t0, 37
	la $t1, str_3
	sw $t0, 40($t1)
	li $t0, 100
	la $t1, str_3
	sw $t0, 44($t1)
	li $t0, 10
	la $t1, str_3
	sw $t0, 48($t1)
	li $t0, 0
	la $t1, str_3
	sw $t0, 52($t1)
	li $t0, 10
	la $t1, str_4
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_4
	sw $t0, 4($t1)
	li $t0, 37
	la $t1, str_5
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_5
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_5
	sw $t0, 8($t1)
	li $t0, 0
	la $t1, str_5
	sw $t0, 12($t1)
	li $t0, 10
	la $t1, str_6
	sw $t0, 0($t1)
	li $t0, 0
	la $t1, str_6
	sw $t0, 4($t1)
	j _main
_comp1:
	sw $ra, ($sp)
	lw $t1, 8($sp)
	lw $t0, 0($t1)
	sw $t0, -4($sp)
	lw $t1, 4($sp)
	lw $t0, 0($t1)
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sne $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L2
	b L3
L2:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	b L1
L3:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L1:
	jr $ra
_compare:
	sw $ra, ($sp)
	la $t0, ASU_22
	sw $t0, -144($sp)
	la $t0, ASU_23
	sw $t0, -152($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -12($sp)
L5:
	lw $t2, _size1
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L6
	b L4
L6:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
L8:
	lw $t2, _size1
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L9
	b L7
L9:
	lw $t1, 8($sp)
	lw $t0, 0($t1)
	sw $t0, -28($sp)
	li $t0, 0
	sw $t0, -32($sp)
	li $t2, 20
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t1, 4($sp)
	lw $t0, 0($t1)
	sw $t0, -52($sp)
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 20
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -48($sp)
	sne $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	bne $t0, $0, L11
	b L10
L11:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
L10:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -80($sp)
	b L8
L7:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -88($sp)
	b L5
L4:
	lw $t1, 8($sp)
	lw $t0, 4($t1)
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t1, 4($sp)
	lw $t0, 4($t1)
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -100($sp)
	sne $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	bne $t0, $0, L13
	b L14
L13:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	b L12
L14:
	lw $t1, 8($sp)
	lw $t0, 4($t1)
	sw $t0, -116($sp)
	lw $t1, -116($sp)
	lw $t0, 4($t1)
	sw $t0, -120($sp)
	lw $t1, 4($sp)
	lw $t0, 4($t1)
	sw $t0, -124($sp)
	lw $t1, -124($sp)
	lw $t0, 4($t1)
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -120($sp)
	sne $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	bne $t0, $0, L16
	b L17
L16:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	b L15
L17:
	lw $t1, 8($sp)
	lw $t0, 12($t1)
	sw $t0, -136($sp)
	lw $t1, 4($sp)
	lw $t0, 12($t1)
	sw $t0, -140($sp)
	lw $t1, -136($sp)
	lw $t0, 0($t1)
	sw $t0, -148($sp)
	lw $t1, -144($sp)
	lw $t2, -148($sp)
	sw $t2, 0($t1)
	lw $t1, -140($sp)
	lw $t0, 0($t1)
	sw $t0, -156($sp)
	lw $t1, -152($sp)
	lw $t2, -156($sp)
	sw $t2, 0($t1)
	lw $t0, -144($sp)
	sw $t0, -168($sp)
	lw $t0, -152($sp)
	sw $t0, -172($sp)
	subu $sp, $sp, 176
	jal _comp1
	addi $sp, $sp, 176
	sw $v0, -160($sp)
	lw $ra, ($sp)
	lw $v0, -160($sp)
	sw $v0, -160($sp)
	jr $ra
L15:
L12:
	li $t2, 1
	sub $t0, $0, $t2
	sw $t0, -164($sp)
	lw $v0, -164($sp)
	sw $v0, -164($sp)
	jr $ra
	jr $ra
_getNode:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -12($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, -16($sp)
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t2, -12($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	lw $t1, ($t0)
	sw $t1, -24($sp)
	lw $t1, -24($sp)
	lw $t0, 8($t1)
	sw $t0, -28($sp)
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t1, -48($sp)
	lw $t2, -32($sp)
	sw $t2, 8($t1)
	li $t2, 1
	lw $t1, -8($sp)
	sub $t0, $t1, $t2
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -52($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $v0, -64($sp)
	sw $v0, -64($sp)
	jr $ra
	jr $ra
_exchange:
	sw $ra, ($sp)
	la $t0, ASU_24
	sw $t0, -4($sp)
	la $t0, ASU_25
	sw $t0, -8($sp)
	la $t0, ASU_26
	sw $t0, -12($sp)
	la $t0, ASU_27
	sw $t0, -16($sp)
	lw $t1, -4($sp)
	lw $t2, -8($sp)
	sw $t2, 0($t1)
	lw $t1, -4($sp)
	lw $t2, -12($sp)
	sw $t2, 4($t1)
	lw $t1, -4($sp)
	lw $t2, -16($sp)
	sw $t2, 12($t1)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -20($sp)
	lw $t1, -20($sp)
	lw $t0, 0($t1)
	sw $t0, -24($sp)
	lw $t1, -4($sp)
	lw $t0, 0($t1)
	sw $t0, -28($sp)
	lw $t1, -24($sp)
	lw $t0, 0($t1)
	sw $t0, -32($sp)
	lw $t1, -28($sp)
	lw $t2, -32($sp)
	sw $t2, 0($t1)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -36($sp)
	lw $t1, -28($sp)
	lw $t2, -36($sp)
	sw $t2, 4($t1)
	lw $t1, -24($sp)
	lw $t0, 8($t1)
	sw $t0, -40($sp)
	lw $t1, -28($sp)
	lw $t2, -40($sp)
	sw $t2, 8($t1)
	lw $t1, -24($sp)
	lw $t0, 12($t1)
	sw $t0, -44($sp)
	lw $t1, -28($sp)
	lw $t2, -44($sp)
	sw $t2, 12($t1)
	lw $t1, -24($sp)
	lw $t0, 16($t1)
	sw $t0, -48($sp)
	lw $t1, -28($sp)
	lw $t2, -48($sp)
	sw $t2, 16($t1)
	lw $t1, -24($sp)
	lw $t0, 20($t1)
	sw $t0, -52($sp)
	lw $t1, -28($sp)
	lw $t2, -52($sp)
	sw $t2, 20($t1)
	lw $t1, -24($sp)
	lw $t0, 24($t1)
	sw $t0, -56($sp)
	lw $t1, -28($sp)
	lw $t2, -56($sp)
	sw $t2, 24($t1)
	lw $t1, -24($sp)
	lw $t0, 28($t1)
	sw $t0, -60($sp)
	lw $t1, -28($sp)
	lw $t2, -60($sp)
	sw $t2, 28($t1)
	lw $t1, -24($sp)
	lw $t0, 32($t1)
	sw $t0, -64($sp)
	lw $t1, -28($sp)
	lw $t2, -64($sp)
	sw $t2, 32($t1)
	lw $t1, -24($sp)
	lw $t0, 36($t1)
	sw $t0, -68($sp)
	lw $t1, -28($sp)
	lw $t2, -68($sp)
	sw $t2, 36($t1)
	lw $t1, -24($sp)
	lw $t0, 40($t1)
	sw $t0, -72($sp)
	lw $t1, -28($sp)
	lw $t2, -72($sp)
	sw $t2, 40($t1)
	lw $t1, -24($sp)
	lw $t0, 44($t1)
	sw $t0, -76($sp)
	lw $t1, -28($sp)
	lw $t2, -76($sp)
	sw $t2, 44($t1)
	lw $t1, -24($sp)
	lw $t0, 48($t1)
	sw $t0, -80($sp)
	lw $t1, -28($sp)
	lw $t2, -80($sp)
	sw $t2, 48($t1)
	lw $t1, -24($sp)
	lw $t0, 52($t1)
	sw $t0, -84($sp)
	lw $t1, -28($sp)
	lw $t2, -84($sp)
	sw $t2, 52($t1)
	lw $t1, -24($sp)
	lw $t0, 56($t1)
	sw $t0, -88($sp)
	lw $t1, -28($sp)
	lw $t2, -88($sp)
	sw $t2, 56($t1)
	lw $t1, -24($sp)
	lw $t0, 60($t1)
	sw $t0, -92($sp)
	lw $t1, -28($sp)
	lw $t2, -92($sp)
	sw $t2, 60($t1)
	lw $t1, -24($sp)
	lw $t0, 64($t1)
	sw $t0, -96($sp)
	lw $t1, -28($sp)
	lw $t2, -96($sp)
	sw $t2, 64($t1)
	lw $t1, -24($sp)
	lw $t0, 68($t1)
	sw $t0, -100($sp)
	lw $t1, -28($sp)
	lw $t2, -100($sp)
	sw $t2, 68($t1)
	lw $t1, -24($sp)
	lw $t0, 72($t1)
	sw $t0, -104($sp)
	lw $t1, -28($sp)
	lw $t2, -104($sp)
	sw $t2, 72($t1)
	lw $t1, -24($sp)
	lw $t0, 76($t1)
	sw $t0, -108($sp)
	lw $t1, -28($sp)
	lw $t2, -108($sp)
	sw $t2, 76($t1)
	lw $t1, -24($sp)
	lw $t0, 80($t1)
	sw $t0, -112($sp)
	lw $t1, -28($sp)
	lw $t2, -112($sp)
	sw $t2, 80($t1)
	lw $t1, -24($sp)
	lw $t0, 84($t1)
	sw $t0, -116($sp)
	lw $t1, -28($sp)
	lw $t2, -116($sp)
	sw $t2, 84($t1)
	lw $t1, -24($sp)
	lw $t0, 88($t1)
	sw $t0, -120($sp)
	lw $t1, -28($sp)
	lw $t2, -120($sp)
	sw $t2, 88($t1)
	lw $t1, -24($sp)
	lw $t0, 92($t1)
	sw $t0, -124($sp)
	lw $t1, -28($sp)
	lw $t2, -124($sp)
	sw $t2, 92($t1)
	lw $t1, -24($sp)
	lw $t0, 96($t1)
	sw $t0, -128($sp)
	lw $t1, -28($sp)
	lw $t2, -128($sp)
	sw $t2, 96($t1)
	lw $t1, -20($sp)
	lw $t0, 8($t1)
	sw $t0, -132($sp)
	lw $t1, -4($sp)
	lw $t2, -132($sp)
	sw $t2, 8($t1)
	lw $t1, -20($sp)
	lw $t0, 4($t1)
	sw $t0, -136($sp)
	lw $t1, -4($sp)
	lw $t0, 4($t1)
	sw $t0, -140($sp)
	lw $t1, -136($sp)
	lw $t0, 0($t1)
	sw $t0, -144($sp)
	lw $t1, -140($sp)
	lw $t2, -144($sp)
	sw $t2, 0($t1)
	lw $t1, -136($sp)
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	lw $t1, -140($sp)
	lw $t2, -148($sp)
	sw $t2, 4($t1)
	lw $t1, -20($sp)
	lw $t0, 12($t1)
	sw $t0, -152($sp)
	lw $t1, -4($sp)
	lw $t2, -152($sp)
	sw $t2, 12($t1)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -160($sp)
	lw $t0, 8($sp)
	lw $t1, ($t0)
	sw $t1, -164($sp)
	lw $t1, -160($sp)
	lw $t0, 0($t1)
	sw $t0, -168($sp)
	lw $t1, -164($sp)
	lw $t0, 0($t1)
	sw $t0, -172($sp)
	lw $t1, -168($sp)
	lw $t0, 0($t1)
	sw $t0, -176($sp)
	lw $t1, -172($sp)
	lw $t2, -176($sp)
	sw $t2, 0($t1)
	lw $t1, -168($sp)
	lw $t0, 4($t1)
	sw $t0, -180($sp)
	lw $t1, -172($sp)
	lw $t2, -180($sp)
	sw $t2, 4($t1)
	lw $t1, -168($sp)
	lw $t0, 8($t1)
	sw $t0, -184($sp)
	lw $t1, -172($sp)
	lw $t2, -184($sp)
	sw $t2, 8($t1)
	lw $t1, -168($sp)
	lw $t0, 12($t1)
	sw $t0, -188($sp)
	lw $t1, -172($sp)
	lw $t2, -188($sp)
	sw $t2, 12($t1)
	lw $t1, -168($sp)
	lw $t0, 16($t1)
	sw $t0, -192($sp)
	lw $t1, -172($sp)
	lw $t2, -192($sp)
	sw $t2, 16($t1)
	lw $t1, -168($sp)
	lw $t0, 20($t1)
	sw $t0, -196($sp)
	lw $t1, -172($sp)
	lw $t2, -196($sp)
	sw $t2, 20($t1)
	lw $t1, -168($sp)
	lw $t0, 24($t1)
	sw $t0, -200($sp)
	lw $t1, -172($sp)
	lw $t2, -200($sp)
	sw $t2, 24($t1)
	lw $t1, -168($sp)
	lw $t0, 28($t1)
	sw $t0, -204($sp)
	lw $t1, -172($sp)
	lw $t2, -204($sp)
	sw $t2, 28($t1)
	lw $t1, -168($sp)
	lw $t0, 32($t1)
	sw $t0, -208($sp)
	lw $t1, -172($sp)
	lw $t2, -208($sp)
	sw $t2, 32($t1)
	lw $t1, -168($sp)
	lw $t0, 36($t1)
	sw $t0, -212($sp)
	lw $t1, -172($sp)
	lw $t2, -212($sp)
	sw $t2, 36($t1)
	lw $t1, -168($sp)
	lw $t0, 40($t1)
	sw $t0, -216($sp)
	lw $t1, -172($sp)
	lw $t2, -216($sp)
	sw $t2, 40($t1)
	lw $t1, -168($sp)
	lw $t0, 44($t1)
	sw $t0, -220($sp)
	lw $t1, -172($sp)
	lw $t2, -220($sp)
	sw $t2, 44($t1)
	lw $t1, -168($sp)
	lw $t0, 48($t1)
	sw $t0, -224($sp)
	lw $t1, -172($sp)
	lw $t2, -224($sp)
	sw $t2, 48($t1)
	lw $t1, -168($sp)
	lw $t0, 52($t1)
	sw $t0, -228($sp)
	lw $t1, -172($sp)
	lw $t2, -228($sp)
	sw $t2, 52($t1)
	lw $t1, -168($sp)
	lw $t0, 56($t1)
	sw $t0, -232($sp)
	lw $t1, -172($sp)
	lw $t2, -232($sp)
	sw $t2, 56($t1)
	lw $t1, -168($sp)
	lw $t0, 60($t1)
	sw $t0, -236($sp)
	lw $t1, -172($sp)
	lw $t2, -236($sp)
	sw $t2, 60($t1)
	lw $t1, -168($sp)
	lw $t0, 64($t1)
	sw $t0, -240($sp)
	lw $t1, -172($sp)
	lw $t2, -240($sp)
	sw $t2, 64($t1)
	lw $t1, -168($sp)
	lw $t0, 68($t1)
	sw $t0, -244($sp)
	lw $t1, -172($sp)
	lw $t2, -244($sp)
	sw $t2, 68($t1)
	lw $t1, -168($sp)
	lw $t0, 72($t1)
	sw $t0, -248($sp)
	lw $t1, -172($sp)
	lw $t2, -248($sp)
	sw $t2, 72($t1)
	lw $t1, -168($sp)
	lw $t0, 76($t1)
	sw $t0, -252($sp)
	lw $t1, -172($sp)
	lw $t2, -252($sp)
	sw $t2, 76($t1)
	lw $t1, -168($sp)
	lw $t0, 80($t1)
	sw $t0, -256($sp)
	lw $t1, -172($sp)
	lw $t2, -256($sp)
	sw $t2, 80($t1)
	lw $t1, -168($sp)
	lw $t0, 84($t1)
	sw $t0, -260($sp)
	lw $t1, -172($sp)
	lw $t2, -260($sp)
	sw $t2, 84($t1)
	lw $t1, -168($sp)
	lw $t0, 88($t1)
	sw $t0, -264($sp)
	lw $t1, -172($sp)
	lw $t2, -264($sp)
	sw $t2, 88($t1)
	lw $t1, -168($sp)
	lw $t0, 92($t1)
	sw $t0, -268($sp)
	lw $t1, -172($sp)
	lw $t2, -268($sp)
	sw $t2, 92($t1)
	lw $t1, -168($sp)
	lw $t0, 96($t1)
	sw $t0, -272($sp)
	lw $t1, -172($sp)
	lw $t2, -272($sp)
	sw $t2, 96($t1)
	lw $t1, -160($sp)
	lw $t0, 8($t1)
	sw $t0, -276($sp)
	lw $t1, -164($sp)
	lw $t2, -276($sp)
	sw $t2, 8($t1)
	lw $t1, -160($sp)
	lw $t0, 4($t1)
	sw $t0, -280($sp)
	lw $t1, -164($sp)
	lw $t0, 4($t1)
	sw $t0, -284($sp)
	lw $t1, -280($sp)
	lw $t0, 0($t1)
	sw $t0, -288($sp)
	lw $t1, -284($sp)
	lw $t2, -288($sp)
	sw $t2, 0($t1)
	lw $t1, -280($sp)
	lw $t0, 4($t1)
	sw $t0, -292($sp)
	lw $t1, -284($sp)
	lw $t2, -292($sp)
	sw $t2, 4($t1)
	lw $t1, -160($sp)
	lw $t0, 12($t1)
	sw $t0, -296($sp)
	lw $t1, -164($sp)
	lw $t2, -296($sp)
	sw $t2, 12($t1)
	lw $t0, -164($sp)
	sw $t0, -156($sp)
	lw $t0, 4($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	lw $t1, -4($sp)
	lw $t0, 0($t1)
	sw $t0, -308($sp)
	lw $t1, -304($sp)
	lw $t0, 0($t1)
	sw $t0, -312($sp)
	lw $t1, -308($sp)
	lw $t0, 0($t1)
	sw $t0, -316($sp)
	lw $t1, -312($sp)
	lw $t2, -316($sp)
	sw $t2, 0($t1)
	lw $t1, -308($sp)
	lw $t0, 4($t1)
	sw $t0, -320($sp)
	lw $t1, -312($sp)
	lw $t2, -320($sp)
	sw $t2, 4($t1)
	lw $t1, -308($sp)
	lw $t0, 8($t1)
	sw $t0, -324($sp)
	lw $t1, -312($sp)
	lw $t2, -324($sp)
	sw $t2, 8($t1)
	lw $t1, -308($sp)
	lw $t0, 12($t1)
	sw $t0, -328($sp)
	lw $t1, -312($sp)
	lw $t2, -328($sp)
	sw $t2, 12($t1)
	lw $t1, -308($sp)
	lw $t0, 16($t1)
	sw $t0, -332($sp)
	lw $t1, -312($sp)
	lw $t2, -332($sp)
	sw $t2, 16($t1)
	lw $t1, -308($sp)
	lw $t0, 20($t1)
	sw $t0, -336($sp)
	lw $t1, -312($sp)
	lw $t2, -336($sp)
	sw $t2, 20($t1)
	lw $t1, -308($sp)
	lw $t0, 24($t1)
	sw $t0, -340($sp)
	lw $t1, -312($sp)
	lw $t2, -340($sp)
	sw $t2, 24($t1)
	lw $t1, -308($sp)
	lw $t0, 28($t1)
	sw $t0, -344($sp)
	lw $t1, -312($sp)
	lw $t2, -344($sp)
	sw $t2, 28($t1)
	lw $t1, -308($sp)
	lw $t0, 32($t1)
	sw $t0, -348($sp)
	lw $t1, -312($sp)
	lw $t2, -348($sp)
	sw $t2, 32($t1)
	lw $t1, -308($sp)
	lw $t0, 36($t1)
	sw $t0, -352($sp)
	lw $t1, -312($sp)
	lw $t2, -352($sp)
	sw $t2, 36($t1)
	lw $t1, -308($sp)
	lw $t0, 40($t1)
	sw $t0, -356($sp)
	lw $t1, -312($sp)
	lw $t2, -356($sp)
	sw $t2, 40($t1)
	lw $t1, -308($sp)
	lw $t0, 44($t1)
	sw $t0, -360($sp)
	lw $t1, -312($sp)
	lw $t2, -360($sp)
	sw $t2, 44($t1)
	lw $t1, -308($sp)
	lw $t0, 48($t1)
	sw $t0, -364($sp)
	lw $t1, -312($sp)
	lw $t2, -364($sp)
	sw $t2, 48($t1)
	lw $t1, -308($sp)
	lw $t0, 52($t1)
	sw $t0, -368($sp)
	lw $t1, -312($sp)
	lw $t2, -368($sp)
	sw $t2, 52($t1)
	lw $t1, -308($sp)
	lw $t0, 56($t1)
	sw $t0, -372($sp)
	lw $t1, -312($sp)
	lw $t2, -372($sp)
	sw $t2, 56($t1)
	lw $t1, -308($sp)
	lw $t0, 60($t1)
	sw $t0, -376($sp)
	lw $t1, -312($sp)
	lw $t2, -376($sp)
	sw $t2, 60($t1)
	lw $t1, -308($sp)
	lw $t0, 64($t1)
	sw $t0, -380($sp)
	lw $t1, -312($sp)
	lw $t2, -380($sp)
	sw $t2, 64($t1)
	lw $t1, -308($sp)
	lw $t0, 68($t1)
	sw $t0, -384($sp)
	lw $t1, -312($sp)
	lw $t2, -384($sp)
	sw $t2, 68($t1)
	lw $t1, -308($sp)
	lw $t0, 72($t1)
	sw $t0, -388($sp)
	lw $t1, -312($sp)
	lw $t2, -388($sp)
	sw $t2, 72($t1)
	lw $t1, -308($sp)
	lw $t0, 76($t1)
	sw $t0, -392($sp)
	lw $t1, -312($sp)
	lw $t2, -392($sp)
	sw $t2, 76($t1)
	lw $t1, -308($sp)
	lw $t0, 80($t1)
	sw $t0, -396($sp)
	lw $t1, -312($sp)
	lw $t2, -396($sp)
	sw $t2, 80($t1)
	lw $t1, -308($sp)
	lw $t0, 84($t1)
	sw $t0, -400($sp)
	lw $t1, -312($sp)
	lw $t2, -400($sp)
	sw $t2, 84($t1)
	lw $t1, -308($sp)
	lw $t0, 88($t1)
	sw $t0, -404($sp)
	lw $t1, -312($sp)
	lw $t2, -404($sp)
	sw $t2, 88($t1)
	lw $t1, -308($sp)
	lw $t0, 92($t1)
	sw $t0, -408($sp)
	lw $t1, -312($sp)
	lw $t2, -408($sp)
	sw $t2, 92($t1)
	lw $t1, -308($sp)
	lw $t0, 96($t1)
	sw $t0, -412($sp)
	lw $t1, -312($sp)
	lw $t2, -412($sp)
	sw $t2, 96($t1)
	lw $t1, -4($sp)
	lw $t0, 8($t1)
	sw $t0, -416($sp)
	lw $t1, -304($sp)
	lw $t2, -416($sp)
	sw $t2, 8($t1)
	lw $t1, -4($sp)
	lw $t0, 4($t1)
	sw $t0, -420($sp)
	lw $t1, -304($sp)
	lw $t0, 4($t1)
	sw $t0, -424($sp)
	lw $t1, -420($sp)
	lw $t0, 0($t1)
	sw $t0, -428($sp)
	lw $t1, -424($sp)
	lw $t2, -428($sp)
	sw $t2, 0($t1)
	lw $t1, -420($sp)
	lw $t0, 4($t1)
	sw $t0, -432($sp)
	lw $t1, -424($sp)
	lw $t2, -432($sp)
	sw $t2, 4($t1)
	lw $t1, -4($sp)
	lw $t0, 12($t1)
	sw $t0, -436($sp)
	lw $t1, -304($sp)
	lw $t2, -436($sp)
	sw $t2, 12($t1)
	lw $t0, -304($sp)
	sw $t0, -300($sp)
	jr $ra
_comp:
	sw $ra, ($sp)
	la $t0, ASU_28
	sw $t0, -4($sp)
	la $t0, ASU_29
	sw $t0, -8($sp)
	la $t0, ASU_30
	sw $t0, -12($sp)
	la $t0, ASU_31
	sw $t0, -16($sp)
	la $t0, ASU_32
	sw $t0, -156($sp)
	la $t0, ASU_33
	sw $t0, -160($sp)
	la $t0, ASU_34
	sw $t0, -164($sp)
	la $t0, ASU_35
	sw $t0, -168($sp)
	lw $t1, -4($sp)
	lw $t2, -8($sp)
	sw $t2, 0($t1)
	lw $t1, -4($sp)
	lw $t2, -12($sp)
	sw $t2, 4($t1)
	lw $t1, -4($sp)
	lw $t2, -16($sp)
	sw $t2, 12($t1)
	lw $t0, 8($sp)
	sw $t0, -452($sp)
	subu $sp, $sp, 456
	jal _getNode
	addi $sp, $sp, 456
	sw $v0, -20($sp)
	lw $ra, ($sp)
	lw $t1, -20($sp)
	lw $t0, 0($t1)
	sw $t0, -24($sp)
	lw $t1, -4($sp)
	lw $t0, 0($t1)
	sw $t0, -28($sp)
	lw $t1, -24($sp)
	lw $t0, 0($t1)
	sw $t0, -32($sp)
	lw $t1, -28($sp)
	lw $t2, -32($sp)
	sw $t2, 0($t1)
	lw $t1, -24($sp)
	lw $t0, 4($t1)
	sw $t0, -36($sp)
	lw $t1, -28($sp)
	lw $t2, -36($sp)
	sw $t2, 4($t1)
	lw $t1, -24($sp)
	lw $t0, 8($t1)
	sw $t0, -40($sp)
	lw $t1, -28($sp)
	lw $t2, -40($sp)
	sw $t2, 8($t1)
	lw $t1, -24($sp)
	lw $t0, 12($t1)
	sw $t0, -44($sp)
	lw $t1, -28($sp)
	lw $t2, -44($sp)
	sw $t2, 12($t1)
	lw $t1, -24($sp)
	lw $t0, 16($t1)
	sw $t0, -48($sp)
	lw $t1, -28($sp)
	lw $t2, -48($sp)
	sw $t2, 16($t1)
	lw $t1, -24($sp)
	lw $t0, 20($t1)
	sw $t0, -52($sp)
	lw $t1, -28($sp)
	lw $t2, -52($sp)
	sw $t2, 20($t1)
	lw $t1, -24($sp)
	lw $t0, 24($t1)
	sw $t0, -56($sp)
	lw $t1, -28($sp)
	lw $t2, -56($sp)
	sw $t2, 24($t1)
	lw $t1, -24($sp)
	lw $t0, 28($t1)
	sw $t0, -60($sp)
	lw $t1, -28($sp)
	lw $t2, -60($sp)
	sw $t2, 28($t1)
	lw $t1, -24($sp)
	lw $t0, 32($t1)
	sw $t0, -64($sp)
	lw $t1, -28($sp)
	lw $t2, -64($sp)
	sw $t2, 32($t1)
	lw $t1, -24($sp)
	lw $t0, 36($t1)
	sw $t0, -68($sp)
	lw $t1, -28($sp)
	lw $t2, -68($sp)
	sw $t2, 36($t1)
	lw $t1, -24($sp)
	lw $t0, 40($t1)
	sw $t0, -72($sp)
	lw $t1, -28($sp)
	lw $t2, -72($sp)
	sw $t2, 40($t1)
	lw $t1, -24($sp)
	lw $t0, 44($t1)
	sw $t0, -76($sp)
	lw $t1, -28($sp)
	lw $t2, -76($sp)
	sw $t2, 44($t1)
	lw $t1, -24($sp)
	lw $t0, 48($t1)
	sw $t0, -80($sp)
	lw $t1, -28($sp)
	lw $t2, -80($sp)
	sw $t2, 48($t1)
	lw $t1, -24($sp)
	lw $t0, 52($t1)
	sw $t0, -84($sp)
	lw $t1, -28($sp)
	lw $t2, -84($sp)
	sw $t2, 52($t1)
	lw $t1, -24($sp)
	lw $t0, 56($t1)
	sw $t0, -88($sp)
	lw $t1, -28($sp)
	lw $t2, -88($sp)
	sw $t2, 56($t1)
	lw $t1, -24($sp)
	lw $t0, 60($t1)
	sw $t0, -92($sp)
	lw $t1, -28($sp)
	lw $t2, -92($sp)
	sw $t2, 60($t1)
	lw $t1, -24($sp)
	lw $t0, 64($t1)
	sw $t0, -96($sp)
	lw $t1, -28($sp)
	lw $t2, -96($sp)
	sw $t2, 64($t1)
	lw $t1, -24($sp)
	lw $t0, 68($t1)
	sw $t0, -100($sp)
	lw $t1, -28($sp)
	lw $t2, -100($sp)
	sw $t2, 68($t1)
	lw $t1, -24($sp)
	lw $t0, 72($t1)
	sw $t0, -104($sp)
	lw $t1, -28($sp)
	lw $t2, -104($sp)
	sw $t2, 72($t1)
	lw $t1, -24($sp)
	lw $t0, 76($t1)
	sw $t0, -108($sp)
	lw $t1, -28($sp)
	lw $t2, -108($sp)
	sw $t2, 76($t1)
	lw $t1, -24($sp)
	lw $t0, 80($t1)
	sw $t0, -112($sp)
	lw $t1, -28($sp)
	lw $t2, -112($sp)
	sw $t2, 80($t1)
	lw $t1, -24($sp)
	lw $t0, 84($t1)
	sw $t0, -116($sp)
	lw $t1, -28($sp)
	lw $t2, -116($sp)
	sw $t2, 84($t1)
	lw $t1, -24($sp)
	lw $t0, 88($t1)
	sw $t0, -120($sp)
	lw $t1, -28($sp)
	lw $t2, -120($sp)
	sw $t2, 88($t1)
	lw $t1, -24($sp)
	lw $t0, 92($t1)
	sw $t0, -124($sp)
	lw $t1, -28($sp)
	lw $t2, -124($sp)
	sw $t2, 92($t1)
	lw $t1, -24($sp)
	lw $t0, 96($t1)
	sw $t0, -128($sp)
	lw $t1, -28($sp)
	lw $t2, -128($sp)
	sw $t2, 96($t1)
	lw $t1, -20($sp)
	lw $t0, 8($t1)
	sw $t0, -132($sp)
	lw $t1, -4($sp)
	lw $t2, -132($sp)
	sw $t2, 8($t1)
	lw $t1, -20($sp)
	lw $t0, 4($t1)
	sw $t0, -136($sp)
	lw $t1, -4($sp)
	lw $t0, 4($t1)
	sw $t0, -140($sp)
	lw $t1, -136($sp)
	lw $t0, 0($t1)
	sw $t0, -144($sp)
	lw $t1, -140($sp)
	lw $t2, -144($sp)
	sw $t2, 0($t1)
	lw $t1, -136($sp)
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	lw $t1, -140($sp)
	lw $t2, -148($sp)
	sw $t2, 4($t1)
	lw $t1, -20($sp)
	lw $t0, 12($t1)
	sw $t0, -152($sp)
	lw $t1, -4($sp)
	lw $t2, -152($sp)
	sw $t2, 12($t1)
	lw $t1, -156($sp)
	lw $t2, -160($sp)
	sw $t2, 0($t1)
	lw $t1, -156($sp)
	lw $t2, -164($sp)
	sw $t2, 4($t1)
	lw $t1, -156($sp)
	lw $t2, -168($sp)
	sw $t2, 12($t1)
	lw $t0, 4($sp)
	sw $t0, -452($sp)
	subu $sp, $sp, 456
	jal _getNode
	addi $sp, $sp, 456
	sw $v0, -172($sp)
	lw $ra, ($sp)
	lw $t1, -172($sp)
	lw $t0, 0($t1)
	sw $t0, -176($sp)
	lw $t1, -156($sp)
	lw $t0, 0($t1)
	sw $t0, -180($sp)
	lw $t1, -176($sp)
	lw $t0, 0($t1)
	sw $t0, -184($sp)
	lw $t1, -180($sp)
	lw $t2, -184($sp)
	sw $t2, 0($t1)
	lw $t1, -176($sp)
	lw $t0, 4($t1)
	sw $t0, -188($sp)
	lw $t1, -180($sp)
	lw $t2, -188($sp)
	sw $t2, 4($t1)
	lw $t1, -176($sp)
	lw $t0, 8($t1)
	sw $t0, -192($sp)
	lw $t1, -180($sp)
	lw $t2, -192($sp)
	sw $t2, 8($t1)
	lw $t1, -176($sp)
	lw $t0, 12($t1)
	sw $t0, -196($sp)
	lw $t1, -180($sp)
	lw $t2, -196($sp)
	sw $t2, 12($t1)
	lw $t1, -176($sp)
	lw $t0, 16($t1)
	sw $t0, -200($sp)
	lw $t1, -180($sp)
	lw $t2, -200($sp)
	sw $t2, 16($t1)
	lw $t1, -176($sp)
	lw $t0, 20($t1)
	sw $t0, -204($sp)
	lw $t1, -180($sp)
	lw $t2, -204($sp)
	sw $t2, 20($t1)
	lw $t1, -176($sp)
	lw $t0, 24($t1)
	sw $t0, -208($sp)
	lw $t1, -180($sp)
	lw $t2, -208($sp)
	sw $t2, 24($t1)
	lw $t1, -176($sp)
	lw $t0, 28($t1)
	sw $t0, -212($sp)
	lw $t1, -180($sp)
	lw $t2, -212($sp)
	sw $t2, 28($t1)
	lw $t1, -176($sp)
	lw $t0, 32($t1)
	sw $t0, -216($sp)
	lw $t1, -180($sp)
	lw $t2, -216($sp)
	sw $t2, 32($t1)
	lw $t1, -176($sp)
	lw $t0, 36($t1)
	sw $t0, -220($sp)
	lw $t1, -180($sp)
	lw $t2, -220($sp)
	sw $t2, 36($t1)
	lw $t1, -176($sp)
	lw $t0, 40($t1)
	sw $t0, -224($sp)
	lw $t1, -180($sp)
	lw $t2, -224($sp)
	sw $t2, 40($t1)
	lw $t1, -176($sp)
	lw $t0, 44($t1)
	sw $t0, -228($sp)
	lw $t1, -180($sp)
	lw $t2, -228($sp)
	sw $t2, 44($t1)
	lw $t1, -176($sp)
	lw $t0, 48($t1)
	sw $t0, -232($sp)
	lw $t1, -180($sp)
	lw $t2, -232($sp)
	sw $t2, 48($t1)
	lw $t1, -176($sp)
	lw $t0, 52($t1)
	sw $t0, -236($sp)
	lw $t1, -180($sp)
	lw $t2, -236($sp)
	sw $t2, 52($t1)
	lw $t1, -176($sp)
	lw $t0, 56($t1)
	sw $t0, -240($sp)
	lw $t1, -180($sp)
	lw $t2, -240($sp)
	sw $t2, 56($t1)
	lw $t1, -176($sp)
	lw $t0, 60($t1)
	sw $t0, -244($sp)
	lw $t1, -180($sp)
	lw $t2, -244($sp)
	sw $t2, 60($t1)
	lw $t1, -176($sp)
	lw $t0, 64($t1)
	sw $t0, -248($sp)
	lw $t1, -180($sp)
	lw $t2, -248($sp)
	sw $t2, 64($t1)
	lw $t1, -176($sp)
	lw $t0, 68($t1)
	sw $t0, -252($sp)
	lw $t1, -180($sp)
	lw $t2, -252($sp)
	sw $t2, 68($t1)
	lw $t1, -176($sp)
	lw $t0, 72($t1)
	sw $t0, -256($sp)
	lw $t1, -180($sp)
	lw $t2, -256($sp)
	sw $t2, 72($t1)
	lw $t1, -176($sp)
	lw $t0, 76($t1)
	sw $t0, -260($sp)
	lw $t1, -180($sp)
	lw $t2, -260($sp)
	sw $t2, 76($t1)
	lw $t1, -176($sp)
	lw $t0, 80($t1)
	sw $t0, -264($sp)
	lw $t1, -180($sp)
	lw $t2, -264($sp)
	sw $t2, 80($t1)
	lw $t1, -176($sp)
	lw $t0, 84($t1)
	sw $t0, -268($sp)
	lw $t1, -180($sp)
	lw $t2, -268($sp)
	sw $t2, 84($t1)
	lw $t1, -176($sp)
	lw $t0, 88($t1)
	sw $t0, -272($sp)
	lw $t1, -180($sp)
	lw $t2, -272($sp)
	sw $t2, 88($t1)
	lw $t1, -176($sp)
	lw $t0, 92($t1)
	sw $t0, -276($sp)
	lw $t1, -180($sp)
	lw $t2, -276($sp)
	sw $t2, 92($t1)
	lw $t1, -176($sp)
	lw $t0, 96($t1)
	sw $t0, -280($sp)
	lw $t1, -180($sp)
	lw $t2, -280($sp)
	sw $t2, 96($t1)
	lw $t1, -172($sp)
	lw $t0, 8($t1)
	sw $t0, -284($sp)
	lw $t1, -156($sp)
	lw $t2, -284($sp)
	sw $t2, 8($t1)
	lw $t1, -172($sp)
	lw $t0, 4($t1)
	sw $t0, -288($sp)
	lw $t1, -156($sp)
	lw $t0, 4($t1)
	sw $t0, -292($sp)
	lw $t1, -288($sp)
	lw $t0, 0($t1)
	sw $t0, -296($sp)
	lw $t1, -292($sp)
	lw $t2, -296($sp)
	sw $t2, 0($t1)
	lw $t1, -288($sp)
	lw $t0, 4($t1)
	sw $t0, -300($sp)
	lw $t1, -292($sp)
	lw $t2, -300($sp)
	sw $t2, 4($t1)
	lw $t1, -172($sp)
	lw $t0, 12($t1)
	sw $t0, -304($sp)
	lw $t1, -156($sp)
	lw $t2, -304($sp)
	sw $t2, 12($t1)
	li $t0, 0
	sw $t0, -308($sp)
	li $t0, 0
	sw $t0, -312($sp)
L19:
	lw $t2, _size1
	lw $t1, -308($sp)
	slt $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	bne $t0, $0, L20
	b L18
L20:
L22:
	lw $t2, _size1
	lw $t1, -312($sp)
	slt $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t0, -320($sp)
	bne $t0, $0, L23
	b L21
L23:
	lw $t1, -4($sp)
	lw $t0, 0($t1)
	sw $t0, -324($sp)
	li $t0, 0
	sw $t0, -328($sp)
	li $t2, 20
	lw $t1, -308($sp)
	mul $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t2, -332($sp)
	lw $t1, -328($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	li $t2, 4
	lw $t1, -312($sp)
	mul $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t2, -336($sp)
	lw $t1, -328($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t2, -328($sp)
	lw $t1, -324($sp)
	add $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t0, -340($sp)
	lw $t1, ($t0)
	sw $t1, -344($sp)
	lw $t1, -156($sp)
	lw $t0, 0($t1)
	sw $t0, -348($sp)
	li $t0, 0
	sw $t0, -352($sp)
	li $t2, 20
	lw $t1, -308($sp)
	mul $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t2, -356($sp)
	lw $t1, -352($sp)
	add $t0, $t1, $t2
	sw $t0, -352($sp)
	li $t2, 4
	lw $t1, -312($sp)
	mul $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t2, -360($sp)
	lw $t1, -352($sp)
	add $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t2, -352($sp)
	lw $t1, -348($sp)
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -364($sp)
	lw $t1, ($t0)
	sw $t1, -368($sp)
	lw $t2, -368($sp)
	lw $t1, -344($sp)
	sgt $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t0, -372($sp)
	bne $t0, $0, L25
	b L24
L25:
	la $t1, -4($sp)
	sw $t1, -376($sp)
	la $t1, -156($sp)
	sw $t1, -380($sp)
	lw $t0, -376($sp)
	sw $t0, -452($sp)
	lw $t0, -380($sp)
	sw $t0, -456($sp)
	subu $sp, $sp, 460
	jal _exchange
	addi $sp, $sp, 460
	sw $v0, -384($sp)
	lw $ra, ($sp)
	lw $t1, -4($sp)
	lw $t0, 12($t1)
	sw $t0, -396($sp)
	lw $t1, -396($sp)
	lw $t0, 0($t1)
	sw $t0, -400($sp)
	li $t2, 1
	lw $t1, -400($sp)
	add $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t1, -4($sp)
	lw $t0, 12($t1)
	sw $t0, -408($sp)
	lw $t1, -408($sp)
	lw $t2, -404($sp)
	sw $t2, 0($t1)
	li $t2, 1
	lw $t1, -392($sp)
	sub $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t1, -156($sp)
	lw $t0, 12($t1)
	sw $t0, -420($sp)
	lw $t1, -420($sp)
	lw $t0, 0($t1)
	sw $t0, -424($sp)
	li $t2, 1
	lw $t1, -424($sp)
	sub $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t1, -156($sp)
	lw $t0, 12($t1)
	sw $t0, -432($sp)
	lw $t1, -432($sp)
	lw $t2, -428($sp)
	sw $t2, 0($t1)
	li $t2, 1
	lw $t1, -416($sp)
	add $t0, $t1, $t2
	sw $t0, -412($sp)
L24:
	li $t2, 1
	lw $t1, -312($sp)
	add $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t0, -440($sp)
	sw $t0, -312($sp)
	lw $t0, -312($sp)
	sw $t0, -436($sp)
	b L22
L21:
	li $t2, 1
	lw $t1, -308($sp)
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t0, -448($sp)
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	sw $t0, -444($sp)
	b L19
L18:
	jr $ra
_show:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -28($sp)
	la $t0, str_2
	sw $t0, -84($sp)
	la $t0, str_3
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -8($sp)
L27:
	lw $t2, _size1
	lw $t1, -4($sp)
	slt $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	bne $t0, $0, L28
	b L26
L28:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -20($sp)
L30:
	lw $t2, _size1
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L31
	b L29
L31:
	li $t0, 0
	sw $t0, -32($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t1, -44($sp)
	lw $t0, 0($t1)
	sw $t0, -48($sp)
	li $t0, 0
	sw $t0, -52($sp)
	li $t2, 20
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -52($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	lw $t0, -28($sp)
	sw $t0, -200($sp)
	lw $t0, -68($sp)
	sw $t0, -204($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 208
	jal _printf
	addi $sp, $sp, 208
	sw $v0, -72($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -76($sp)
	b L30
L29:
	lw $t0, -84($sp)
	sw $t0, -200($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 204
	jal _printf
	addi $sp, $sp, 204
	sw $v0, -88($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -92($sp)
	b L27
L26:
	li $t0, 0
	sw $t0, -104($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, -104($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	lw $t1, ($t0)
	sw $t1, -116($sp)
	lw $t1, -116($sp)
	lw $t0, 4($t1)
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	lw $t1, ($t0)
	sw $t1, -124($sp)
	li $t0, 0
	sw $t0, -128($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -128($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	lw $t1, ($t0)
	sw $t1, -140($sp)
	lw $t1, -140($sp)
	lw $t0, 4($t1)
	sw $t0, -144($sp)
	lw $t1, -144($sp)
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	li $t0, 0
	sw $t0, -152($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	lw $t1, ($t0)
	sw $t1, -164($sp)
	lw $t1, -164($sp)
	lw $t0, 8($t1)
	sw $t0, -168($sp)
	li $t0, 0
	sw $t0, -172($sp)
	li $t2, 20
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, -172($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	lw $t1, -184($sp)
	lw $t0, 12($t1)
	sw $t0, -188($sp)
	lw $t1, -188($sp)
	lw $t0, 0($t1)
	sw $t0, -192($sp)
	lw $t0, -100($sp)
	sw $t0, -200($sp)
	lw $t0, -124($sp)
	sw $t0, -204($sp)
	lw $t0, -148($sp)
	sw $t0, -208($sp)
	lw $t0, -168($sp)
	sw $t0, -212($sp)
	lw $t0, -192($sp)
	sw $t0, -216($sp)
	li $t0, 5
	sw $t0, _printf_cnt
	subu $sp, $sp, 220
	jal _printf
	addi $sp, $sp, 220
	sw $v0, -196($sp)
	lw $ra, ($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, ASU_36
	sw $t0, -812($sp)
	la $t0, ASU_37
	sw $t0, -816($sp)
	la $t0, ASU_38
	sw $t0, -820($sp)
	la $t0, ASU_39
	sw $t0, -824($sp)
	la $t0, ASU_40
	sw $t0, -960($sp)
	la $t0, ASU_41
	sw $t0, -964($sp)
	la $t0, ASU_42
	sw $t0, -968($sp)
	la $t0, ASU_43
	sw $t0, -972($sp)
	la $t0, str_4
	sw $t0, -776($sp)
	la $t0, str_5
	sw $t0, -800($sp)
	la $t0, str_6
	sw $t0, -1124($sp)
	li $t0, 7
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
L33:
	lw $t2, _size2
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L34
	b L32
L34:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -28($sp)
L36:
	lw $t2, _size1
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	bne $t0, $0, L37
	b L35
L37:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -36($sp)
L39:
	lw $t2, _size1
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L40
	b L38
L40:
	li $t2, 5110
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -16($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, -8($sp)
	li $t1, 34
	sub $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, -52($sp)
	rem $t0, $t1, $t2
	sw $t0, -60($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	li $t0, 0
	sw $t0, -68($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, -68($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	lw $t1, ($t0)
	sw $t1, -80($sp)
	lw $t1, -80($sp)
	lw $t0, 0($t1)
	sw $t0, -84($sp)
	li $t0, 0
	sw $t0, -88($sp)
	li $t2, 20
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	lw $t1, -64($sp)
	sw $t1, ($t0)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t0, -100($sp)
	lw $t1, ($t0)
	sw $t1, -44($sp)
	lw $t2, -12($sp)
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -12($sp)
	lw $t1, -112($sp)
	mul $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	li $t0, 0
	sw $t0, -124($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	lw $t1, ($t0)
	sw $t1, -136($sp)
	lw $t1, -136($sp)
	lw $t0, 4($t1)
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	lw $t1, -120($sp)
	sw $t1, ($t0)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t2, -12($sp)
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -8($sp)
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	li $t2, 1
	lw $t1, -156($sp)
	sll $t0, $t1, $t2
	sw $t0, -160($sp)
	li $t0, 0
	sw $t0, -164($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -164($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	lw $t1, ($t0)
	sw $t1, -176($sp)
	lw $t1, -176($sp)
	lw $t0, 4($t1)
	sw $t0, -180($sp)
	lw $t1, -180($sp)
	lw $t2, -160($sp)
	sw $t2, 4($t1)
	lw $t1, -180($sp)
	lw $t0, 4($t1)
	sw $t0, -148($sp)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t2, -12($sp)
	not $t0, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -16($sp)
	lw $t1, -196($sp)
	or $t0, $t1, $t2
	sw $t0, -200($sp)
	li $t0, 0
	sw $t0, -204($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	lw $t1, ($t0)
	sw $t1, -216($sp)
	lw $t1, -216($sp)
	lw $t0, 12($t1)
	sw $t0, -220($sp)
	lw $t1, -220($sp)
	lw $t2, -200($sp)
	sw $t2, 0($t1)
	li $t0, 0
	sw $t0, -228($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, -228($sp)
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t2, -228($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	lw $t1, ($t0)
	sw $t1, -240($sp)
	lw $t1, -240($sp)
	lw $t0, 4($t1)
	sw $t0, -244($sp)
	lw $t0, -244($sp)
	lw $t1, ($t0)
	sw $t1, -248($sp)
	li $t2, 26
	lw $t1, -248($sp)
	rem $t0, $t1, $t2
	sw $t0, -252($sp)
	li $t2, 97
	lw $t1, -252($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	li $t0, 0
	sw $t0, -260($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, -260($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -272($sp)
	lw $t1, -272($sp)
	lw $t0, 4($t1)
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	lw $t1, -256($sp)
	sw $t1, ($t0)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -224($sp)
	li $t0, 0
	sw $t0, -288($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -292($sp)
	lw $t1, -288($sp)
	add $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	lw $t1, ($t0)
	sw $t1, -300($sp)
	lw $t1, -300($sp)
	lw $t0, 4($t1)
	sw $t0, -304($sp)
	lw $t1, -304($sp)
	lw $t0, 4($t1)
	sw $t0, -308($sp)
	li $t2, 26
	lw $t1, -308($sp)
	rem $t0, $t1, $t2
	sw $t0, -312($sp)
	li $t2, 65
	lw $t1, -312($sp)
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	li $t0, 0
	sw $t0, -320($sp)
	li $t2, 20
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, -320($sp)
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, -320($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t0, -328($sp)
	lw $t1, ($t0)
	sw $t1, -332($sp)
	lw $t1, -332($sp)
	lw $t0, 4($t1)
	sw $t0, -336($sp)
	lw $t1, -336($sp)
	lw $t2, -316($sp)
	sw $t2, 4($t1)
	lw $t1, -336($sp)
	lw $t0, 4($t1)
	sw $t0, -284($sp)
	lw $t0, -336($sp)
	lw $t1, ($t0)
	sw $t1, -284($sp)
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t0, -348($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -344($sp)
	b L39
L38:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t0, -356($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -352($sp)
	b L36
L35:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -364($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -360($sp)
	b L33
L32:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -368($sp)
L42:
	lw $t2, _size2
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t0, -372($sp)
	bne $t0, $0, L43
	b L41
L43:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -376($sp)
L45:
	lw $t2, _size2
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t0, -380($sp)
	bne $t0, $0, L46
	b L44
L46:
	lw $t0, -12($sp)
	sw $t0, -1140($sp)
	lw $t0, -16($sp)
	sw $t0, -1144($sp)
	subu $sp, $sp, 1148
	jal _comp
	addi $sp, $sp, 1148
	sw $v0, -384($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t0, -392($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -388($sp)
	b L45
L44:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -400($sp)
	lw $t0, -400($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -396($sp)
	b L42
L41:
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -404($sp)
L48:
	lw $t2, _size2
	lw $t1, -8($sp)
	slt $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t0, -408($sp)
	bne $t0, $0, L49
	b L47
L49:
	lw $t0, -8($sp)
	sw $t0, -1140($sp)
	subu $sp, $sp, 1144
	jal _show
	addi $sp, $sp, 1144
	sw $v0, -412($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -420($sp)
	lw $t0, -420($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -416($sp)
	b L48
L47:
	li $t2, 1
	lw $t1, _size2
	sub $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t0, -428($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -424($sp)
L51:
	li $t2, -1
	lw $t1, -12($sp)
	sgt $t0, $t1, $t2
	sw $t0, -432($sp)
	lw $t0, -432($sp)
	bne $t0, $0, L52
	b L50
L52:
	li $t2, 3
	lw $t1, -12($sp)
	rem $t0, $t1, $t2
	sw $t0, -436($sp)
	li $t2, 0
	lw $t1, -436($sp)
	seq $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t0, -440($sp)
	bne $t0, $0, L54
	b L55
L54:
	li $t2, 3
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t2, _size2
	lw $t1, -448($sp)
	rem $t0, $t1, $t2
	sw $t0, -452($sp)
	lw $t0, -452($sp)
	sw $t0, -1140($sp)
	subu $sp, $sp, 1144
	jal _getNode
	addi $sp, $sp, 1144
	sw $v0, -456($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -460($sp)
	li $t2, 20
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -464($sp)
	lw $t2, -464($sp)
	lw $t1, -460($sp)
	add $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t2, -460($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -468($sp)
	lw $t0, -468($sp)
	lw $t1, ($t0)
	sw $t1, -472($sp)
	lw $t1, -456($sp)
	lw $t0, 0($t1)
	sw $t0, -476($sp)
	lw $t1, -472($sp)
	lw $t0, 0($t1)
	sw $t0, -480($sp)
	lw $t1, -476($sp)
	lw $t0, 0($t1)
	sw $t0, -484($sp)
	lw $t1, -480($sp)
	lw $t2, -484($sp)
	sw $t2, 0($t1)
	lw $t1, -476($sp)
	lw $t0, 4($t1)
	sw $t0, -488($sp)
	lw $t1, -480($sp)
	lw $t2, -488($sp)
	sw $t2, 4($t1)
	lw $t1, -476($sp)
	lw $t0, 8($t1)
	sw $t0, -492($sp)
	lw $t1, -480($sp)
	lw $t2, -492($sp)
	sw $t2, 8($t1)
	lw $t1, -476($sp)
	lw $t0, 12($t1)
	sw $t0, -496($sp)
	lw $t1, -480($sp)
	lw $t2, -496($sp)
	sw $t2, 12($t1)
	lw $t1, -476($sp)
	lw $t0, 16($t1)
	sw $t0, -500($sp)
	lw $t1, -480($sp)
	lw $t2, -500($sp)
	sw $t2, 16($t1)
	lw $t1, -476($sp)
	lw $t0, 20($t1)
	sw $t0, -504($sp)
	lw $t1, -480($sp)
	lw $t2, -504($sp)
	sw $t2, 20($t1)
	lw $t1, -476($sp)
	lw $t0, 24($t1)
	sw $t0, -508($sp)
	lw $t1, -480($sp)
	lw $t2, -508($sp)
	sw $t2, 24($t1)
	lw $t1, -476($sp)
	lw $t0, 28($t1)
	sw $t0, -512($sp)
	lw $t1, -480($sp)
	lw $t2, -512($sp)
	sw $t2, 28($t1)
	lw $t1, -476($sp)
	lw $t0, 32($t1)
	sw $t0, -516($sp)
	lw $t1, -480($sp)
	lw $t2, -516($sp)
	sw $t2, 32($t1)
	lw $t1, -476($sp)
	lw $t0, 36($t1)
	sw $t0, -520($sp)
	lw $t1, -480($sp)
	lw $t2, -520($sp)
	sw $t2, 36($t1)
	lw $t1, -476($sp)
	lw $t0, 40($t1)
	sw $t0, -524($sp)
	lw $t1, -480($sp)
	lw $t2, -524($sp)
	sw $t2, 40($t1)
	lw $t1, -476($sp)
	lw $t0, 44($t1)
	sw $t0, -528($sp)
	lw $t1, -480($sp)
	lw $t2, -528($sp)
	sw $t2, 44($t1)
	lw $t1, -476($sp)
	lw $t0, 48($t1)
	sw $t0, -532($sp)
	lw $t1, -480($sp)
	lw $t2, -532($sp)
	sw $t2, 48($t1)
	lw $t1, -476($sp)
	lw $t0, 52($t1)
	sw $t0, -536($sp)
	lw $t1, -480($sp)
	lw $t2, -536($sp)
	sw $t2, 52($t1)
	lw $t1, -476($sp)
	lw $t0, 56($t1)
	sw $t0, -540($sp)
	lw $t1, -480($sp)
	lw $t2, -540($sp)
	sw $t2, 56($t1)
	lw $t1, -476($sp)
	lw $t0, 60($t1)
	sw $t0, -544($sp)
	lw $t1, -480($sp)
	lw $t2, -544($sp)
	sw $t2, 60($t1)
	lw $t1, -476($sp)
	lw $t0, 64($t1)
	sw $t0, -548($sp)
	lw $t1, -480($sp)
	lw $t2, -548($sp)
	sw $t2, 64($t1)
	lw $t1, -476($sp)
	lw $t0, 68($t1)
	sw $t0, -552($sp)
	lw $t1, -480($sp)
	lw $t2, -552($sp)
	sw $t2, 68($t1)
	lw $t1, -476($sp)
	lw $t0, 72($t1)
	sw $t0, -556($sp)
	lw $t1, -480($sp)
	lw $t2, -556($sp)
	sw $t2, 72($t1)
	lw $t1, -476($sp)
	lw $t0, 76($t1)
	sw $t0, -560($sp)
	lw $t1, -480($sp)
	lw $t2, -560($sp)
	sw $t2, 76($t1)
	lw $t1, -476($sp)
	lw $t0, 80($t1)
	sw $t0, -564($sp)
	lw $t1, -480($sp)
	lw $t2, -564($sp)
	sw $t2, 80($t1)
	lw $t1, -476($sp)
	lw $t0, 84($t1)
	sw $t0, -568($sp)
	lw $t1, -480($sp)
	lw $t2, -568($sp)
	sw $t2, 84($t1)
	lw $t1, -476($sp)
	lw $t0, 88($t1)
	sw $t0, -572($sp)
	lw $t1, -480($sp)
	lw $t2, -572($sp)
	sw $t2, 88($t1)
	lw $t1, -476($sp)
	lw $t0, 92($t1)
	sw $t0, -576($sp)
	lw $t1, -480($sp)
	lw $t2, -576($sp)
	sw $t2, 92($t1)
	lw $t1, -476($sp)
	lw $t0, 96($t1)
	sw $t0, -580($sp)
	lw $t1, -480($sp)
	lw $t2, -580($sp)
	sw $t2, 96($t1)
	lw $t1, -456($sp)
	lw $t0, 8($t1)
	sw $t0, -584($sp)
	lw $t1, -472($sp)
	lw $t2, -584($sp)
	sw $t2, 8($t1)
	lw $t1, -456($sp)
	lw $t0, 4($t1)
	sw $t0, -588($sp)
	lw $t1, -472($sp)
	lw $t0, 4($t1)
	sw $t0, -592($sp)
	lw $t1, -588($sp)
	lw $t0, 0($t1)
	sw $t0, -596($sp)
	lw $t1, -592($sp)
	lw $t2, -596($sp)
	sw $t2, 0($t1)
	lw $t1, -588($sp)
	lw $t0, 4($t1)
	sw $t0, -600($sp)
	lw $t1, -592($sp)
	lw $t2, -600($sp)
	sw $t2, 4($t1)
	lw $t1, -456($sp)
	lw $t0, 12($t1)
	sw $t0, -604($sp)
	lw $t1, -472($sp)
	lw $t2, -604($sp)
	sw $t2, 12($t1)
	lw $t0, -472($sp)
	sw $t0, -444($sp)
	b L53
L55:
	lw $t0, -12($sp)
	sw $t0, -1140($sp)
	subu $sp, $sp, 1144
	jal _getNode
	addi $sp, $sp, 1144
	sw $v0, -612($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -616($sp)
	li $t2, 20
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t2, -620($sp)
	lw $t1, -616($sp)
	add $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t2, -616($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t0, -624($sp)
	lw $t1, ($t0)
	sw $t1, -628($sp)
	lw $t1, -612($sp)
	lw $t0, 0($t1)
	sw $t0, -632($sp)
	lw $t1, -628($sp)
	lw $t0, 0($t1)
	sw $t0, -636($sp)
	lw $t1, -632($sp)
	lw $t0, 0($t1)
	sw $t0, -640($sp)
	lw $t1, -636($sp)
	lw $t2, -640($sp)
	sw $t2, 0($t1)
	lw $t1, -632($sp)
	lw $t0, 4($t1)
	sw $t0, -644($sp)
	lw $t1, -636($sp)
	lw $t2, -644($sp)
	sw $t2, 4($t1)
	lw $t1, -632($sp)
	lw $t0, 8($t1)
	sw $t0, -648($sp)
	lw $t1, -636($sp)
	lw $t2, -648($sp)
	sw $t2, 8($t1)
	lw $t1, -632($sp)
	lw $t0, 12($t1)
	sw $t0, -652($sp)
	lw $t1, -636($sp)
	lw $t2, -652($sp)
	sw $t2, 12($t1)
	lw $t1, -632($sp)
	lw $t0, 16($t1)
	sw $t0, -656($sp)
	lw $t1, -636($sp)
	lw $t2, -656($sp)
	sw $t2, 16($t1)
	lw $t1, -632($sp)
	lw $t0, 20($t1)
	sw $t0, -660($sp)
	lw $t1, -636($sp)
	lw $t2, -660($sp)
	sw $t2, 20($t1)
	lw $t1, -632($sp)
	lw $t0, 24($t1)
	sw $t0, -664($sp)
	lw $t1, -636($sp)
	lw $t2, -664($sp)
	sw $t2, 24($t1)
	lw $t1, -632($sp)
	lw $t0, 28($t1)
	sw $t0, -668($sp)
	lw $t1, -636($sp)
	lw $t2, -668($sp)
	sw $t2, 28($t1)
	lw $t1, -632($sp)
	lw $t0, 32($t1)
	sw $t0, -672($sp)
	lw $t1, -636($sp)
	lw $t2, -672($sp)
	sw $t2, 32($t1)
	lw $t1, -632($sp)
	lw $t0, 36($t1)
	sw $t0, -676($sp)
	lw $t1, -636($sp)
	lw $t2, -676($sp)
	sw $t2, 36($t1)
	lw $t1, -632($sp)
	lw $t0, 40($t1)
	sw $t0, -680($sp)
	lw $t1, -636($sp)
	lw $t2, -680($sp)
	sw $t2, 40($t1)
	lw $t1, -632($sp)
	lw $t0, 44($t1)
	sw $t0, -684($sp)
	lw $t1, -636($sp)
	lw $t2, -684($sp)
	sw $t2, 44($t1)
	lw $t1, -632($sp)
	lw $t0, 48($t1)
	sw $t0, -688($sp)
	lw $t1, -636($sp)
	lw $t2, -688($sp)
	sw $t2, 48($t1)
	lw $t1, -632($sp)
	lw $t0, 52($t1)
	sw $t0, -692($sp)
	lw $t1, -636($sp)
	lw $t2, -692($sp)
	sw $t2, 52($t1)
	lw $t1, -632($sp)
	lw $t0, 56($t1)
	sw $t0, -696($sp)
	lw $t1, -636($sp)
	lw $t2, -696($sp)
	sw $t2, 56($t1)
	lw $t1, -632($sp)
	lw $t0, 60($t1)
	sw $t0, -700($sp)
	lw $t1, -636($sp)
	lw $t2, -700($sp)
	sw $t2, 60($t1)
	lw $t1, -632($sp)
	lw $t0, 64($t1)
	sw $t0, -704($sp)
	lw $t1, -636($sp)
	lw $t2, -704($sp)
	sw $t2, 64($t1)
	lw $t1, -632($sp)
	lw $t0, 68($t1)
	sw $t0, -708($sp)
	lw $t1, -636($sp)
	lw $t2, -708($sp)
	sw $t2, 68($t1)
	lw $t1, -632($sp)
	lw $t0, 72($t1)
	sw $t0, -712($sp)
	lw $t1, -636($sp)
	lw $t2, -712($sp)
	sw $t2, 72($t1)
	lw $t1, -632($sp)
	lw $t0, 76($t1)
	sw $t0, -716($sp)
	lw $t1, -636($sp)
	lw $t2, -716($sp)
	sw $t2, 76($t1)
	lw $t1, -632($sp)
	lw $t0, 80($t1)
	sw $t0, -720($sp)
	lw $t1, -636($sp)
	lw $t2, -720($sp)
	sw $t2, 80($t1)
	lw $t1, -632($sp)
	lw $t0, 84($t1)
	sw $t0, -724($sp)
	lw $t1, -636($sp)
	lw $t2, -724($sp)
	sw $t2, 84($t1)
	lw $t1, -632($sp)
	lw $t0, 88($t1)
	sw $t0, -728($sp)
	lw $t1, -636($sp)
	lw $t2, -728($sp)
	sw $t2, 88($t1)
	lw $t1, -632($sp)
	lw $t0, 92($t1)
	sw $t0, -732($sp)
	lw $t1, -636($sp)
	lw $t2, -732($sp)
	sw $t2, 92($t1)
	lw $t1, -632($sp)
	lw $t0, 96($t1)
	sw $t0, -736($sp)
	lw $t1, -636($sp)
	lw $t2, -736($sp)
	sw $t2, 96($t1)
	lw $t1, -612($sp)
	lw $t0, 8($t1)
	sw $t0, -740($sp)
	lw $t1, -628($sp)
	lw $t2, -740($sp)
	sw $t2, 8($t1)
	lw $t1, -612($sp)
	lw $t0, 4($t1)
	sw $t0, -744($sp)
	lw $t1, -628($sp)
	lw $t0, 4($t1)
	sw $t0, -748($sp)
	lw $t1, -744($sp)
	lw $t0, 0($t1)
	sw $t0, -752($sp)
	lw $t1, -748($sp)
	lw $t2, -752($sp)
	sw $t2, 0($t1)
	lw $t1, -744($sp)
	lw $t0, 4($t1)
	sw $t0, -756($sp)
	lw $t1, -748($sp)
	lw $t2, -756($sp)
	sw $t2, 4($t1)
	lw $t1, -612($sp)
	lw $t0, 12($t1)
	sw $t0, -760($sp)
	lw $t1, -628($sp)
	lw $t2, -760($sp)
	sw $t2, 12($t1)
	lw $t0, -628($sp)
	sw $t0, -608($sp)
L53:
	li $t2, 1
	lw $t1, -12($sp)
	sub $t0, $t1, $t2
	sw $t0, -772($sp)
	lw $t0, -772($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -768($sp)
	li $t2, 1
	lw $t1, -768($sp)
	add $t0, $t1, $t2
	sw $t0, -764($sp)
	b L51
L50:
	lw $t0, -776($sp)
	sw $t0, -1140($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 1144
	jal _printf
	addi $sp, $sp, 1144
	sw $v0, -780($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -784($sp)
L57:
	lw $t2, _size2
	lw $t1, -12($sp)
	slt $t0, $t1, $t2
	sw $t0, -788($sp)
	lw $t0, -788($sp)
	bne $t0, $0, L58
	b L56
L58:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -792($sp)
L60:
	lw $t2, _size2
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -796($sp)
	lw $t0, -796($sp)
	bne $t0, $0, L61
	b L59
L61:
	lw $t0, -12($sp)
	sw $t0, -1140($sp)
	subu $sp, $sp, 1144
	jal _getNode
	addi $sp, $sp, 1144
	sw $v0, -804($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -1140($sp)
	subu $sp, $sp, 1144
	jal _getNode
	addi $sp, $sp, 1144
	sw $v0, -808($sp)
	lw $ra, ($sp)
	lw $t1, -812($sp)
	lw $t2, -816($sp)
	sw $t2, 0($t1)
	lw $t1, -812($sp)
	lw $t2, -820($sp)
	sw $t2, 4($t1)
	lw $t1, -812($sp)
	lw $t2, -824($sp)
	sw $t2, 12($t1)
	lw $t1, -804($sp)
	lw $t0, 0($t1)
	sw $t0, -828($sp)
	lw $t1, -812($sp)
	lw $t0, 0($t1)
	sw $t0, -832($sp)
	lw $t1, -828($sp)
	lw $t0, 0($t1)
	sw $t0, -836($sp)
	lw $t1, -832($sp)
	lw $t2, -836($sp)
	sw $t2, 0($t1)
	lw $t1, -828($sp)
	lw $t0, 4($t1)
	sw $t0, -840($sp)
	lw $t1, -832($sp)
	lw $t2, -840($sp)
	sw $t2, 4($t1)
	lw $t1, -828($sp)
	lw $t0, 8($t1)
	sw $t0, -844($sp)
	lw $t1, -832($sp)
	lw $t2, -844($sp)
	sw $t2, 8($t1)
	lw $t1, -828($sp)
	lw $t0, 12($t1)
	sw $t0, -848($sp)
	lw $t1, -832($sp)
	lw $t2, -848($sp)
	sw $t2, 12($t1)
	lw $t1, -828($sp)
	lw $t0, 16($t1)
	sw $t0, -852($sp)
	lw $t1, -832($sp)
	lw $t2, -852($sp)
	sw $t2, 16($t1)
	lw $t1, -828($sp)
	lw $t0, 20($t1)
	sw $t0, -856($sp)
	lw $t1, -832($sp)
	lw $t2, -856($sp)
	sw $t2, 20($t1)
	lw $t1, -828($sp)
	lw $t0, 24($t1)
	sw $t0, -860($sp)
	lw $t1, -832($sp)
	lw $t2, -860($sp)
	sw $t2, 24($t1)
	lw $t1, -828($sp)
	lw $t0, 28($t1)
	sw $t0, -864($sp)
	lw $t1, -832($sp)
	lw $t2, -864($sp)
	sw $t2, 28($t1)
	lw $t1, -828($sp)
	lw $t0, 32($t1)
	sw $t0, -868($sp)
	lw $t1, -832($sp)
	lw $t2, -868($sp)
	sw $t2, 32($t1)
	lw $t1, -828($sp)
	lw $t0, 36($t1)
	sw $t0, -872($sp)
	lw $t1, -832($sp)
	lw $t2, -872($sp)
	sw $t2, 36($t1)
	lw $t1, -828($sp)
	lw $t0, 40($t1)
	sw $t0, -876($sp)
	lw $t1, -832($sp)
	lw $t2, -876($sp)
	sw $t2, 40($t1)
	lw $t1, -828($sp)
	lw $t0, 44($t1)
	sw $t0, -880($sp)
	lw $t1, -832($sp)
	lw $t2, -880($sp)
	sw $t2, 44($t1)
	lw $t1, -828($sp)
	lw $t0, 48($t1)
	sw $t0, -884($sp)
	lw $t1, -832($sp)
	lw $t2, -884($sp)
	sw $t2, 48($t1)
	lw $t1, -828($sp)
	lw $t0, 52($t1)
	sw $t0, -888($sp)
	lw $t1, -832($sp)
	lw $t2, -888($sp)
	sw $t2, 52($t1)
	lw $t1, -828($sp)
	lw $t0, 56($t1)
	sw $t0, -892($sp)
	lw $t1, -832($sp)
	lw $t2, -892($sp)
	sw $t2, 56($t1)
	lw $t1, -828($sp)
	lw $t0, 60($t1)
	sw $t0, -896($sp)
	lw $t1, -832($sp)
	lw $t2, -896($sp)
	sw $t2, 60($t1)
	lw $t1, -828($sp)
	lw $t0, 64($t1)
	sw $t0, -900($sp)
	lw $t1, -832($sp)
	lw $t2, -900($sp)
	sw $t2, 64($t1)
	lw $t1, -828($sp)
	lw $t0, 68($t1)
	sw $t0, -904($sp)
	lw $t1, -832($sp)
	lw $t2, -904($sp)
	sw $t2, 68($t1)
	lw $t1, -828($sp)
	lw $t0, 72($t1)
	sw $t0, -908($sp)
	lw $t1, -832($sp)
	lw $t2, -908($sp)
	sw $t2, 72($t1)
	lw $t1, -828($sp)
	lw $t0, 76($t1)
	sw $t0, -912($sp)
	lw $t1, -832($sp)
	lw $t2, -912($sp)
	sw $t2, 76($t1)
	lw $t1, -828($sp)
	lw $t0, 80($t1)
	sw $t0, -916($sp)
	lw $t1, -832($sp)
	lw $t2, -916($sp)
	sw $t2, 80($t1)
	lw $t1, -828($sp)
	lw $t0, 84($t1)
	sw $t0, -920($sp)
	lw $t1, -832($sp)
	lw $t2, -920($sp)
	sw $t2, 84($t1)
	lw $t1, -828($sp)
	lw $t0, 88($t1)
	sw $t0, -924($sp)
	lw $t1, -832($sp)
	lw $t2, -924($sp)
	sw $t2, 88($t1)
	lw $t1, -828($sp)
	lw $t0, 92($t1)
	sw $t0, -928($sp)
	lw $t1, -832($sp)
	lw $t2, -928($sp)
	sw $t2, 92($t1)
	lw $t1, -828($sp)
	lw $t0, 96($t1)
	sw $t0, -932($sp)
	lw $t1, -832($sp)
	lw $t2, -932($sp)
	sw $t2, 96($t1)
	lw $t1, -804($sp)
	lw $t0, 8($t1)
	sw $t0, -936($sp)
	lw $t1, -812($sp)
	lw $t2, -936($sp)
	sw $t2, 8($t1)
	lw $t1, -804($sp)
	lw $t0, 4($t1)
	sw $t0, -940($sp)
	lw $t1, -812($sp)
	lw $t0, 4($t1)
	sw $t0, -944($sp)
	lw $t1, -940($sp)
	lw $t0, 0($t1)
	sw $t0, -948($sp)
	lw $t1, -944($sp)
	lw $t2, -948($sp)
	sw $t2, 0($t1)
	lw $t1, -940($sp)
	lw $t0, 4($t1)
	sw $t0, -952($sp)
	lw $t1, -944($sp)
	lw $t2, -952($sp)
	sw $t2, 4($t1)
	lw $t1, -804($sp)
	lw $t0, 12($t1)
	sw $t0, -956($sp)
	lw $t1, -812($sp)
	lw $t2, -956($sp)
	sw $t2, 12($t1)
	lw $t1, -960($sp)
	lw $t2, -964($sp)
	sw $t2, 0($t1)
	lw $t1, -960($sp)
	lw $t2, -968($sp)
	sw $t2, 4($t1)
	lw $t1, -960($sp)
	lw $t2, -972($sp)
	sw $t2, 12($t1)
	lw $t1, -808($sp)
	lw $t0, 0($t1)
	sw $t0, -976($sp)
	lw $t1, -960($sp)
	lw $t0, 0($t1)
	sw $t0, -980($sp)
	lw $t1, -976($sp)
	lw $t0, 0($t1)
	sw $t0, -984($sp)
	lw $t1, -980($sp)
	lw $t2, -984($sp)
	sw $t2, 0($t1)
	lw $t1, -976($sp)
	lw $t0, 4($t1)
	sw $t0, -988($sp)
	lw $t1, -980($sp)
	lw $t2, -988($sp)
	sw $t2, 4($t1)
	lw $t1, -976($sp)
	lw $t0, 8($t1)
	sw $t0, -992($sp)
	lw $t1, -980($sp)
	lw $t2, -992($sp)
	sw $t2, 8($t1)
	lw $t1, -976($sp)
	lw $t0, 12($t1)
	sw $t0, -996($sp)
	lw $t1, -980($sp)
	lw $t2, -996($sp)
	sw $t2, 12($t1)
	lw $t1, -976($sp)
	lw $t0, 16($t1)
	sw $t0, -1000($sp)
	lw $t1, -980($sp)
	lw $t2, -1000($sp)
	sw $t2, 16($t1)
	lw $t1, -976($sp)
	lw $t0, 20($t1)
	sw $t0, -1004($sp)
	lw $t1, -980($sp)
	lw $t2, -1004($sp)
	sw $t2, 20($t1)
	lw $t1, -976($sp)
	lw $t0, 24($t1)
	sw $t0, -1008($sp)
	lw $t1, -980($sp)
	lw $t2, -1008($sp)
	sw $t2, 24($t1)
	lw $t1, -976($sp)
	lw $t0, 28($t1)
	sw $t0, -1012($sp)
	lw $t1, -980($sp)
	lw $t2, -1012($sp)
	sw $t2, 28($t1)
	lw $t1, -976($sp)
	lw $t0, 32($t1)
	sw $t0, -1016($sp)
	lw $t1, -980($sp)
	lw $t2, -1016($sp)
	sw $t2, 32($t1)
	lw $t1, -976($sp)
	lw $t0, 36($t1)
	sw $t0, -1020($sp)
	lw $t1, -980($sp)
	lw $t2, -1020($sp)
	sw $t2, 36($t1)
	lw $t1, -976($sp)
	lw $t0, 40($t1)
	sw $t0, -1024($sp)
	lw $t1, -980($sp)
	lw $t2, -1024($sp)
	sw $t2, 40($t1)
	lw $t1, -976($sp)
	lw $t0, 44($t1)
	sw $t0, -1028($sp)
	lw $t1, -980($sp)
	lw $t2, -1028($sp)
	sw $t2, 44($t1)
	lw $t1, -976($sp)
	lw $t0, 48($t1)
	sw $t0, -1032($sp)
	lw $t1, -980($sp)
	lw $t2, -1032($sp)
	sw $t2, 48($t1)
	lw $t1, -976($sp)
	lw $t0, 52($t1)
	sw $t0, -1036($sp)
	lw $t1, -980($sp)
	lw $t2, -1036($sp)
	sw $t2, 52($t1)
	lw $t1, -976($sp)
	lw $t0, 56($t1)
	sw $t0, -1040($sp)
	lw $t1, -980($sp)
	lw $t2, -1040($sp)
	sw $t2, 56($t1)
	lw $t1, -976($sp)
	lw $t0, 60($t1)
	sw $t0, -1044($sp)
	lw $t1, -980($sp)
	lw $t2, -1044($sp)
	sw $t2, 60($t1)
	lw $t1, -976($sp)
	lw $t0, 64($t1)
	sw $t0, -1048($sp)
	lw $t1, -980($sp)
	lw $t2, -1048($sp)
	sw $t2, 64($t1)
	lw $t1, -976($sp)
	lw $t0, 68($t1)
	sw $t0, -1052($sp)
	lw $t1, -980($sp)
	lw $t2, -1052($sp)
	sw $t2, 68($t1)
	lw $t1, -976($sp)
	lw $t0, 72($t1)
	sw $t0, -1056($sp)
	lw $t1, -980($sp)
	lw $t2, -1056($sp)
	sw $t2, 72($t1)
	lw $t1, -976($sp)
	lw $t0, 76($t1)
	sw $t0, -1060($sp)
	lw $t1, -980($sp)
	lw $t2, -1060($sp)
	sw $t2, 76($t1)
	lw $t1, -976($sp)
	lw $t0, 80($t1)
	sw $t0, -1064($sp)
	lw $t1, -980($sp)
	lw $t2, -1064($sp)
	sw $t2, 80($t1)
	lw $t1, -976($sp)
	lw $t0, 84($t1)
	sw $t0, -1068($sp)
	lw $t1, -980($sp)
	lw $t2, -1068($sp)
	sw $t2, 84($t1)
	lw $t1, -976($sp)
	lw $t0, 88($t1)
	sw $t0, -1072($sp)
	lw $t1, -980($sp)
	lw $t2, -1072($sp)
	sw $t2, 88($t1)
	lw $t1, -976($sp)
	lw $t0, 92($t1)
	sw $t0, -1076($sp)
	lw $t1, -980($sp)
	lw $t2, -1076($sp)
	sw $t2, 92($t1)
	lw $t1, -976($sp)
	lw $t0, 96($t1)
	sw $t0, -1080($sp)
	lw $t1, -980($sp)
	lw $t2, -1080($sp)
	sw $t2, 96($t1)
	lw $t1, -808($sp)
	lw $t0, 8($t1)
	sw $t0, -1084($sp)
	lw $t1, -960($sp)
	lw $t2, -1084($sp)
	sw $t2, 8($t1)
	lw $t1, -808($sp)
	lw $t0, 4($t1)
	sw $t0, -1088($sp)
	lw $t1, -960($sp)
	lw $t0, 4($t1)
	sw $t0, -1092($sp)
	lw $t1, -1088($sp)
	lw $t0, 0($t1)
	sw $t0, -1096($sp)
	lw $t1, -1092($sp)
	lw $t2, -1096($sp)
	sw $t2, 0($t1)
	lw $t1, -1088($sp)
	lw $t0, 4($t1)
	sw $t0, -1100($sp)
	lw $t1, -1092($sp)
	lw $t2, -1100($sp)
	sw $t2, 4($t1)
	lw $t1, -808($sp)
	lw $t0, 12($t1)
	sw $t0, -1104($sp)
	lw $t1, -960($sp)
	lw $t2, -1104($sp)
	sw $t2, 12($t1)
	lw $t0, -812($sp)
	sw $t0, -1140($sp)
	lw $t0, -960($sp)
	sw $t0, -1144($sp)
	subu $sp, $sp, 1148
	jal _compare
	addi $sp, $sp, 1148
	sw $v0, -1108($sp)
	lw $ra, ($sp)
	lw $t0, -800($sp)
	sw $t0, -1140($sp)
	lw $t0, -1108($sp)
	sw $t0, -1144($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 1148
	jal _printf
	addi $sp, $sp, 1148
	sw $v0, -1112($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -1120($sp)
	lw $t0, -1120($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -1116($sp)
	b L60
L59:
	lw $t0, -1124($sp)
	sw $t0, -1140($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 1144
	jal _printf
	addi $sp, $sp, 1144
	sw $v0, -1128($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -1136($sp)
	lw $t0, -1136($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -1132($sp)
	b L57
L56:
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


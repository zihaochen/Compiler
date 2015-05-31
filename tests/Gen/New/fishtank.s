.data
	_printf_cnt: .space 4
	_st: .space 4
	_forStructArray_1: .space 4
	_struct_member_1: .space 4
	_forStructArray_2: .space 4
	_struct_member_2: .space 4
	_forStructArray_3: .space 4
	_struct_member_3: .space 4
	_forStructArray_4: .space 4
	_struct_member_4: .space 4
	_forStructArray_5: .space 4
	_struct_member_5: .space 4
	_forStructArray_6: .space 4
	_struct_member_6: .space 4
	_forStructArray_7: .space 4
	_struct_member_7: .space 4
	_forStructArray_8: .space 4
	_struct_member_8: .space 4
	_forStructArray_9: .space 4
	_struct_member_9: .space 4
	_forStructArray_10: .space 4
	_struct_member_10: .space 4
	_forStructArray_11: .space 4
	_struct_member_11: .space 4
	_i: .space 4
	_j: .space 4
	_Rank: .space 4
	_map: .space 4
	ASU_1: .space 1016
	ASU_2: .space 92
	ASU_3: .space 1028
	ASU_4: .space 92
	ASU_5: .space 1028
	ASU_6: .space 92
	ASU_7: .space 1028
	ASU_8: .space 92
	ASU_9: .space 1028
	ASU_10: .space 92
	ASU_11: .space 1028
	ASU_12: .space 92
	ASU_13: .space 1028
	ASU_14: .space 92
	ASU_15: .space 1028
	ASU_16: .space 92
	ASU_17: .space 1028
	ASU_18: .space 92
	ASU_19: .space 1028
	ASU_20: .space 92
	ASU_21: .space 1028
	ASU_22: .space 92
	ASU_23: .space 1028
	ASU_24: .space 84
	ASU_25: .space 6404
	str_1: .space 12
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _st
	la $t0, ASU_2
	sw $t0, _forStructArray_1
	la $t0, ASU_3
	sw $t0, _struct_member_1
	la $t0, ASU_4
	sw $t0, _forStructArray_2
	la $t0, ASU_5
	sw $t0, _struct_member_2
	la $t0, ASU_6
	sw $t0, _forStructArray_3
	la $t0, ASU_7
	sw $t0, _struct_member_3
	la $t0, ASU_8
	sw $t0, _forStructArray_4
	la $t0, ASU_9
	sw $t0, _struct_member_4
	la $t0, ASU_10
	sw $t0, _forStructArray_5
	la $t0, ASU_11
	sw $t0, _struct_member_5
	la $t0, ASU_12
	sw $t0, _forStructArray_6
	la $t0, ASU_13
	sw $t0, _struct_member_6
	la $t0, ASU_14
	sw $t0, _forStructArray_7
	la $t0, ASU_15
	sw $t0, _struct_member_7
	la $t0, ASU_16
	sw $t0, _forStructArray_8
	la $t0, ASU_17
	sw $t0, _struct_member_8
	la $t0, ASU_18
	sw $t0, _forStructArray_9
	la $t0, ASU_19
	sw $t0, _struct_member_9
	la $t0, ASU_20
	sw $t0, _forStructArray_10
	la $t0, ASU_21
	sw $t0, _struct_member_10
	la $t0, ASU_22
	sw $t0, _forStructArray_11
	la $t0, ASU_23
	sw $t0, _struct_member_11
	la $t0, ASU_24
	sw $t0, _Rank
	la $t0, ASU_25
	sw $t0, _map
	li $t0, 0
	sw $t0, _printf_cnt
	lw $t1, _forStructArray_1
	lw $t2, _struct_member_1
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_1
	sw $t2, 0($t1)
	lw $t1, _forStructArray_2
	lw $t2, _struct_member_2
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_2
	sw $t2, 92($t1)
	lw $t1, _forStructArray_3
	lw $t2, _struct_member_3
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_3
	sw $t2, 184($t1)
	lw $t1, _forStructArray_4
	lw $t2, _struct_member_4
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_4
	sw $t2, 276($t1)
	lw $t1, _forStructArray_5
	lw $t2, _struct_member_5
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_5
	sw $t2, 368($t1)
	lw $t1, _forStructArray_6
	lw $t2, _struct_member_6
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_6
	sw $t2, 460($t1)
	lw $t1, _forStructArray_7
	lw $t2, _struct_member_7
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_7
	sw $t2, 552($t1)
	lw $t1, _forStructArray_8
	lw $t2, _struct_member_8
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_8
	sw $t2, 644($t1)
	lw $t1, _forStructArray_9
	lw $t2, _struct_member_9
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_9
	sw $t2, 736($t1)
	lw $t1, _forStructArray_10
	lw $t2, _struct_member_10
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_10
	sw $t2, 828($t1)
	lw $t1, _forStructArray_11
	lw $t2, _struct_member_11
	sw $t2, 84($t1)
	lw $t1, _st
	lw $t2, _forStructArray_11
	sw $t2, 920($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 8($t1)
	j _main
_Levelup:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t2, -4($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	lw $t1, ($t0)
	sw $t1, -16($sp)
	lw $t1, -16($sp)
	lw $t0, 0($t1)
	sw $t0, -20($sp)
	li $t2, 5
	lw $t1, -20($sp)
	sgt $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L2
	b L3
L2:
	li $t0, 0
	sw $t0, -36($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	lw $t1, -48($sp)
	lw $t0, 28($t1)
	sw $t0, -52($sp)
	li $t2, 1
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t0, 0
	sw $t0, -60($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t1, -72($sp)
	lw $t2, -56($sp)
	sw $t2, 28($t1)
	li $t2, 1
	lw $t1, -32($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	b L1
L3:
	li $t0, 0
	sw $t0, -76($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t1, -88($sp)
	lw $t0, 0($t1)
	sw $t0, -92($sp)
	li $t2, 0
	lw $t1, -92($sp)
	sgt $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	bne $t0, $0, L5
	b L6
L5:
	li $t0, 0
	sw $t0, -108($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, -112($sp)
	lw $t1, -108($sp)
	add $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, -108($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	lw $t1, ($t0)
	sw $t1, -120($sp)
	lw $t1, -120($sp)
	lw $t0, 32($t1)
	sw $t0, -124($sp)
	li $t2, 1
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	li $t0, 0
	sw $t0, -132($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -132($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	lw $t1, -144($sp)
	lw $t2, -128($sp)
	sw $t2, 32($t1)
	li $t2, 1
	lw $t1, -104($sp)
	sub $t0, $t1, $t2
	sw $t0, -100($sp)
	b L4
L6:
	jr $ra
L4:
L1:
	li $t0, 0
	sw $t0, -156($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, -156($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	lw $t1, ($t0)
	sw $t1, -168($sp)
	lw $t1, -168($sp)
	lw $t0, 0($t1)
	sw $t0, -172($sp)
	li $t2, 1
	lw $t1, -172($sp)
	sub $t0, $t1, $t2
	sw $t0, -176($sp)
	li $t0, 0
	sw $t0, -180($sp)
	li $t2, 92
	lw $t1, 4($sp)
	mul $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t2, -184($sp)
	lw $t1, -180($sp)
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	lw $t1, -192($sp)
	lw $t2, -176($sp)
	sw $t2, 0($t1)
	li $t2, 1
	lw $t1, -152($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -1152($sp)
	li $t0, 0
	sw $t0, -4($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -12($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -8($sp)
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -36($sp)
L8:
	li $t2, 10
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	bne $t0, $0, L9
	b L7
L9:
	li $t2, 2
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, -8($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	lw $t1, ($t0)
	sw $t1, -68($sp)
	lw $t1, -68($sp)
	lw $t2, -52($sp)
	sw $t2, 0($t1)
	li $t0, 0
	sw $t0, -76($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -88($sp)
	lw $t1, -88($sp)
	li $t2, 1
	sw $t2, 4($t1)
	li $t0, 0
	sw $t0, -96($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, -96($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t1, -108($sp)
	li $t2, 0
	sw $t2, 8($t1)
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -132($sp)
	lw $t1, -132($sp)
	li $t2, 0
	sw $t2, 24($t1)
	li $t0, 0
	sw $t0, -136($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	lw $t1, ($t0)
	sw $t1, -148($sp)
	lw $t1, -148($sp)
	lw $t2, -116($sp)
	sw $t2, 20($t1)
	li $t0, 0
	sw $t0, -160($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, -164($sp)
	lw $t1, -160($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	lw $t1, ($t0)
	sw $t1, -172($sp)
	lw $t1, -172($sp)
	li $t2, 0
	sw $t2, 32($t1)
	li $t0, 0
	sw $t0, -176($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, -180($sp)
	lw $t1, -176($sp)
	add $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t0, -184($sp)
	lw $t1, ($t0)
	sw $t1, -188($sp)
	lw $t1, -188($sp)
	lw $t2, -156($sp)
	sw $t2, 28($t1)
	li $t0, 0
	sw $t0, -200($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, -204($sp)
	lw $t1, -200($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	lw $t1, ($t0)
	sw $t1, -212($sp)
	lw $t1, -212($sp)
	li $t2, 0
	sw $t2, 72($t1)
	li $t0, 0
	sw $t0, -216($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, -216($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	lw $t1, ($t0)
	sw $t1, -228($sp)
	lw $t1, -228($sp)
	lw $t2, -196($sp)
	sw $t2, 36($t1)
	li $t0, 0
	sw $t0, -240($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, -240($sp)
	add $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	lw $t1, ($t0)
	sw $t1, -252($sp)
	lw $t1, -252($sp)
	li $t2, 0
	sw $t2, 80($t1)
	li $t0, 0
	sw $t0, -256($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, -256($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t0, -264($sp)
	lw $t1, ($t0)
	sw $t1, -268($sp)
	lw $t1, -268($sp)
	lw $t2, -236($sp)
	sw $t2, 76($t1)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t0, -280($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -276($sp)
	li $t2, 1
	lw $t1, -276($sp)
	sub $t0, $t1, $t2
	sw $t0, -272($sp)
	b L8
L7:
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -284($sp)
L11:
	li $t2, 100
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t0, -288($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -292($sp)
L14:
	li $t2, 10
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t0, 0
	sw $t0, -300($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t2, -304($sp)
	lw $t1, -300($sp)
	add $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t2, -300($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	lw $t1, ($t0)
	sw $t1, -312($sp)
	lw $t1, -312($sp)
	lw $t0, 72($t1)
	sw $t0, -316($sp)
	li $t2, 0
	lw $t1, -316($sp)
	seq $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t0, -320($sp)
	bne $t0, $0, L17
	b L16
L17:
	li $t0, 0
	sw $t0, -332($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t2, -336($sp)
	lw $t1, -332($sp)
	add $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t2, -332($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t0, -340($sp)
	lw $t1, ($t0)
	sw $t1, -344($sp)
	lw $t1, -344($sp)
	lw $t0, 8($t1)
	sw $t0, -348($sp)
	li $t2, 1
	lw $t1, -348($sp)
	add $t0, $t1, $t2
	sw $t0, -352($sp)
	li $t0, 0
	sw $t0, -356($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t2, -360($sp)
	lw $t1, -356($sp)
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t2, -356($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -364($sp)
	lw $t1, ($t0)
	sw $t1, -368($sp)
	lw $t1, -368($sp)
	lw $t2, -352($sp)
	sw $t2, 8($t1)
	li $t2, 1
	lw $t1, -328($sp)
	sub $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t0, _i
	sw $t0, -1160($sp)
	subu $sp, $sp, 1164
	jal _Levelup
	addi $sp, $sp, 1164
	sw $v0, -372($sp)
	lw $ra, ($sp)
L16:
	li $t0, 0
	sw $t0, -384($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t2, -388($sp)
	lw $t1, -384($sp)
	add $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t2, -384($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t0, -392($sp)
	lw $t1, ($t0)
	sw $t1, -396($sp)
	lw $t1, -396($sp)
	li $t2, 0
	sw $t2, 80($t1)
	li $t0, 0
	sw $t0, -400($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t2, -404($sp)
	lw $t1, -400($sp)
	add $t0, $t1, $t2
	sw $t0, -400($sp)
	lw $t2, -400($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t0, -408($sp)
	lw $t1, ($t0)
	sw $t1, -412($sp)
	lw $t1, -412($sp)
	lw $t2, -380($sp)
	sw $t2, 76($t1)
	li $t0, 0
	sw $t0, -420($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t2, -424($sp)
	lw $t1, -420($sp)
	add $t0, $t1, $t2
	sw $t0, -420($sp)
	lw $t2, -420($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t0, -428($sp)
	lw $t1, ($t0)
	sw $t1, -432($sp)
	lw $t1, -432($sp)
	lw $t0, 8($t1)
	sw $t0, -436($sp)
	li $t0, 0
	sw $t0, -440($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t2, -444($sp)
	lw $t1, -440($sp)
	add $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t2, -440($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t0, -448($sp)
	lw $t1, ($t0)
	sw $t1, -452($sp)
	lw $t1, -452($sp)
	lw $t0, 40($t1)
	sw $t0, -456($sp)
	li $t2, 5
	lw $t1, -456($sp)
	mul $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t2, -460($sp)
	lw $t1, -436($sp)
	add $t0, $t1, $t2
	sw $t0, -464($sp)
	li $t0, 0
	sw $t0, -468($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t2, -472($sp)
	lw $t1, -468($sp)
	add $t0, $t1, $t2
	sw $t0, -468($sp)
	lw $t2, -468($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -476($sp)
	lw $t0, -476($sp)
	lw $t1, ($t0)
	sw $t1, -480($sp)
	lw $t1, -480($sp)
	lw $t0, 44($t1)
	sw $t0, -484($sp)
	li $t0, 0
	sw $t0, -488($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -492($sp)
	lw $t2, -492($sp)
	lw $t1, -488($sp)
	add $t0, $t1, $t2
	sw $t0, -488($sp)
	lw $t2, -488($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -496($sp)
	lw $t0, -496($sp)
	lw $t1, ($t0)
	sw $t1, -500($sp)
	lw $t1, -500($sp)
	lw $t0, 44($t1)
	sw $t0, -504($sp)
	lw $t2, -504($sp)
	lw $t1, -484($sp)
	mul $t0, $t1, $t2
	sw $t0, -508($sp)
	li $t2, 5
	lw $t1, -508($sp)
	div $t0, $t1, $t2
	sw $t0, -512($sp)
	lw $t2, -512($sp)
	lw $t1, -464($sp)
	sub $t0, $t1, $t2
	sw $t0, -516($sp)
	li $t0, 0
	sw $t0, -520($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -524($sp)
	lw $t2, -524($sp)
	lw $t1, -520($sp)
	add $t0, $t1, $t2
	sw $t0, -520($sp)
	lw $t2, -520($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t0, -528($sp)
	lw $t1, ($t0)
	sw $t1, -532($sp)
	lw $t1, -532($sp)
	lw $t2, -516($sp)
	sw $t2, 64($t1)
	li $t0, 0
	sw $t0, -540($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t2, -544($sp)
	lw $t1, -540($sp)
	add $t0, $t1, $t2
	sw $t0, -540($sp)
	lw $t2, -540($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t0, -548($sp)
	lw $t1, _i
	sw $t1, ($t0)
	lw $t0, -548($sp)
	lw $t1, ($t0)
	sw $t1, -536($sp)
	lw $t0, -548($sp)
	lw $t1, ($t0)
	sw $t1, -536($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t0, -560($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -556($sp)
	b L14
L13:
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -564($sp)
L19:
	li $t2, 10
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -568($sp)
	lw $t0, -568($sp)
	bne $t0, $0, L20
	b L18
L20:
	lw $t0, _i
	sw $t0, _j
	lw $t0, _j
	sw $t0, -572($sp)
L22:
	li $t2, 10
	lw $t1, _j
	sle $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t0, -576($sp)
	bne $t0, $0, L23
	b L21
L23:
	li $t0, 0
	sw $t0, -580($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -584($sp)
	lw $t2, -584($sp)
	lw $t1, -580($sp)
	add $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t2, -580($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -588($sp)
	lw $t0, -588($sp)
	lw $t1, ($t0)
	sw $t1, -592($sp)
	li $t0, 0
	sw $t0, -596($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -600($sp)
	lw $t2, -600($sp)
	lw $t1, -596($sp)
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t2, -596($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -604($sp)
	lw $t0, -604($sp)
	lw $t1, ($t0)
	sw $t1, -608($sp)
	lw $t2, -608($sp)
	lw $t1, -592($sp)
	sgt $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t0, -612($sp)
	bne $t0, $0, L25
	b L24
L25:
	li $t0, 0
	sw $t0, -620($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t2, -624($sp)
	lw $t1, -620($sp)
	add $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t2, -620($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t0, -628($sp)
	lw $t1, ($t0)
	sw $t1, -632($sp)
	lw $t0, -632($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -616($sp)
	li $t0, 0
	sw $t0, -640($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t2, -644($sp)
	lw $t1, -640($sp)
	add $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t2, -640($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t0, -648($sp)
	lw $t1, ($t0)
	sw $t1, -652($sp)
	li $t0, 0
	sw $t0, -656($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t2, -660($sp)
	lw $t1, -656($sp)
	add $t0, $t1, $t2
	sw $t0, -656($sp)
	lw $t2, -656($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t0, -664($sp)
	lw $t1, -652($sp)
	sw $t1, ($t0)
	lw $t0, -664($sp)
	lw $t1, ($t0)
	sw $t1, -636($sp)
	lw $t0, -664($sp)
	lw $t1, ($t0)
	sw $t1, -636($sp)
	li $t0, 0
	sw $t0, -676($sp)
	li $t2, 4
	lw $t1, _j
	mul $t0, $t1, $t2
	sw $t0, -680($sp)
	lw $t2, -680($sp)
	lw $t1, -676($sp)
	add $t0, $t1, $t2
	sw $t0, -676($sp)
	lw $t2, -676($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -684($sp)
	lw $t0, -684($sp)
	lw $t1, -20($sp)
	sw $t1, ($t0)
	lw $t0, -684($sp)
	lw $t1, ($t0)
	sw $t1, -672($sp)
	lw $t0, -684($sp)
	lw $t1, ($t0)
	sw $t1, -672($sp)
L24:
	li $t2, 1
	lw $t1, _j
	add $t0, $t1, $t2
	sw $t0, -696($sp)
	lw $t0, -696($sp)
	sw $t0, _j
	lw $t0, _j
	sw $t0, -692($sp)
	b L22
L21:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -704($sp)
	lw $t0, -704($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -700($sp)
	b L19
L18:
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -708($sp)
L27:
	li $t2, 10
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t0, -712($sp)
	bne $t0, $0, L28
	b L26
L28:
	li $t0, 0
	sw $t0, -720($sp)
	li $t2, 4
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -724($sp)
	lw $t2, -724($sp)
	lw $t1, -720($sp)
	add $t0, $t1, $t2
	sw $t0, -720($sp)
	lw $t2, -720($sp)
	lw $t1, _Rank
	add $t0, $t1, $t2
	sw $t0, -728($sp)
	lw $t0, -728($sp)
	lw $t1, ($t0)
	sw $t1, -732($sp)
	lw $t0, -732($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -716($sp)
	li $t0, 0
	sw $t0, -736($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -740($sp)
	lw $t2, -740($sp)
	lw $t1, -736($sp)
	add $t0, $t1, $t2
	sw $t0, -736($sp)
	lw $t2, -736($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -744($sp)
	lw $t0, -744($sp)
	lw $t1, ($t0)
	sw $t1, -748($sp)
	lw $t1, -748($sp)
	lw $t0, 72($t1)
	sw $t0, -752($sp)
	li $t2, 1
	lw $t1, -752($sp)
	seq $t0, $t1, $t2
	sw $t0, -756($sp)
	lw $t0, -756($sp)
	bne $t0, $0, L30
	b L29
L30:
	li $t0, 0
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -760($sp)
	li $t0, 0
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -764($sp)
	li $t0, 0
	sw $t0, -772($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -776($sp)
	lw $t2, -776($sp)
	lw $t1, -772($sp)
	add $t0, $t1, $t2
	sw $t0, -772($sp)
	lw $t2, -772($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -780($sp)
	lw $t0, -780($sp)
	lw $t1, ($t0)
	sw $t1, -784($sp)
	lw $t1, -784($sp)
	lw $t0, 24($t1)
	sw $t0, -788($sp)
	li $t2, 4
	lw $t1, -788($sp)
	div $t0, $t1, $t2
	sw $t0, -792($sp)
	li $t0, 0
	sw $t0, -796($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -800($sp)
	lw $t2, -800($sp)
	lw $t1, -796($sp)
	add $t0, $t1, $t2
	sw $t0, -796($sp)
	lw $t2, -796($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -804($sp)
	lw $t0, -804($sp)
	lw $t1, ($t0)
	sw $t1, -808($sp)
	lw $t1, -808($sp)
	lw $t2, -792($sp)
	sw $t2, 20($t1)
	li $t0, 0
	sw $t0, -816($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t2, -820($sp)
	lw $t1, -816($sp)
	add $t0, $t1, $t2
	sw $t0, -816($sp)
	lw $t2, -816($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -824($sp)
	lw $t0, -824($sp)
	lw $t1, ($t0)
	sw $t1, -828($sp)
	lw $t1, -828($sp)
	lw $t2, -28($sp)
	sw $t2, 12($t1)
	li $t0, 0
	sw $t0, -836($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -840($sp)
	lw $t2, -840($sp)
	lw $t1, -836($sp)
	add $t0, $t1, $t2
	sw $t0, -836($sp)
	lw $t2, -836($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -844($sp)
	lw $t0, -844($sp)
	lw $t1, ($t0)
	sw $t1, -848($sp)
	lw $t1, -848($sp)
	lw $t2, -32($sp)
	sw $t2, 16($t1)
	li $t0, 0
	sw $t0, -860($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -864($sp)
	lw $t2, -864($sp)
	lw $t1, -860($sp)
	add $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t2, -860($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -868($sp)
	lw $t0, -868($sp)
	lw $t1, ($t0)
	sw $t1, -872($sp)
	lw $t1, -872($sp)
	lw $t0, 72($t1)
	sw $t0, -876($sp)
	li $t2, 1
	lw $t1, -876($sp)
	sub $t0, $t1, $t2
	sw $t0, -880($sp)
	li $t0, 0
	sw $t0, -884($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -888($sp)
	lw $t2, -888($sp)
	lw $t1, -884($sp)
	add $t0, $t1, $t2
	sw $t0, -884($sp)
	lw $t2, -884($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -892($sp)
	lw $t0, -892($sp)
	lw $t1, ($t0)
	sw $t1, -896($sp)
	lw $t1, -896($sp)
	lw $t2, -880($sp)
	sw $t2, 72($t1)
	li $t2, 1
	lw $t1, -856($sp)
	add $t0, $t1, $t2
	sw $t0, -852($sp)
	li $t0, 0
	sw $t0, -904($sp)
	li $t2, 160
	lw $t1, -28($sp)
	mul $t0, $t1, $t2
	sw $t0, -908($sp)
	lw $t2, -908($sp)
	lw $t1, -904($sp)
	add $t0, $t1, $t2
	sw $t0, -904($sp)
	li $t2, 4
	lw $t1, -32($sp)
	mul $t0, $t1, $t2
	sw $t0, -912($sp)
	lw $t2, -912($sp)
	lw $t1, -904($sp)
	add $t0, $t1, $t2
	sw $t0, -904($sp)
	lw $t2, -904($sp)
	lw $t1, _map
	add $t0, $t1, $t2
	sw $t0, -916($sp)
	lw $t0, -916($sp)
	lw $t1, -24($sp)
	sw $t1, ($t0)
	lw $t0, -916($sp)
	lw $t1, ($t0)
	sw $t1, -900($sp)
	lw $t0, -916($sp)
	lw $t1, ($t0)
	sw $t1, -900($sp)
L29:
	li $t0, 0
	sw $t0, -924($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -928($sp)
	lw $t2, -928($sp)
	lw $t1, -924($sp)
	add $t0, $t1, $t2
	sw $t0, -924($sp)
	lw $t2, -924($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -932($sp)
	lw $t0, -932($sp)
	lw $t1, ($t0)
	sw $t1, -936($sp)
	lw $t1, -936($sp)
	lw $t0, 72($t1)
	sw $t0, -940($sp)
	li $t2, 1
	lw $t1, -940($sp)
	sgt $t0, $t1, $t2
	sw $t0, -944($sp)
	lw $t0, -944($sp)
	bne $t0, $0, L32
	b L31
L32:
	li $t0, 0
	sw $t0, -956($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -960($sp)
	lw $t2, -960($sp)
	lw $t1, -956($sp)
	add $t0, $t1, $t2
	sw $t0, -956($sp)
	lw $t2, -956($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -964($sp)
	lw $t0, -964($sp)
	lw $t1, ($t0)
	sw $t1, -968($sp)
	lw $t1, -968($sp)
	lw $t0, 72($t1)
	sw $t0, -972($sp)
	li $t2, 1
	lw $t1, -972($sp)
	sub $t0, $t1, $t2
	sw $t0, -976($sp)
	li $t0, 0
	sw $t0, -980($sp)
	li $t2, 92
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -984($sp)
	lw $t2, -984($sp)
	lw $t1, -980($sp)
	add $t0, $t1, $t2
	sw $t0, -980($sp)
	lw $t2, -980($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -988($sp)
	lw $t0, -988($sp)
	lw $t1, ($t0)
	sw $t1, -992($sp)
	lw $t1, -992($sp)
	lw $t2, -976($sp)
	sw $t2, 72($t1)
	li $t2, 1
	lw $t1, -952($sp)
	add $t0, $t1, $t2
	sw $t0, -948($sp)
L31:
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -1000($sp)
	lw $t0, -1000($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -996($sp)
	b L27
L26:
	li $t2, 1
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -1012($sp)
	lw $t0, -1012($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -1008($sp)
	li $t2, 1
	lw $t1, -1008($sp)
	sub $t0, $t1, $t2
	sw $t0, -1004($sp)
	b L11
L10:
	li $t0, 1
	sw $t0, _i
	lw $t0, _i
	sw $t0, -1016($sp)
L34:
	li $t2, 10
	lw $t1, _i
	sle $t0, $t1, $t2
	sw $t0, -1020($sp)
	lw $t0, -1020($sp)
	bne $t0, $0, L35
	b L33
L35:
	li $t0, 0
	sw $t0, -1028($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -1032($sp)
	lw $t2, -1032($sp)
	lw $t1, -1028($sp)
	add $t0, $t1, $t2
	sw $t0, -1028($sp)
	lw $t2, -1028($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -1036($sp)
	lw $t0, -1036($sp)
	lw $t1, ($t0)
	sw $t1, -1040($sp)
	lw $t1, -1040($sp)
	lw $t0, 0($t1)
	sw $t0, -1044($sp)
	li $t2, 9
	lw $t1, -1044($sp)
	mul $t0, $t1, $t2
	sw $t0, -1048($sp)
	li $t0, 0
	sw $t0, -1052($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -1056($sp)
	lw $t2, -1056($sp)
	lw $t1, -1052($sp)
	add $t0, $t1, $t2
	sw $t0, -1052($sp)
	lw $t2, -1052($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -1060($sp)
	lw $t0, -1060($sp)
	lw $t1, ($t0)
	sw $t1, -1064($sp)
	lw $t1, -1064($sp)
	lw $t0, 4($t1)
	sw $t0, -1068($sp)
	li $t2, 8
	lw $t1, -1068($sp)
	mul $t0, $t1, $t2
	sw $t0, -1072($sp)
	lw $t2, -1072($sp)
	lw $t1, -1048($sp)
	add $t0, $t1, $t2
	sw $t0, -1076($sp)
	li $t0, 0
	sw $t0, -1080($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -1084($sp)
	lw $t2, -1084($sp)
	lw $t1, -1080($sp)
	add $t0, $t1, $t2
	sw $t0, -1080($sp)
	lw $t2, -1080($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -1088($sp)
	lw $t0, -1088($sp)
	lw $t1, ($t0)
	sw $t1, -1092($sp)
	lw $t1, -1092($sp)
	lw $t0, 8($t1)
	sw $t0, -1096($sp)
	li $t2, 7
	lw $t1, -1096($sp)
	mul $t0, $t1, $t2
	sw $t0, -1100($sp)
	lw $t2, -1100($sp)
	lw $t1, -1076($sp)
	add $t0, $t1, $t2
	sw $t0, -1104($sp)
	li $t0, 0
	sw $t0, -1108($sp)
	li $t2, 92
	lw $t1, _i
	mul $t0, $t1, $t2
	sw $t0, -1112($sp)
	lw $t2, -1112($sp)
	lw $t1, -1108($sp)
	add $t0, $t1, $t2
	sw $t0, -1108($sp)
	lw $t2, -1108($sp)
	lw $t1, _st
	add $t0, $t1, $t2
	sw $t0, -1116($sp)
	lw $t0, -1116($sp)
	lw $t1, ($t0)
	sw $t1, -1120($sp)
	lw $t1, -1120($sp)
	lw $t0, 28($t1)
	sw $t0, -1124($sp)
	li $t2, 6
	lw $t1, -1124($sp)
	mul $t0, $t1, $t2
	sw $t0, -1128($sp)
	lw $t2, -1128($sp)
	lw $t1, -1104($sp)
	add $t0, $t1, $t2
	sw $t0, -1132($sp)
	lw $t2, -1132($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -1136($sp)
	lw $t0, -1136($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -1024($sp)
	li $t2, 1
	lw $t1, _i
	add $t0, $t1, $t2
	sw $t0, -1148($sp)
	lw $t0, -1148($sp)
	sw $t0, _i
	lw $t0, _i
	sw $t0, -1144($sp)
	li $t2, 1
	lw $t1, -1144($sp)
	sub $t0, $t1, $t2
	sw $t0, -1140($sp)
	b L34
L33:
	lw $t0, -1152($sp)
	sw $t0, -1160($sp)
	lw $t0, -4($sp)
	sw $t0, -1164($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 1168
	jal _printf
	addi $sp, $sp, 1168
	sw $v0, -1156($sp)
	lw $ra, ($sp)
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


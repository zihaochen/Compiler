.data
	_printf_cnt: .space 4
	_a: .space 4
	_b: .space 4
	_ch: .space 4
	_n: .space 4
	_m: .space 4
	_len: .space 4
	_f: .space 4
	_t: .space 4
	ASU_1: .space 804
	ASU_2: .space 804
	ASU_3: .space 2004
	ASU_4: .space 804
	str_1: .space 16
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _a
	la $t0, ASU_2
	sw $t0, _b
	la $t0, ASU_3
	sw $t0, _ch
	la $t0, ASU_4
	sw $t0, _f
	li $t0, 0
	sw $t0, _printf_cnt
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
_min:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L2
	b L1
L2:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
L1:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_max:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	sgt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L4
	b L3
L4:
	lw $v0, 8($sp)
	sw $v0, 8($sp)
	jr $ra
L3:
	lw $v0, 4($sp)
	sw $v0, 4($sp)
	jr $ra
	jr $ra
_get_val:
	sw $ra, ($sp)
	li $t0, 0
	sw $t0, -4($sp)
L6:
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -16($sp)
	lw $ra, ($sp)
	lw $t0, -16($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -12($sp)
	li $t2, 48
	lw $t1, -12($sp)
	sge $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L8
	b L5
L8:
	li $t2, 57
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L7
	b L5
L7:
	li $t2, 10
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -8($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	li $t2, 48
	lw $t1, -36($sp)
	sub $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -28($sp)
	b L6
L5:
	lw $v0, -4($sp)
	sw $v0, -4($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -904($sp)
	subu $sp, $sp, 4
	jal _get_val
	addi $sp, $sp, 4
	sw $v0, -24($sp)
	lw $ra, ($sp)
	lw $t0, -24($sp)
	sw $t0, _t
	lw $t0, _t
	sw $t0, -20($sp)
L10:
	lw $t0, _t
	bne $t0, $0, L11
	b L9
L11:
	li $t0, 1
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -28($sp)
	li $t0, 0
	sw $t0, _n
	lw $t0, _n
	sw $t0, -32($sp)
	li $t0, 0
	sw $t0, _m
	lw $t0, _m
	sw $t0, -36($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -44($sp)
	lw $ra, ($sp)
	lw $t0, -44($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -40($sp)
L13:
	li $t2, 97
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	bne $t0, $0, L14
	b L15
L15:
	li $t2, 122
	lw $t1, -16($sp)
	sgt $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	bne $t0, $0, L14
	b L12
L14:
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -60($sp)
	lw $ra, ($sp)
	lw $t0, -60($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -56($sp)
	b L13
L12:
	li $t2, 1
	lw $t1, _n
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t0, -72($sp)
	sw $t0, _n
	lw $t0, _n
	sw $t0, -68($sp)
	li $t0, 0
	sw $t0, -76($sp)
	li $t2, 4
	lw $t1, -68($sp)
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, -80($sp)
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	lw $t0, -84($sp)
	lw $t1, ($t0)
	sw $t1, -64($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -96($sp)
	lw $ra, ($sp)
	lw $t0, -96($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -92($sp)
L17:
	lw $t2, -16($sp)
	li $t1, 97
	sle $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t0, -100($sp)
	bne $t0, $0, L19
	b L16
L19:
	li $t2, 122
	lw $t1, -16($sp)
	sle $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t2, 1
	lw $t1, _n
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, _n
	lw $t0, _n
	sw $t0, -112($sp)
	li $t0, 0
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, -112($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, -124($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, -120($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t0, -128($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	lw $t0, -128($sp)
	lw $t1, ($t0)
	sw $t1, -108($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -140($sp)
	lw $ra, ($sp)
	lw $t0, -140($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -136($sp)
	b L17
L16:
L21:
	li $t2, 97
	lw $t1, -16($sp)
	slt $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	bne $t0, $0, L22
	b L23
L23:
	li $t2, 122
	lw $t1, -16($sp)
	sgt $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	bne $t0, $0, L22
	b L20
L22:
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -156($sp)
	lw $ra, ($sp)
	lw $t0, -156($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -152($sp)
	b L21
L20:
	li $t2, 1
	lw $t1, _m
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t0, -168($sp)
	sw $t0, _m
	lw $t0, _m
	sw $t0, -164($sp)
	li $t0, 0
	sw $t0, -172($sp)
	li $t2, 4
	lw $t1, -164($sp)
	mul $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, -172($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -160($sp)
	lw $t0, -180($sp)
	lw $t1, ($t0)
	sw $t1, -160($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -192($sp)
	lw $ra, ($sp)
	lw $t0, -192($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -188($sp)
L25:
	lw $t2, -16($sp)
	li $t1, 97
	sle $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	bne $t0, $0, L27
	b L24
L27:
	li $t2, 122
	lw $t1, -16($sp)
	sle $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	bne $t0, $0, L26
	b L24
L26:
	li $t2, 1
	lw $t1, _m
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, _m
	lw $t0, _m
	sw $t0, -208($sp)
	li $t0, 0
	sw $t0, -216($sp)
	li $t2, 4
	lw $t1, -208($sp)
	mul $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -220($sp)
	lw $t1, -216($sp)
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -224($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t0, -224($sp)
	lw $t1, ($t0)
	sw $t1, -204($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -236($sp)
	lw $ra, ($sp)
	lw $t0, -236($sp)
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -232($sp)
	b L25
L24:
	li $t0, 0
	sw $t0, _len
	lw $t0, _len
	sw $t0, -240($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -244($sp)
L29:
	lw $t2, _m
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	bne $t0, $0, L30
	b L28
L30:
	li $t0, 0
	sw $t0, -256($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, -256($sp)
	add $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, _b
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t0, -264($sp)
	lw $t1, ($t0)
	sw $t1, -268($sp)
	li $t2, 1
	lw $t1, _len
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	sw $t0, _len
	lw $t0, _len
	sw $t0, -272($sp)
	li $t0, 0
	sw $t0, -280($sp)
	li $t2, 4
	lw $t1, -272($sp)
	mul $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t2, -284($sp)
	lw $t1, -280($sp)
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t0, -288($sp)
	lw $t1, -268($sp)
	sw $t1, ($t0)
	lw $t0, -288($sp)
	lw $t1, ($t0)
	sw $t1, -252($sp)
	lw $t0, -288($sp)
	lw $t1, ($t0)
	sw $t1, -252($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t0, -304($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -300($sp)
	li $t2, 1
	lw $t1, -300($sp)
	sub $t0, $t1, $t2
	sw $t0, -296($sp)
	b L29
L28:
	li $t2, 1
	lw $t1, _len
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	sw $t0, _len
	lw $t0, _len
	sw $t0, -312($sp)
	li $t0, 0
	sw $t0, -320($sp)
	li $t2, 4
	lw $t1, -312($sp)
	mul $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, -324($sp)
	lw $t1, -320($sp)
	add $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, -320($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t0, -328($sp)
	li $t1, 36
	sw $t1, ($t0)
	lw $t0, -328($sp)
	lw $t1, ($t0)
	sw $t1, -308($sp)
	lw $t0, -328($sp)
	lw $t1, ($t0)
	sw $t1, -308($sp)
	li $t0, 1
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -336($sp)
L32:
	lw $t2, _n
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t0, -340($sp)
	bne $t0, $0, L33
	b L31
L33:
	li $t0, 0
	sw $t0, -348($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t2, -352($sp)
	lw $t1, -348($sp)
	add $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t2, -348($sp)
	lw $t1, _a
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t0, -356($sp)
	lw $t1, ($t0)
	sw $t1, -360($sp)
	li $t2, 1
	lw $t1, _len
	add $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t0, -368($sp)
	sw $t0, _len
	lw $t0, _len
	sw $t0, -364($sp)
	li $t0, 0
	sw $t0, -372($sp)
	li $t2, 4
	lw $t1, -364($sp)
	mul $t0, $t1, $t2
	sw $t0, -376($sp)
	lw $t2, -376($sp)
	lw $t1, -372($sp)
	add $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t2, -372($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t0, -380($sp)
	lw $t1, -360($sp)
	sw $t1, ($t0)
	lw $t0, -380($sp)
	lw $t1, ($t0)
	sw $t1, -344($sp)
	lw $t0, -380($sp)
	lw $t1, ($t0)
	sw $t1, -344($sp)
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -396($sp)
	lw $t0, -396($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -392($sp)
	li $t2, 1
	lw $t1, -392($sp)
	sub $t0, $t1, $t2
	sw $t0, -388($sp)
	b L32
L31:
	lw $t1, _f
	li $t2, 0
	sw $t2, 4($t1)
	lw $t1, _f
	lw $t0, 4($t1)
	sw $t0, -400($sp)
	lw $t0, _f
	lw $t1, ($t0)
	sw $t1, -400($sp)
	li $t0, 1
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -408($sp)
	li $t0, 2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -412($sp)
L35:
	lw $t2, _len
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -416($sp)
	lw $t0, -416($sp)
	bne $t0, $0, L36
	b L34
L36:
	li $t0, 0
	sw $t0, -420($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t2, -424($sp)
	lw $t1, -420($sp)
	add $t0, $t1, $t2
	sw $t0, -420($sp)
	lw $t2, -420($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t0, -428($sp)
	lw $t1, ($t0)
	sw $t1, -432($sp)
	lw $t2, -432($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -436($sp)
	lw $t2, -4($sp)
	lw $t1, -436($sp)
	sge $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t0, -440($sp)
	bne $t0, $0, L38
	b L39
L38:
	lw $t2, -8($sp)
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -448($sp)
	li $t2, 1
	lw $t1, -448($sp)
	add $t0, $t1, $t2
	sw $t0, -452($sp)
	li $t0, 0
	sw $t0, -456($sp)
	li $t2, 4
	lw $t1, -452($sp)
	mul $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t2, -460($sp)
	lw $t1, -456($sp)
	add $t0, $t1, $t2
	sw $t0, -456($sp)
	lw $t2, -456($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -464($sp)
	lw $t0, -464($sp)
	lw $t1, ($t0)
	sw $t1, -468($sp)
	li $t0, 0
	sw $t0, -472($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -476($sp)
	lw $t2, -476($sp)
	lw $t1, -472($sp)
	add $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t2, -472($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t0, -480($sp)
	lw $t1, ($t0)
	sw $t1, -484($sp)
	lw $t2, -484($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -488($sp)
	lw $t2, -4($sp)
	lw $t1, -488($sp)
	sub $t0, $t1, $t2
	sw $t0, -492($sp)
	lw $t0, -468($sp)
	sw $t0, -924($sp)
	lw $t0, -492($sp)
	sw $t0, -928($sp)
	subu $sp, $sp, 932
	jal _min
	addi $sp, $sp, 932
	sw $v0, -496($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -500($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -504($sp)
	lw $t2, -504($sp)
	lw $t1, -500($sp)
	add $t0, $t1, $t2
	sw $t0, -500($sp)
	lw $t2, -500($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -508($sp)
	lw $t0, -508($sp)
	lw $t1, -496($sp)
	sw $t1, ($t0)
	lw $t0, -508($sp)
	lw $t1, ($t0)
	sw $t1, -444($sp)
	lw $t0, -508($sp)
	lw $t1, ($t0)
	sw $t1, -444($sp)
	b L37
L39:
	li $t0, 0
	sw $t0, -520($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -524($sp)
	lw $t2, -524($sp)
	lw $t1, -520($sp)
	add $t0, $t1, $t2
	sw $t0, -520($sp)
	lw $t2, -520($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t0, -528($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -528($sp)
	lw $t1, ($t0)
	sw $t1, -516($sp)
	lw $t0, -528($sp)
	lw $t1, ($t0)
	sw $t1, -516($sp)
L37:
	li $t0, 0
	sw $t0, -540($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t2, -544($sp)
	lw $t1, -540($sp)
	add $t0, $t1, $t2
	sw $t0, -540($sp)
	lw $t2, -540($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t0, -548($sp)
	lw $t1, ($t0)
	sw $t1, -552($sp)
	lw $t0, -552($sp)
	sw $t0, -924($sp)
	li $t0, 0
	sw $t0, -928($sp)
	subu $sp, $sp, 932
	jal _max
	addi $sp, $sp, 932
	sw $v0, -556($sp)
	lw $ra, ($sp)
	li $t0, 0
	sw $t0, -560($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -564($sp)
	lw $t2, -564($sp)
	lw $t1, -560($sp)
	add $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t2, -560($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -568($sp)
	lw $t0, -568($sp)
	lw $t1, -556($sp)
	sw $t1, ($t0)
	lw $t0, -568($sp)
	lw $t1, ($t0)
	sw $t1, -536($sp)
	lw $t0, -568($sp)
	lw $t1, ($t0)
	sw $t1, -536($sp)
L41:
	li $t0, 0
	sw $t0, -576($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t2, -580($sp)
	lw $t1, -576($sp)
	add $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t2, -576($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -584($sp)
	lw $t0, -584($sp)
	lw $t1, ($t0)
	sw $t1, -588($sp)
	li $t2, 0
	lw $t1, -588($sp)
	sge $t0, $t1, $t2
	sw $t0, -592($sp)
	lw $t0, -592($sp)
	bne $t0, $0, L44
	b L40
L44:
	li $t0, 0
	sw $t0, -596($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -600($sp)
	lw $t2, -600($sp)
	lw $t1, -596($sp)
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t2, -596($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -604($sp)
	lw $t0, -604($sp)
	lw $t1, ($t0)
	sw $t1, -608($sp)
	lw $t2, -608($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t2, _len
	lw $t1, -612($sp)
	sle $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t0, -616($sp)
	bne $t0, $0, L43
	b L40
L43:
	li $t0, 0
	sw $t0, -620($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t2, -624($sp)
	lw $t1, -620($sp)
	add $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t2, -620($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t0, -628($sp)
	lw $t1, ($t0)
	sw $t1, -632($sp)
	lw $t2, -632($sp)
	li $t1, 1
	add $t0, $t1, $t2
	sw $t0, -636($sp)
	li $t0, 0
	sw $t0, -640($sp)
	li $t2, 4
	lw $t1, -636($sp)
	mul $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t2, -644($sp)
	lw $t1, -640($sp)
	add $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t2, -640($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t0, -648($sp)
	lw $t1, ($t0)
	sw $t1, -652($sp)
	li $t0, 0
	sw $t0, -656($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t2, -660($sp)
	lw $t1, -656($sp)
	add $t0, $t1, $t2
	sw $t0, -656($sp)
	lw $t2, -656($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t0, -664($sp)
	lw $t1, ($t0)
	sw $t1, -668($sp)
	lw $t2, -668($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -672($sp)
	li $t0, 0
	sw $t0, -676($sp)
	li $t2, 4
	lw $t1, -672($sp)
	mul $t0, $t1, $t2
	sw $t0, -680($sp)
	lw $t2, -680($sp)
	lw $t1, -676($sp)
	add $t0, $t1, $t2
	sw $t0, -676($sp)
	lw $t2, -676($sp)
	lw $t1, _ch
	add $t0, $t1, $t2
	sw $t0, -684($sp)
	lw $t0, -684($sp)
	lw $t1, ($t0)
	sw $t1, -688($sp)
	lw $t2, -688($sp)
	lw $t1, -652($sp)
	seq $t0, $t1, $t2
	sw $t0, -692($sp)
	lw $t0, -692($sp)
	bne $t0, $0, L42
	b L40
L42:
	li $t0, 0
	sw $t0, -704($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -708($sp)
	lw $t2, -708($sp)
	lw $t1, -704($sp)
	add $t0, $t1, $t2
	sw $t0, -704($sp)
	lw $t2, -704($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t0, -712($sp)
	lw $t1, ($t0)
	sw $t1, -716($sp)
	li $t2, 1
	lw $t1, -716($sp)
	add $t0, $t1, $t2
	sw $t0, -720($sp)
	li $t0, 0
	sw $t0, -724($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -728($sp)
	lw $t2, -728($sp)
	lw $t1, -724($sp)
	add $t0, $t1, $t2
	sw $t0, -724($sp)
	lw $t2, -724($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t0, -732($sp)
	lw $t1, -720($sp)
	sw $t1, ($t0)
	lw $t0, -732($sp)
	lw $t1, ($t0)
	sw $t1, -700($sp)
	lw $t0, -732($sp)
	lw $t1, ($t0)
	sw $t1, -700($sp)
	li $t2, 1
	lw $t1, -700($sp)
	sub $t0, $t1, $t2
	sw $t0, -696($sp)
	b L41
L40:
	li $t0, 0
	sw $t0, -748($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -752($sp)
	lw $t2, -752($sp)
	lw $t1, -748($sp)
	add $t0, $t1, $t2
	sw $t0, -748($sp)
	lw $t2, -748($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -756($sp)
	lw $t0, -756($sp)
	lw $t1, ($t0)
	sw $t1, -760($sp)
	li $t2, 1
	lw $t1, -760($sp)
	sub $t0, $t1, $t2
	sw $t0, -764($sp)
	li $t0, 0
	sw $t0, -768($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -772($sp)
	lw $t2, -772($sp)
	lw $t1, -768($sp)
	add $t0, $t1, $t2
	sw $t0, -768($sp)
	lw $t2, -768($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -776($sp)
	lw $t0, -776($sp)
	lw $t1, -764($sp)
	sw $t1, ($t0)
	lw $t0, -776($sp)
	lw $t1, ($t0)
	sw $t1, -744($sp)
	lw $t0, -776($sp)
	lw $t1, ($t0)
	sw $t1, -744($sp)
	li $t2, 1
	lw $t1, -744($sp)
	add $t0, $t1, $t2
	sw $t0, -740($sp)
	li $t0, 0
	sw $t0, -784($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -788($sp)
	lw $t2, -788($sp)
	lw $t1, -784($sp)
	add $t0, $t1, $t2
	sw $t0, -784($sp)
	lw $t2, -784($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -792($sp)
	lw $t0, -792($sp)
	lw $t1, ($t0)
	sw $t1, -796($sp)
	lw $t2, -796($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -800($sp)
	li $t0, 0
	sw $t0, -804($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -808($sp)
	lw $t2, -808($sp)
	lw $t1, -804($sp)
	add $t0, $t1, $t2
	sw $t0, -804($sp)
	lw $t2, -804($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -812($sp)
	lw $t0, -812($sp)
	lw $t1, ($t0)
	sw $t1, -816($sp)
	lw $t2, -816($sp)
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t2, -820($sp)
	lw $t1, -800($sp)
	sgt $t0, $t1, $t2
	sw $t0, -824($sp)
	lw $t0, -824($sp)
	bne $t0, $0, L46
	b L45
L46:
	lw $t0, -4($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -828($sp)
L45:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -840($sp)
	lw $t0, -840($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -836($sp)
	li $t2, 1
	lw $t1, -836($sp)
	sub $t0, $t1, $t2
	sw $t0, -832($sp)
	b L35
L34:
	li $t2, 2
	lw $t1, _m
	add $t0, $t1, $t2
	sw $t0, -848($sp)
	lw $t0, -848($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -844($sp)
L48:
	lw $t2, _len
	lw $t1, -4($sp)
	sle $t0, $t1, $t2
	sw $t0, -852($sp)
	lw $t0, -852($sp)
	bne $t0, $0, L49
	b L47
L49:
	li $t0, 0
	sw $t0, -856($sp)
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t2, -860($sp)
	lw $t1, -856($sp)
	add $t0, $t1, $t2
	sw $t0, -856($sp)
	lw $t2, -856($sp)
	lw $t1, _f
	add $t0, $t1, $t2
	sw $t0, -864($sp)
	lw $t0, -864($sp)
	lw $t1, ($t0)
	sw $t1, -868($sp)
	lw $t2, -868($sp)
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -872($sp)
	lw $t2, _len
	lw $t1, -872($sp)
	seq $t0, $t1, $t2
	sw $t0, -876($sp)
	lw $t0, -876($sp)
	bne $t0, $0, L51
	b L50
L51:
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -888($sp)
	lw $t0, -888($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -884($sp)
	li $t2, 1
	lw $t1, -884($sp)
	sub $t0, $t1, $t2
	sw $t0, -880($sp)
L50:
	li $t2, 1
	lw $t1, -4($sp)
	add $t0, $t1, $t2
	sw $t0, -900($sp)
	lw $t0, -900($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -896($sp)
	li $t2, 1
	lw $t1, -896($sp)
	sub $t0, $t1, $t2
	sw $t0, -892($sp)
	b L48
L47:
	lw $t0, -904($sp)
	sw $t0, -924($sp)
	lw $t0, -12($sp)
	sw $t0, -928($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 932
	jal _printf
	addi $sp, $sp, 932
	sw $v0, -908($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, _t
	sub $t0, $t1, $t2
	sw $t0, -920($sp)
	lw $t0, -920($sp)
	sw $t0, _t
	lw $t0, _t
	sw $t0, -916($sp)
	li $t2, 1
	lw $t1, -916($sp)
	add $t0, $t1, $t2
	sw $t0, -912($sp)
	b L10
L9:
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


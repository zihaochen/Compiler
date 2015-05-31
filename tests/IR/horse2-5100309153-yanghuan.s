.data
	_printf_cnt: .space 4
	str_1: .space 16
	str_2: .space 56
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
	li $t0, 10
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 110
	la $t1, str_2
	sw $t0, 0($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_2
	sw $t0, 8($t1)
	li $t0, 115
	la $t1, str_2
	sw $t0, 12($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 16($t1)
	li $t0, 108
	la $t1, str_2
	sw $t0, 20($t1)
	li $t0, 117
	la $t1, str_2
	sw $t0, 24($t1)
	li $t0, 116
	la $t1, str_2
	sw $t0, 28($t1)
	li $t0, 105
	la $t1, str_2
	sw $t0, 32($t1)
	li $t0, 111
	la $t1, str_2
	sw $t0, 36($t1)
	li $t0, 110
	la $t1, str_2
	sw $t0, 40($t1)
	li $t0, 33
	la $t1, str_2
	sw $t0, 44($t1)
	li $t0, 10
	la $t1, str_2
	sw $t0, 48($t1)
	j _main
_check:
	sw $ra, ($sp)
	lw $t2, 4($sp)
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L3
	b L2
L3:
	li $t2, 0
	lw $t1, 8($sp)
	sge $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L1
	b L2
L1:
	li $v0, 1
	sw $v0, 0($sp)
	jr $ra
L2:
	li $v0, 0
	sw $v0, 0($sp)
	jr $ra
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -1672($sp)
	la $t0, str_2
	sw $t0, -1704($sp)
	li $t0, 20
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -68($sp)
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -84($sp)
	lw $t0, -84($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -80($sp)
	lw $t0, -80($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -76($sp)
	lw $t0, -76($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -72($sp)
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -92($sp)
	lw $t0, -92($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -88($sp)
	li $t0, 0
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -104($sp)
	lw $t0, -104($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -100($sp)
	li $t0, 0
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -108($sp)
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -120($sp)
	li $t2, 4
	lw $t1, -120($sp)
	mul $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	sw $t0, -1712($sp)
	subu $sp, $sp, 1716
	jal _malloc
	addi $sp, $sp, 1716
	sw $v0, -128($sp)
	lw $ra, ($sp)
	lw $t0, -128($sp)
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -116($sp)
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -132($sp)
L5:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -60($sp)
	slt $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t0, -140($sp)
	bne $t0, $0, L6
	b L4
L6:
	lw $t2, -60($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t0, -148($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -148($sp)
	lw $t1, ($t0)
	sw $t1, -144($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t0, -160($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -156($sp)
	b L5
L4:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -168($sp)
	li $t2, 4
	lw $t1, -168($sp)
	mul $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t0, -172($sp)
	sw $t0, -1712($sp)
	subu $sp, $sp, 1716
	jal _malloc
	addi $sp, $sp, 1716
	sw $v0, -176($sp)
	lw $ra, ($sp)
	lw $t0, -176($sp)
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -164($sp)
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -180($sp)
L8:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t2, -184($sp)
	lw $t1, -60($sp)
	slt $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	bne $t0, $0, L9
	b L7
L9:
	lw $t2, -60($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t0, -196($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -196($sp)
	lw $t1, ($t0)
	sw $t1, -192($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t0, -208($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -204($sp)
	b L8
L7:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t0, -216($sp)
	sw $t0, -1712($sp)
	subu $sp, $sp, 1716
	jal _malloc
	addi $sp, $sp, 1716
	sw $v0, -220($sp)
	lw $ra, ($sp)
	lw $t0, -220($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -212($sp)
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -224($sp)
L11:
	lw $t2, -4($sp)
	lw $t1, -60($sp)
	slt $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	sw $t0, -1712($sp)
	subu $sp, $sp, 1716
	jal _malloc
	addi $sp, $sp, 1716
	sw $v0, -240($sp)
	lw $ra, ($sp)
	lw $t2, -60($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, -248($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t0, -244($sp)
	lw $t1, -240($sp)
	sw $t1, ($t0)
	lw $t0, -244($sp)
	lw $t1, ($t0)
	sw $t1, -232($sp)
	li $t0, 0
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, -252($sp)
L14:
	lw $t2, -4($sp)
	lw $t1, -64($sp)
	slt $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t2, 4
	lw $t1, -60($sp)
	mul $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, -272($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	lw $t1, ($t0)
	sw $t1, -264($sp)
	lw $t2, -64($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, -264($sp)
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -276($sp)
	lw $t1, ($t0)
	sw $t1, -260($sp)
	li $t2, 1
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t0, -288($sp)
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, -284($sp)
	b L14
L13:
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -292($sp)
	b L11
L10:
	li $t2, 0
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, -308($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t0, -304($sp)
	lw $t1, -12($sp)
	sw $t1, ($t0)
	lw $t0, -304($sp)
	lw $t1, ($t0)
	sw $t1, -300($sp)
	li $t2, 0
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, -320($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -316($sp)
	lw $t1, ($t0)
	sw $t1, -312($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t2, -332($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t0, -328($sp)
	lw $t1, ($t0)
	sw $t1, -324($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t2, -344($sp)
	lw $t1, -324($sp)
	add $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t0, -340($sp)
	lw $t1, ($t0)
	sw $t1, -336($sp)
	li $t2, 0
	lw $t1, -336($sp)
	seq $t0, $t1, $t2
	sw $t0, -348($sp)
L17:
	lw $t2, -28($sp)
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t0, -352($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t2, -368($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t0, -364($sp)
	lw $t1, ($t0)
	sw $t1, -360($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t2, -380($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -376($sp)
	lw $t0, -376($sp)
	lw $t1, ($t0)
	sw $t1, -372($sp)
	li $t2, 4
	lw $t1, -372($sp)
	mul $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t2, -392($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t0, -388($sp)
	lw $t1, ($t0)
	sw $t1, -384($sp)
	li $t2, 4
	lw $t1, -360($sp)
	mul $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t2, -404($sp)
	lw $t1, -384($sp)
	add $t0, $t1, $t2
	sw $t0, -400($sp)
	lw $t0, -400($sp)
	lw $t1, ($t0)
	sw $t1, -396($sp)
	lw $t0, -396($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -356($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -420($sp)
	lw $t2, -420($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -416($sp)
	lw $t0, -416($sp)
	lw $t1, ($t0)
	sw $t1, -412($sp)
	li $t2, 1
	lw $t1, -412($sp)
	sub $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t0, -424($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -408($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t2, -440($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -436($sp)
	lw $t0, -436($sp)
	lw $t1, ($t0)
	sw $t1, -432($sp)
	li $t2, 2
	lw $t1, -432($sp)
	sub $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t0, -444($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -428($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -448($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -448($sp)
	seq $t0, $t1, $t2
	sw $t0, -452($sp)
	lw $t0, -452($sp)
	bne $t0, $0, L22
	b L19
L22:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -456($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -456($sp)
	seq $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t0, -460($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t2, -472($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -468($sp)
	lw $t0, -468($sp)
	lw $t1, ($t0)
	sw $t1, -464($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -484($sp)
	lw $t2, -484($sp)
	lw $t1, -464($sp)
	add $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t0, -480($sp)
	lw $t1, ($t0)
	sw $t1, -476($sp)
	li $t2, -1
	lw $t1, -476($sp)
	seq $t0, $t1, $t2
	sw $t0, -488($sp)
	lw $t0, -488($sp)
	bne $t0, $0, L20
	b L19
L20:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -496($sp)
	lw $t0, -496($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -492($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -508($sp)
	lw $t2, -508($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -504($sp)
	lw $t0, -504($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -504($sp)
	lw $t1, ($t0)
	sw $t1, -500($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -520($sp)
	lw $t2, -520($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -516($sp)
	lw $t0, -516($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -516($sp)
	lw $t1, ($t0)
	sw $t1, -512($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -528($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -540($sp)
	lw $t2, -540($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -536($sp)
	lw $t0, -536($sp)
	lw $t1, ($t0)
	sw $t1, -532($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t2, -548($sp)
	lw $t1, -532($sp)
	add $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t0, -544($sp)
	lw $t1, -528($sp)
	sw $t1, ($t0)
	lw $t0, -544($sp)
	lw $t1, ($t0)
	sw $t1, -524($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -552($sp)
	lw $t0, -552($sp)
	bne $t0, $0, L25
	b L23
L25:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -556($sp)
	lw $t0, -556($sp)
	bne $t0, $0, L24
	b L23
L24:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -560($sp)
L23:
L19:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t2, -576($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -572($sp)
	lw $t0, -572($sp)
	lw $t1, ($t0)
	sw $t1, -568($sp)
	li $t2, 1
	lw $t1, -568($sp)
	sub $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t0, -580($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -564($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t2, -596($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -592($sp)
	lw $t0, -592($sp)
	lw $t1, ($t0)
	sw $t1, -588($sp)
	li $t2, 2
	lw $t1, -588($sp)
	add $t0, $t1, $t2
	sw $t0, -600($sp)
	lw $t0, -600($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -584($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -604($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -604($sp)
	seq $t0, $t1, $t2
	sw $t0, -608($sp)
	lw $t0, -608($sp)
	bne $t0, $0, L29
	b L26
L29:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -612($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -612($sp)
	seq $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t0, -616($sp)
	bne $t0, $0, L28
	b L26
L28:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t2, -628($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t0, -624($sp)
	lw $t1, ($t0)
	sw $t1, -620($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t2, -640($sp)
	lw $t1, -620($sp)
	add $t0, $t1, $t2
	sw $t0, -636($sp)
	lw $t0, -636($sp)
	lw $t1, ($t0)
	sw $t1, -632($sp)
	li $t2, -1
	lw $t1, -632($sp)
	seq $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t0, -644($sp)
	bne $t0, $0, L27
	b L26
L27:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -652($sp)
	lw $t0, -652($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -648($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t2, -664($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t0, -660($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -660($sp)
	lw $t1, ($t0)
	sw $t1, -656($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -676($sp)
	lw $t2, -676($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -672($sp)
	lw $t0, -672($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -672($sp)
	lw $t1, ($t0)
	sw $t1, -668($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -684($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -696($sp)
	lw $t2, -696($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -692($sp)
	lw $t0, -692($sp)
	lw $t1, ($t0)
	sw $t1, -688($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -704($sp)
	lw $t2, -704($sp)
	lw $t1, -688($sp)
	add $t0, $t1, $t2
	sw $t0, -700($sp)
	lw $t0, -700($sp)
	lw $t1, -684($sp)
	sw $t1, ($t0)
	lw $t0, -700($sp)
	lw $t1, ($t0)
	sw $t1, -680($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -708($sp)
	lw $t0, -708($sp)
	bne $t0, $0, L32
	b L30
L32:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t0, -712($sp)
	bne $t0, $0, L31
	b L30
L31:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -716($sp)
L30:
L26:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t2, -732($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -728($sp)
	lw $t0, -728($sp)
	lw $t1, ($t0)
	sw $t1, -724($sp)
	li $t2, 1
	lw $t1, -724($sp)
	add $t0, $t1, $t2
	sw $t0, -736($sp)
	lw $t0, -736($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -720($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -752($sp)
	lw $t2, -752($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -748($sp)
	lw $t0, -748($sp)
	lw $t1, ($t0)
	sw $t1, -744($sp)
	li $t2, 2
	lw $t1, -744($sp)
	sub $t0, $t1, $t2
	sw $t0, -756($sp)
	lw $t0, -756($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -740($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -760($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -760($sp)
	seq $t0, $t1, $t2
	sw $t0, -764($sp)
	lw $t0, -764($sp)
	bne $t0, $0, L36
	b L33
L36:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -768($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -768($sp)
	seq $t0, $t1, $t2
	sw $t0, -772($sp)
	lw $t0, -772($sp)
	bne $t0, $0, L35
	b L33
L35:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -784($sp)
	lw $t2, -784($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -780($sp)
	lw $t0, -780($sp)
	lw $t1, ($t0)
	sw $t1, -776($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -796($sp)
	lw $t2, -796($sp)
	lw $t1, -776($sp)
	add $t0, $t1, $t2
	sw $t0, -792($sp)
	lw $t0, -792($sp)
	lw $t1, ($t0)
	sw $t1, -788($sp)
	li $t2, -1
	lw $t1, -788($sp)
	seq $t0, $t1, $t2
	sw $t0, -800($sp)
	lw $t0, -800($sp)
	bne $t0, $0, L34
	b L33
L34:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -808($sp)
	lw $t0, -808($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -804($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t2, -820($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -816($sp)
	lw $t0, -816($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -816($sp)
	lw $t1, ($t0)
	sw $t1, -812($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -832($sp)
	lw $t2, -832($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -828($sp)
	lw $t0, -828($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -828($sp)
	lw $t1, ($t0)
	sw $t1, -824($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -840($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -852($sp)
	lw $t2, -852($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -848($sp)
	lw $t0, -848($sp)
	lw $t1, ($t0)
	sw $t1, -844($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t2, -860($sp)
	lw $t1, -844($sp)
	add $t0, $t1, $t2
	sw $t0, -856($sp)
	lw $t0, -856($sp)
	lw $t1, -840($sp)
	sw $t1, ($t0)
	lw $t0, -856($sp)
	lw $t1, ($t0)
	sw $t1, -836($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -864($sp)
	lw $t0, -864($sp)
	bne $t0, $0, L39
	b L37
L39:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -868($sp)
	lw $t0, -868($sp)
	bne $t0, $0, L38
	b L37
L38:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -872($sp)
L37:
L33:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -888($sp)
	lw $t2, -888($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -884($sp)
	lw $t0, -884($sp)
	lw $t1, ($t0)
	sw $t1, -880($sp)
	li $t2, 1
	lw $t1, -880($sp)
	add $t0, $t1, $t2
	sw $t0, -892($sp)
	lw $t0, -892($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -876($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -908($sp)
	lw $t2, -908($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -904($sp)
	lw $t0, -904($sp)
	lw $t1, ($t0)
	sw $t1, -900($sp)
	li $t2, 2
	lw $t1, -900($sp)
	add $t0, $t1, $t2
	sw $t0, -912($sp)
	lw $t0, -912($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -896($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -916($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -916($sp)
	seq $t0, $t1, $t2
	sw $t0, -920($sp)
	lw $t0, -920($sp)
	bne $t0, $0, L43
	b L40
L43:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -924($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -924($sp)
	seq $t0, $t1, $t2
	sw $t0, -928($sp)
	lw $t0, -928($sp)
	bne $t0, $0, L42
	b L40
L42:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -940($sp)
	lw $t2, -940($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -936($sp)
	lw $t0, -936($sp)
	lw $t1, ($t0)
	sw $t1, -932($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -952($sp)
	lw $t2, -952($sp)
	lw $t1, -932($sp)
	add $t0, $t1, $t2
	sw $t0, -948($sp)
	lw $t0, -948($sp)
	lw $t1, ($t0)
	sw $t1, -944($sp)
	li $t2, -1
	lw $t1, -944($sp)
	seq $t0, $t1, $t2
	sw $t0, -956($sp)
	lw $t0, -956($sp)
	bne $t0, $0, L41
	b L40
L41:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -964($sp)
	lw $t0, -964($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -960($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -976($sp)
	lw $t2, -976($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -972($sp)
	lw $t0, -972($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -972($sp)
	lw $t1, ($t0)
	sw $t1, -968($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -988($sp)
	lw $t2, -988($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -984($sp)
	lw $t0, -984($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -984($sp)
	lw $t1, ($t0)
	sw $t1, -980($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -996($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1008($sp)
	lw $t2, -1008($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1004($sp)
	lw $t0, -1004($sp)
	lw $t1, ($t0)
	sw $t1, -1000($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1016($sp)
	lw $t2, -1016($sp)
	lw $t1, -1000($sp)
	add $t0, $t1, $t2
	sw $t0, -1012($sp)
	lw $t0, -1012($sp)
	lw $t1, -996($sp)
	sw $t1, ($t0)
	lw $t0, -1012($sp)
	lw $t1, ($t0)
	sw $t1, -992($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1020($sp)
	lw $t0, -1020($sp)
	bne $t0, $0, L46
	b L44
L46:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1024($sp)
	lw $t0, -1024($sp)
	bne $t0, $0, L45
	b L44
L45:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1028($sp)
L44:
L40:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1044($sp)
	lw $t2, -1044($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1040($sp)
	lw $t0, -1040($sp)
	lw $t1, ($t0)
	sw $t1, -1036($sp)
	li $t2, 2
	lw $t1, -1036($sp)
	sub $t0, $t1, $t2
	sw $t0, -1048($sp)
	lw $t0, -1048($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1032($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1064($sp)
	lw $t2, -1064($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1060($sp)
	lw $t0, -1060($sp)
	lw $t1, ($t0)
	sw $t1, -1056($sp)
	li $t2, 1
	lw $t1, -1056($sp)
	sub $t0, $t1, $t2
	sw $t0, -1068($sp)
	lw $t0, -1068($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1052($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1072($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1072($sp)
	seq $t0, $t1, $t2
	sw $t0, -1076($sp)
	lw $t0, -1076($sp)
	bne $t0, $0, L50
	b L47
L50:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1080($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1080($sp)
	seq $t0, $t1, $t2
	sw $t0, -1084($sp)
	lw $t0, -1084($sp)
	bne $t0, $0, L49
	b L47
L49:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1096($sp)
	lw $t2, -1096($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1092($sp)
	lw $t0, -1092($sp)
	lw $t1, ($t0)
	sw $t1, -1088($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1108($sp)
	lw $t2, -1108($sp)
	lw $t1, -1088($sp)
	add $t0, $t1, $t2
	sw $t0, -1104($sp)
	lw $t0, -1104($sp)
	lw $t1, ($t0)
	sw $t1, -1100($sp)
	li $t2, -1
	lw $t1, -1100($sp)
	seq $t0, $t1, $t2
	sw $t0, -1112($sp)
	lw $t0, -1112($sp)
	bne $t0, $0, L48
	b L47
L48:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1120($sp)
	lw $t0, -1120($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1116($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1132($sp)
	lw $t2, -1132($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1128($sp)
	lw $t0, -1128($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1128($sp)
	lw $t1, ($t0)
	sw $t1, -1124($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1144($sp)
	lw $t2, -1144($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1140($sp)
	lw $t0, -1140($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1140($sp)
	lw $t1, ($t0)
	sw $t1, -1136($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1152($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1164($sp)
	lw $t2, -1164($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1160($sp)
	lw $t0, -1160($sp)
	lw $t1, ($t0)
	sw $t1, -1156($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1172($sp)
	lw $t2, -1172($sp)
	lw $t1, -1156($sp)
	add $t0, $t1, $t2
	sw $t0, -1168($sp)
	lw $t0, -1168($sp)
	lw $t1, -1152($sp)
	sw $t1, ($t0)
	lw $t0, -1168($sp)
	lw $t1, ($t0)
	sw $t1, -1148($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1176($sp)
	lw $t0, -1176($sp)
	bne $t0, $0, L53
	b L51
L53:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1180($sp)
	lw $t0, -1180($sp)
	bne $t0, $0, L52
	b L51
L52:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1184($sp)
L51:
L47:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1200($sp)
	lw $t2, -1200($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1196($sp)
	lw $t0, -1196($sp)
	lw $t1, ($t0)
	sw $t1, -1192($sp)
	li $t2, 2
	lw $t1, -1192($sp)
	sub $t0, $t1, $t2
	sw $t0, -1204($sp)
	lw $t0, -1204($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1188($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1220($sp)
	lw $t2, -1220($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1216($sp)
	lw $t0, -1216($sp)
	lw $t1, ($t0)
	sw $t1, -1212($sp)
	li $t2, 1
	lw $t1, -1212($sp)
	add $t0, $t1, $t2
	sw $t0, -1224($sp)
	lw $t0, -1224($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1208($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1228($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1228($sp)
	seq $t0, $t1, $t2
	sw $t0, -1232($sp)
	lw $t0, -1232($sp)
	bne $t0, $0, L57
	b L54
L57:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1236($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1236($sp)
	seq $t0, $t1, $t2
	sw $t0, -1240($sp)
	lw $t0, -1240($sp)
	bne $t0, $0, L56
	b L54
L56:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1252($sp)
	lw $t2, -1252($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1248($sp)
	lw $t0, -1248($sp)
	lw $t1, ($t0)
	sw $t1, -1244($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1264($sp)
	lw $t2, -1264($sp)
	lw $t1, -1244($sp)
	add $t0, $t1, $t2
	sw $t0, -1260($sp)
	lw $t0, -1260($sp)
	lw $t1, ($t0)
	sw $t1, -1256($sp)
	li $t2, -1
	lw $t1, -1256($sp)
	seq $t0, $t1, $t2
	sw $t0, -1268($sp)
	lw $t0, -1268($sp)
	bne $t0, $0, L55
	b L54
L55:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1276($sp)
	lw $t0, -1276($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1272($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1288($sp)
	lw $t2, -1288($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1284($sp)
	lw $t0, -1284($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1284($sp)
	lw $t1, ($t0)
	sw $t1, -1280($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1300($sp)
	lw $t2, -1300($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1296($sp)
	lw $t0, -1296($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1296($sp)
	lw $t1, ($t0)
	sw $t1, -1292($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1308($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1320($sp)
	lw $t2, -1320($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1316($sp)
	lw $t0, -1316($sp)
	lw $t1, ($t0)
	sw $t1, -1312($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1328($sp)
	lw $t2, -1328($sp)
	lw $t1, -1312($sp)
	add $t0, $t1, $t2
	sw $t0, -1324($sp)
	lw $t0, -1324($sp)
	lw $t1, -1308($sp)
	sw $t1, ($t0)
	lw $t0, -1324($sp)
	lw $t1, ($t0)
	sw $t1, -1304($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1332($sp)
	lw $t0, -1332($sp)
	bne $t0, $0, L60
	b L58
L60:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1336($sp)
	lw $t0, -1336($sp)
	bne $t0, $0, L59
	b L58
L59:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1340($sp)
L58:
L54:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1356($sp)
	lw $t2, -1356($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1352($sp)
	lw $t0, -1352($sp)
	lw $t1, ($t0)
	sw $t1, -1348($sp)
	li $t2, 2
	lw $t1, -1348($sp)
	add $t0, $t1, $t2
	sw $t0, -1360($sp)
	lw $t0, -1360($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1344($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1376($sp)
	lw $t2, -1376($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1372($sp)
	lw $t0, -1372($sp)
	lw $t1, ($t0)
	sw $t1, -1368($sp)
	li $t2, 1
	lw $t1, -1368($sp)
	sub $t0, $t1, $t2
	sw $t0, -1380($sp)
	lw $t0, -1380($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1364($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1384($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1384($sp)
	seq $t0, $t1, $t2
	sw $t0, -1388($sp)
	lw $t0, -1388($sp)
	bne $t0, $0, L64
	b L61
L64:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1392($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1392($sp)
	seq $t0, $t1, $t2
	sw $t0, -1396($sp)
	lw $t0, -1396($sp)
	bne $t0, $0, L63
	b L61
L63:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1408($sp)
	lw $t2, -1408($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1404($sp)
	lw $t0, -1404($sp)
	lw $t1, ($t0)
	sw $t1, -1400($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1420($sp)
	lw $t2, -1420($sp)
	lw $t1, -1400($sp)
	add $t0, $t1, $t2
	sw $t0, -1416($sp)
	lw $t0, -1416($sp)
	lw $t1, ($t0)
	sw $t1, -1412($sp)
	li $t2, -1
	lw $t1, -1412($sp)
	seq $t0, $t1, $t2
	sw $t0, -1424($sp)
	lw $t0, -1424($sp)
	bne $t0, $0, L62
	b L61
L62:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1432($sp)
	lw $t0, -1432($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1428($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1444($sp)
	lw $t2, -1444($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1440($sp)
	lw $t0, -1440($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1440($sp)
	lw $t1, ($t0)
	sw $t1, -1436($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1456($sp)
	lw $t2, -1456($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1452($sp)
	lw $t0, -1452($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1452($sp)
	lw $t1, ($t0)
	sw $t1, -1448($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1464($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1476($sp)
	lw $t2, -1476($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1472($sp)
	lw $t0, -1472($sp)
	lw $t1, ($t0)
	sw $t1, -1468($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1484($sp)
	lw $t2, -1484($sp)
	lw $t1, -1468($sp)
	add $t0, $t1, $t2
	sw $t0, -1480($sp)
	lw $t0, -1480($sp)
	lw $t1, -1464($sp)
	sw $t1, ($t0)
	lw $t0, -1480($sp)
	lw $t1, ($t0)
	sw $t1, -1460($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1488($sp)
	lw $t0, -1488($sp)
	bne $t0, $0, L67
	b L65
L67:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1492($sp)
	lw $t0, -1492($sp)
	bne $t0, $0, L66
	b L65
L66:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1496($sp)
L65:
L61:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1512($sp)
	lw $t2, -1512($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1508($sp)
	lw $t0, -1508($sp)
	lw $t1, ($t0)
	sw $t1, -1504($sp)
	li $t2, 2
	lw $t1, -1504($sp)
	add $t0, $t1, $t2
	sw $t0, -1516($sp)
	lw $t0, -1516($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1500($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1532($sp)
	lw $t2, -1532($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1528($sp)
	lw $t0, -1528($sp)
	lw $t1, ($t0)
	sw $t1, -1524($sp)
	li $t2, 1
	lw $t1, -1524($sp)
	add $t0, $t1, $t2
	sw $t0, -1536($sp)
	lw $t0, -1536($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1520($sp)
	lw $t0, -40($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1540($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1540($sp)
	seq $t0, $t1, $t2
	sw $t0, -1544($sp)
	lw $t0, -1544($sp)
	bne $t0, $0, L71
	b L68
L71:
	lw $t0, -44($sp)
	sw $t0, -1712($sp)
	lw $t0, -4($sp)
	sw $t0, -1716($sp)
	subu $sp, $sp, 1720
	jal _check
	addi $sp, $sp, 1720
	sw $v0, -1548($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1548($sp)
	seq $t0, $t1, $t2
	sw $t0, -1552($sp)
	lw $t0, -1552($sp)
	bne $t0, $0, L70
	b L68
L70:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1564($sp)
	lw $t2, -1564($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1560($sp)
	lw $t0, -1560($sp)
	lw $t1, ($t0)
	sw $t1, -1556($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1576($sp)
	lw $t2, -1576($sp)
	lw $t1, -1556($sp)
	add $t0, $t1, $t2
	sw $t0, -1572($sp)
	lw $t0, -1572($sp)
	lw $t1, ($t0)
	sw $t1, -1568($sp)
	li $t2, -1
	lw $t1, -1568($sp)
	seq $t0, $t1, $t2
	sw $t0, -1580($sp)
	lw $t0, -1580($sp)
	bne $t0, $0, L69
	b L68
L69:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1588($sp)
	lw $t0, -1588($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1584($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1600($sp)
	lw $t2, -1600($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1596($sp)
	lw $t0, -1596($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1596($sp)
	lw $t1, ($t0)
	sw $t1, -1592($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1612($sp)
	lw $t2, -1612($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1608($sp)
	lw $t0, -1608($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1608($sp)
	lw $t1, ($t0)
	sw $t1, -1604($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1620($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1632($sp)
	lw $t2, -1632($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1628($sp)
	lw $t0, -1628($sp)
	lw $t1, ($t0)
	sw $t1, -1624($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1640($sp)
	lw $t2, -1640($sp)
	lw $t1, -1624($sp)
	add $t0, $t1, $t2
	sw $t0, -1636($sp)
	lw $t0, -1636($sp)
	lw $t1, -1620($sp)
	sw $t1, ($t0)
	lw $t0, -1636($sp)
	lw $t1, ($t0)
	sw $t1, -1616($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1644($sp)
	lw $t0, -1644($sp)
	bne $t0, $0, L74
	b L72
L74:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1648($sp)
	lw $t0, -1648($sp)
	bne $t0, $0, L73
	b L72
L73:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1652($sp)
L72:
L68:
	li $t2, 1
	lw $t1, -32($sp)
	seq $t0, $t1, $t2
	sw $t0, -1656($sp)
	lw $t0, -1656($sp)
	bne $t0, $0, L76
	b L75
L76:
	b L16
L75:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -1664($sp)
	lw $t0, -1664($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -1660($sp)
	b L17
L16:
	li $t2, 1
	lw $t1, -32($sp)
	seq $t0, $t1, $t2
	sw $t0, -1668($sp)
	lw $t0, -1668($sp)
	bne $t0, $0, L78
	b L79
L78:
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -1684($sp)
	lw $t2, -1684($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1680($sp)
	lw $t0, -1680($sp)
	lw $t1, ($t0)
	sw $t1, -1676($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -1696($sp)
	lw $t2, -1696($sp)
	lw $t1, -1676($sp)
	add $t0, $t1, $t2
	sw $t0, -1692($sp)
	lw $t0, -1692($sp)
	lw $t1, ($t0)
	sw $t1, -1688($sp)
	lw $t0, -1672($sp)
	sw $t0, -1712($sp)
	lw $t0, -1688($sp)
	sw $t0, -1716($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 1720
	jal _printf
	addi $sp, $sp, 1720
	sw $v0, -1700($sp)
	lw $ra, ($sp)
	b L77
L79:
	lw $t0, -1704($sp)
	sw $t0, -1712($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 1716
	jal _printf
	addi $sp, $sp, 1716
	sw $v0, -1708($sp)
	lw $ra, ($sp)
L77:
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


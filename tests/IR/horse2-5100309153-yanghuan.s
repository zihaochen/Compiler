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
	li $t0, 0
	la $t1, str_1
	sw $t0, 12($t1)
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
	li $t0, 0
	la $t1, str_2
	sw $t0, 52($t1)
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
	sw $t0, -1712($sp)
	la $t0, str_2
	sw $t0, -1744($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -72($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -72($sp)
	sub $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	li $t1, 100
	mul $t0, $t1, $t2
	sw $t0, -80($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -84($sp)
	lw $ra, ($sp)
	li $t2, 48
	lw $t1, -84($sp)
	sub $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	li $t1, 10
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -80($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	subu $sp, $sp, 4
	jal _getchar
	addi $sp, $sp, 4
	sw $v0, -100($sp)
	lw $ra, ($sp)
	lw $t2, -100($sp)
	lw $t1, -96($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	li $t2, 48
	lw $t1, -104($sp)
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -68($sp)
	li $t0, 0
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	sw $t0, -124($sp)
	lw $t0, -124($sp)
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -120($sp)
	lw $t0, -120($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -112($sp)
	li $t2, 1
	lw $t1, -4($sp)
	sub $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t0, -136($sp)
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	sw $t0, -132($sp)
	lw $t0, -132($sp)
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	sw $t0, -128($sp)
	li $t0, 0
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -144($sp)
	lw $t0, -144($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -140($sp)
	li $t0, 0
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -148($sp)
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -160($sp)
	li $t2, 4
	lw $t1, -160($sp)
	mul $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t0, -164($sp)
	sw $t0, -1752($sp)
	subu $sp, $sp, 1756
	jal _malloc
	addi $sp, $sp, 1756
	sw $v0, -168($sp)
	lw $ra, ($sp)
	lw $t0, -168($sp)
	sw $t0, -48($sp)
	lw $t0, -48($sp)
	sw $t0, -156($sp)
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -172($sp)
L5:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, -176($sp)
	lw $t1, -60($sp)
	slt $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t0, -180($sp)
	bne $t0, $0, L6
	b L4
L6:
	lw $t2, -60($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t0, -188($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -188($sp)
	lw $t1, ($t0)
	sw $t1, -184($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -196($sp)
	b L5
L4:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -208($sp)
	li $t2, 4
	lw $t1, -208($sp)
	mul $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t0, -212($sp)
	sw $t0, -1752($sp)
	subu $sp, $sp, 1756
	jal _malloc
	addi $sp, $sp, 1756
	sw $v0, -216($sp)
	lw $ra, ($sp)
	lw $t0, -216($sp)
	sw $t0, -52($sp)
	lw $t0, -52($sp)
	sw $t0, -204($sp)
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -220($sp)
L8:
	lw $t2, -4($sp)
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, -224($sp)
	lw $t1, -60($sp)
	slt $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t0, -228($sp)
	bne $t0, $0, L9
	b L7
L9:
	lw $t2, -60($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t0, -236($sp)
	li $t1, 0
	sw $t1, ($t0)
	lw $t0, -236($sp)
	lw $t1, ($t0)
	sw $t1, -232($sp)
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -244($sp)
	b L8
L7:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t0, -256($sp)
	sw $t0, -1752($sp)
	subu $sp, $sp, 1756
	jal _malloc
	addi $sp, $sp, 1756
	sw $v0, -260($sp)
	lw $ra, ($sp)
	lw $t0, -260($sp)
	sw $t0, -56($sp)
	lw $t0, -56($sp)
	sw $t0, -252($sp)
	li $t0, 0
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -264($sp)
L11:
	lw $t2, -4($sp)
	lw $t1, -60($sp)
	slt $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t0, -268($sp)
	bne $t0, $0, L12
	b L10
L12:
	li $t2, 4
	lw $t1, -4($sp)
	mul $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t0, -276($sp)
	sw $t0, -1752($sp)
	subu $sp, $sp, 1756
	jal _malloc
	addi $sp, $sp, 1756
	sw $v0, -280($sp)
	lw $ra, ($sp)
	lw $t2, -60($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t0, -284($sp)
	lw $t1, -280($sp)
	sw $t1, ($t0)
	lw $t0, -284($sp)
	lw $t1, ($t0)
	sw $t1, -272($sp)
	li $t0, 0
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, -292($sp)
L14:
	lw $t2, -4($sp)
	lw $t1, -64($sp)
	slt $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	bne $t0, $0, L15
	b L13
L15:
	li $t2, 4
	lw $t1, -60($sp)
	mul $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t2, -312($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t0, -308($sp)
	lw $t1, ($t0)
	sw $t1, -304($sp)
	lw $t2, -64($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, -320($sp)
	lw $t1, -304($sp)
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t0, -316($sp)
	li $t1, -1
	sw $t1, ($t0)
	lw $t0, -316($sp)
	lw $t1, ($t0)
	sw $t1, -300($sp)
	li $t2, 1
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t0, -328($sp)
	sw $t0, -64($sp)
	lw $t0, -64($sp)
	sw $t0, -324($sp)
	b L14
L13:
	li $t2, 1
	lw $t1, -60($sp)
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t0, -336($sp)
	sw $t0, -60($sp)
	lw $t0, -60($sp)
	sw $t0, -332($sp)
	b L11
L10:
	li $t2, 0
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t2, -348($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t0, -344($sp)
	lw $t1, -12($sp)
	sw $t1, ($t0)
	lw $t0, -344($sp)
	lw $t1, ($t0)
	sw $t1, -340($sp)
	li $t2, 0
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t2, -360($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t0, -356($sp)
	lw $t1, -16($sp)
	sw $t1, ($t0)
	lw $t0, -356($sp)
	lw $t1, ($t0)
	sw $t1, -352($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t2, -372($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t0, -368($sp)
	lw $t1, ($t0)
	sw $t1, -364($sp)
	li $t2, 4
	lw $t1, -16($sp)
	mul $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t2, -384($sp)
	lw $t1, -364($sp)
	add $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t0, -380($sp)
	lw $t1, ($t0)
	sw $t1, -376($sp)
	li $t2, 0
	lw $t1, -376($sp)
	seq $t0, $t1, $t2
	sw $t0, -388($sp)
L17:
	lw $t2, -28($sp)
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t0, -392($sp)
	bne $t0, $0, L18
	b L16
L18:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t2, -408($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t0, -404($sp)
	lw $t1, ($t0)
	sw $t1, -400($sp)
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
	li $t2, 4
	lw $t1, -412($sp)
	mul $t0, $t1, $t2
	sw $t0, -432($sp)
	lw $t2, -432($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t0, -428($sp)
	lw $t1, ($t0)
	sw $t1, -424($sp)
	li $t2, 4
	lw $t1, -400($sp)
	mul $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t2, -444($sp)
	lw $t1, -424($sp)
	add $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t0, -440($sp)
	lw $t1, ($t0)
	sw $t1, -436($sp)
	lw $t0, -436($sp)
	sw $t0, -36($sp)
	lw $t0, -36($sp)
	sw $t0, -396($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t2, -460($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -456($sp)
	lw $t0, -456($sp)
	lw $t1, ($t0)
	sw $t1, -452($sp)
	li $t2, 1
	lw $t1, -452($sp)
	sub $t0, $t1, $t2
	sw $t0, -464($sp)
	lw $t0, -464($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -448($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t2, -480($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -476($sp)
	lw $t0, -476($sp)
	lw $t1, ($t0)
	sw $t1, -472($sp)
	li $t2, 2
	lw $t1, -472($sp)
	sub $t0, $t1, $t2
	sw $t0, -484($sp)
	lw $t0, -484($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -468($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -488($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -488($sp)
	seq $t0, $t1, $t2
	sw $t0, -492($sp)
	lw $t0, -492($sp)
	bne $t0, $0, L22
	b L19
L22:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -496($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -496($sp)
	seq $t0, $t1, $t2
	sw $t0, -500($sp)
	lw $t0, -500($sp)
	bne $t0, $0, L21
	b L19
L21:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -512($sp)
	lw $t2, -512($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -508($sp)
	lw $t0, -508($sp)
	lw $t1, ($t0)
	sw $t1, -504($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -524($sp)
	lw $t2, -524($sp)
	lw $t1, -504($sp)
	add $t0, $t1, $t2
	sw $t0, -520($sp)
	lw $t0, -520($sp)
	lw $t1, ($t0)
	sw $t1, -516($sp)
	li $t2, -1
	lw $t1, -516($sp)
	seq $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t0, -528($sp)
	bne $t0, $0, L20
	b L19
L20:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -536($sp)
	lw $t0, -536($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -532($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t2, -548($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t0, -544($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -544($sp)
	lw $t1, ($t0)
	sw $t1, -540($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t2, -560($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -556($sp)
	lw $t0, -556($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -556($sp)
	lw $t1, ($t0)
	sw $t1, -552($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -568($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t2, -580($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t0, -576($sp)
	lw $t1, ($t0)
	sw $t1, -572($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -588($sp)
	lw $t2, -588($sp)
	lw $t1, -572($sp)
	add $t0, $t1, $t2
	sw $t0, -584($sp)
	lw $t0, -584($sp)
	lw $t1, -568($sp)
	sw $t1, ($t0)
	lw $t0, -584($sp)
	lw $t1, ($t0)
	sw $t1, -564($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -592($sp)
	lw $t0, -592($sp)
	bne $t0, $0, L25
	b L23
L25:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t0, -596($sp)
	bne $t0, $0, L24
	b L23
L24:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -600($sp)
L23:
L19:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t2, -616($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t0, -612($sp)
	lw $t1, ($t0)
	sw $t1, -608($sp)
	li $t2, 1
	lw $t1, -608($sp)
	sub $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t0, -620($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -604($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -636($sp)
	lw $t2, -636($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -632($sp)
	lw $t0, -632($sp)
	lw $t1, ($t0)
	sw $t1, -628($sp)
	li $t2, 2
	lw $t1, -628($sp)
	add $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t0, -640($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -624($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -644($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -644($sp)
	seq $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t0, -648($sp)
	bne $t0, $0, L29
	b L26
L29:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -652($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -652($sp)
	seq $t0, $t1, $t2
	sw $t0, -656($sp)
	lw $t0, -656($sp)
	bne $t0, $0, L28
	b L26
L28:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -668($sp)
	lw $t2, -668($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t0, -664($sp)
	lw $t1, ($t0)
	sw $t1, -660($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -680($sp)
	lw $t2, -680($sp)
	lw $t1, -660($sp)
	add $t0, $t1, $t2
	sw $t0, -676($sp)
	lw $t0, -676($sp)
	lw $t1, ($t0)
	sw $t1, -672($sp)
	li $t2, -1
	lw $t1, -672($sp)
	seq $t0, $t1, $t2
	sw $t0, -684($sp)
	lw $t0, -684($sp)
	bne $t0, $0, L27
	b L26
L27:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -692($sp)
	lw $t0, -692($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -688($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -704($sp)
	lw $t2, -704($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -700($sp)
	lw $t0, -700($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -700($sp)
	lw $t1, ($t0)
	sw $t1, -696($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -716($sp)
	lw $t2, -716($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t0, -712($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -712($sp)
	lw $t1, ($t0)
	sw $t1, -708($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -724($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -736($sp)
	lw $t2, -736($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t0, -732($sp)
	lw $t1, ($t0)
	sw $t1, -728($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -744($sp)
	lw $t2, -744($sp)
	lw $t1, -728($sp)
	add $t0, $t1, $t2
	sw $t0, -740($sp)
	lw $t0, -740($sp)
	lw $t1, -724($sp)
	sw $t1, ($t0)
	lw $t0, -740($sp)
	lw $t1, ($t0)
	sw $t1, -720($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -748($sp)
	lw $t0, -748($sp)
	bne $t0, $0, L32
	b L30
L32:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -752($sp)
	lw $t0, -752($sp)
	bne $t0, $0, L31
	b L30
L31:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -756($sp)
L30:
L26:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -772($sp)
	lw $t2, -772($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -768($sp)
	lw $t0, -768($sp)
	lw $t1, ($t0)
	sw $t1, -764($sp)
	li $t2, 1
	lw $t1, -764($sp)
	add $t0, $t1, $t2
	sw $t0, -776($sp)
	lw $t0, -776($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -760($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -792($sp)
	lw $t2, -792($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -788($sp)
	lw $t0, -788($sp)
	lw $t1, ($t0)
	sw $t1, -784($sp)
	li $t2, 2
	lw $t1, -784($sp)
	sub $t0, $t1, $t2
	sw $t0, -796($sp)
	lw $t0, -796($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -780($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -800($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -800($sp)
	seq $t0, $t1, $t2
	sw $t0, -804($sp)
	lw $t0, -804($sp)
	bne $t0, $0, L36
	b L33
L36:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -808($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -808($sp)
	seq $t0, $t1, $t2
	sw $t0, -812($sp)
	lw $t0, -812($sp)
	bne $t0, $0, L35
	b L33
L35:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -824($sp)
	lw $t2, -824($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t0, -820($sp)
	lw $t1, ($t0)
	sw $t1, -816($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -836($sp)
	lw $t2, -836($sp)
	lw $t1, -816($sp)
	add $t0, $t1, $t2
	sw $t0, -832($sp)
	lw $t0, -832($sp)
	lw $t1, ($t0)
	sw $t1, -828($sp)
	li $t2, -1
	lw $t1, -828($sp)
	seq $t0, $t1, $t2
	sw $t0, -840($sp)
	lw $t0, -840($sp)
	bne $t0, $0, L34
	b L33
L34:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -848($sp)
	lw $t0, -848($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -844($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t2, -860($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -856($sp)
	lw $t0, -856($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -856($sp)
	lw $t1, ($t0)
	sw $t1, -852($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -872($sp)
	lw $t2, -872($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -868($sp)
	lw $t0, -868($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -868($sp)
	lw $t1, ($t0)
	sw $t1, -864($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -880($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -892($sp)
	lw $t2, -892($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -888($sp)
	lw $t0, -888($sp)
	lw $t1, ($t0)
	sw $t1, -884($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -900($sp)
	lw $t2, -900($sp)
	lw $t1, -884($sp)
	add $t0, $t1, $t2
	sw $t0, -896($sp)
	lw $t0, -896($sp)
	lw $t1, -880($sp)
	sw $t1, ($t0)
	lw $t0, -896($sp)
	lw $t1, ($t0)
	sw $t1, -876($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -904($sp)
	lw $t0, -904($sp)
	bne $t0, $0, L39
	b L37
L39:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -908($sp)
	lw $t0, -908($sp)
	bne $t0, $0, L38
	b L37
L38:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -912($sp)
L37:
L33:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -928($sp)
	lw $t2, -928($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -924($sp)
	lw $t0, -924($sp)
	lw $t1, ($t0)
	sw $t1, -920($sp)
	li $t2, 1
	lw $t1, -920($sp)
	add $t0, $t1, $t2
	sw $t0, -932($sp)
	lw $t0, -932($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -916($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -948($sp)
	lw $t2, -948($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -944($sp)
	lw $t0, -944($sp)
	lw $t1, ($t0)
	sw $t1, -940($sp)
	li $t2, 2
	lw $t1, -940($sp)
	add $t0, $t1, $t2
	sw $t0, -952($sp)
	lw $t0, -952($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -936($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -956($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -956($sp)
	seq $t0, $t1, $t2
	sw $t0, -960($sp)
	lw $t0, -960($sp)
	bne $t0, $0, L43
	b L40
L43:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -964($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -964($sp)
	seq $t0, $t1, $t2
	sw $t0, -968($sp)
	lw $t0, -968($sp)
	bne $t0, $0, L42
	b L40
L42:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -980($sp)
	lw $t2, -980($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -976($sp)
	lw $t0, -976($sp)
	lw $t1, ($t0)
	sw $t1, -972($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -992($sp)
	lw $t2, -992($sp)
	lw $t1, -972($sp)
	add $t0, $t1, $t2
	sw $t0, -988($sp)
	lw $t0, -988($sp)
	lw $t1, ($t0)
	sw $t1, -984($sp)
	li $t2, -1
	lw $t1, -984($sp)
	seq $t0, $t1, $t2
	sw $t0, -996($sp)
	lw $t0, -996($sp)
	bne $t0, $0, L41
	b L40
L41:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1004($sp)
	lw $t0, -1004($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1000($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1016($sp)
	lw $t2, -1016($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1012($sp)
	lw $t0, -1012($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1012($sp)
	lw $t1, ($t0)
	sw $t1, -1008($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1028($sp)
	lw $t2, -1028($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1024($sp)
	lw $t0, -1024($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1024($sp)
	lw $t1, ($t0)
	sw $t1, -1020($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1036($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1048($sp)
	lw $t2, -1048($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1044($sp)
	lw $t0, -1044($sp)
	lw $t1, ($t0)
	sw $t1, -1040($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1056($sp)
	lw $t2, -1056($sp)
	lw $t1, -1040($sp)
	add $t0, $t1, $t2
	sw $t0, -1052($sp)
	lw $t0, -1052($sp)
	lw $t1, -1036($sp)
	sw $t1, ($t0)
	lw $t0, -1052($sp)
	lw $t1, ($t0)
	sw $t1, -1032($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1060($sp)
	lw $t0, -1060($sp)
	bne $t0, $0, L46
	b L44
L46:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1064($sp)
	lw $t0, -1064($sp)
	bne $t0, $0, L45
	b L44
L45:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1068($sp)
L44:
L40:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1084($sp)
	lw $t2, -1084($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1080($sp)
	lw $t0, -1080($sp)
	lw $t1, ($t0)
	sw $t1, -1076($sp)
	li $t2, 2
	lw $t1, -1076($sp)
	sub $t0, $t1, $t2
	sw $t0, -1088($sp)
	lw $t0, -1088($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1072($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1104($sp)
	lw $t2, -1104($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1100($sp)
	lw $t0, -1100($sp)
	lw $t1, ($t0)
	sw $t1, -1096($sp)
	li $t2, 1
	lw $t1, -1096($sp)
	sub $t0, $t1, $t2
	sw $t0, -1108($sp)
	lw $t0, -1108($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1092($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1112($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1112($sp)
	seq $t0, $t1, $t2
	sw $t0, -1116($sp)
	lw $t0, -1116($sp)
	bne $t0, $0, L50
	b L47
L50:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1120($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1120($sp)
	seq $t0, $t1, $t2
	sw $t0, -1124($sp)
	lw $t0, -1124($sp)
	bne $t0, $0, L49
	b L47
L49:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1136($sp)
	lw $t2, -1136($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1132($sp)
	lw $t0, -1132($sp)
	lw $t1, ($t0)
	sw $t1, -1128($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1148($sp)
	lw $t2, -1148($sp)
	lw $t1, -1128($sp)
	add $t0, $t1, $t2
	sw $t0, -1144($sp)
	lw $t0, -1144($sp)
	lw $t1, ($t0)
	sw $t1, -1140($sp)
	li $t2, -1
	lw $t1, -1140($sp)
	seq $t0, $t1, $t2
	sw $t0, -1152($sp)
	lw $t0, -1152($sp)
	bne $t0, $0, L48
	b L47
L48:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1160($sp)
	lw $t0, -1160($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1156($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1172($sp)
	lw $t2, -1172($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1168($sp)
	lw $t0, -1168($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1168($sp)
	lw $t1, ($t0)
	sw $t1, -1164($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1184($sp)
	lw $t2, -1184($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1180($sp)
	lw $t0, -1180($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1180($sp)
	lw $t1, ($t0)
	sw $t1, -1176($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1192($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1204($sp)
	lw $t2, -1204($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1200($sp)
	lw $t0, -1200($sp)
	lw $t1, ($t0)
	sw $t1, -1196($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1212($sp)
	lw $t2, -1212($sp)
	lw $t1, -1196($sp)
	add $t0, $t1, $t2
	sw $t0, -1208($sp)
	lw $t0, -1208($sp)
	lw $t1, -1192($sp)
	sw $t1, ($t0)
	lw $t0, -1208($sp)
	lw $t1, ($t0)
	sw $t1, -1188($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1216($sp)
	lw $t0, -1216($sp)
	bne $t0, $0, L53
	b L51
L53:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1220($sp)
	lw $t0, -1220($sp)
	bne $t0, $0, L52
	b L51
L52:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1224($sp)
L51:
L47:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1240($sp)
	lw $t2, -1240($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1236($sp)
	lw $t0, -1236($sp)
	lw $t1, ($t0)
	sw $t1, -1232($sp)
	li $t2, 2
	lw $t1, -1232($sp)
	sub $t0, $t1, $t2
	sw $t0, -1244($sp)
	lw $t0, -1244($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1228($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1260($sp)
	lw $t2, -1260($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1256($sp)
	lw $t0, -1256($sp)
	lw $t1, ($t0)
	sw $t1, -1252($sp)
	li $t2, 1
	lw $t1, -1252($sp)
	add $t0, $t1, $t2
	sw $t0, -1264($sp)
	lw $t0, -1264($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1248($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1268($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1268($sp)
	seq $t0, $t1, $t2
	sw $t0, -1272($sp)
	lw $t0, -1272($sp)
	bne $t0, $0, L57
	b L54
L57:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1276($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1276($sp)
	seq $t0, $t1, $t2
	sw $t0, -1280($sp)
	lw $t0, -1280($sp)
	bne $t0, $0, L56
	b L54
L56:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1292($sp)
	lw $t2, -1292($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1288($sp)
	lw $t0, -1288($sp)
	lw $t1, ($t0)
	sw $t1, -1284($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1304($sp)
	lw $t2, -1304($sp)
	lw $t1, -1284($sp)
	add $t0, $t1, $t2
	sw $t0, -1300($sp)
	lw $t0, -1300($sp)
	lw $t1, ($t0)
	sw $t1, -1296($sp)
	li $t2, -1
	lw $t1, -1296($sp)
	seq $t0, $t1, $t2
	sw $t0, -1308($sp)
	lw $t0, -1308($sp)
	bne $t0, $0, L55
	b L54
L55:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1316($sp)
	lw $t0, -1316($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1312($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1328($sp)
	lw $t2, -1328($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1324($sp)
	lw $t0, -1324($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1324($sp)
	lw $t1, ($t0)
	sw $t1, -1320($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1340($sp)
	lw $t2, -1340($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1336($sp)
	lw $t0, -1336($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1336($sp)
	lw $t1, ($t0)
	sw $t1, -1332($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1348($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1360($sp)
	lw $t2, -1360($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1356($sp)
	lw $t0, -1356($sp)
	lw $t1, ($t0)
	sw $t1, -1352($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1368($sp)
	lw $t2, -1368($sp)
	lw $t1, -1352($sp)
	add $t0, $t1, $t2
	sw $t0, -1364($sp)
	lw $t0, -1364($sp)
	lw $t1, -1348($sp)
	sw $t1, ($t0)
	lw $t0, -1364($sp)
	lw $t1, ($t0)
	sw $t1, -1344($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1372($sp)
	lw $t0, -1372($sp)
	bne $t0, $0, L60
	b L58
L60:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1376($sp)
	lw $t0, -1376($sp)
	bne $t0, $0, L59
	b L58
L59:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1380($sp)
L58:
L54:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1396($sp)
	lw $t2, -1396($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1392($sp)
	lw $t0, -1392($sp)
	lw $t1, ($t0)
	sw $t1, -1388($sp)
	li $t2, 2
	lw $t1, -1388($sp)
	add $t0, $t1, $t2
	sw $t0, -1400($sp)
	lw $t0, -1400($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1384($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1416($sp)
	lw $t2, -1416($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1412($sp)
	lw $t0, -1412($sp)
	lw $t1, ($t0)
	sw $t1, -1408($sp)
	li $t2, 1
	lw $t1, -1408($sp)
	sub $t0, $t1, $t2
	sw $t0, -1420($sp)
	lw $t0, -1420($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1404($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1424($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1424($sp)
	seq $t0, $t1, $t2
	sw $t0, -1428($sp)
	lw $t0, -1428($sp)
	bne $t0, $0, L64
	b L61
L64:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1432($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1432($sp)
	seq $t0, $t1, $t2
	sw $t0, -1436($sp)
	lw $t0, -1436($sp)
	bne $t0, $0, L63
	b L61
L63:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1448($sp)
	lw $t2, -1448($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1444($sp)
	lw $t0, -1444($sp)
	lw $t1, ($t0)
	sw $t1, -1440($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1460($sp)
	lw $t2, -1460($sp)
	lw $t1, -1440($sp)
	add $t0, $t1, $t2
	sw $t0, -1456($sp)
	lw $t0, -1456($sp)
	lw $t1, ($t0)
	sw $t1, -1452($sp)
	li $t2, -1
	lw $t1, -1452($sp)
	seq $t0, $t1, $t2
	sw $t0, -1464($sp)
	lw $t0, -1464($sp)
	bne $t0, $0, L62
	b L61
L62:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1472($sp)
	lw $t0, -1472($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1468($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1484($sp)
	lw $t2, -1484($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1480($sp)
	lw $t0, -1480($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1480($sp)
	lw $t1, ($t0)
	sw $t1, -1476($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1496($sp)
	lw $t2, -1496($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1492($sp)
	lw $t0, -1492($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1492($sp)
	lw $t1, ($t0)
	sw $t1, -1488($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1504($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1516($sp)
	lw $t2, -1516($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1512($sp)
	lw $t0, -1512($sp)
	lw $t1, ($t0)
	sw $t1, -1508($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1524($sp)
	lw $t2, -1524($sp)
	lw $t1, -1508($sp)
	add $t0, $t1, $t2
	sw $t0, -1520($sp)
	lw $t0, -1520($sp)
	lw $t1, -1504($sp)
	sw $t1, ($t0)
	lw $t0, -1520($sp)
	lw $t1, ($t0)
	sw $t1, -1500($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1528($sp)
	lw $t0, -1528($sp)
	bne $t0, $0, L67
	b L65
L67:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1532($sp)
	lw $t0, -1532($sp)
	bne $t0, $0, L66
	b L65
L66:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1536($sp)
L65:
L61:
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1552($sp)
	lw $t2, -1552($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1548($sp)
	lw $t0, -1548($sp)
	lw $t1, ($t0)
	sw $t1, -1544($sp)
	li $t2, 2
	lw $t1, -1544($sp)
	add $t0, $t1, $t2
	sw $t0, -1556($sp)
	lw $t0, -1556($sp)
	sw $t0, -40($sp)
	lw $t0, -40($sp)
	sw $t0, -1540($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -1572($sp)
	lw $t2, -1572($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1568($sp)
	lw $t0, -1568($sp)
	lw $t1, ($t0)
	sw $t1, -1564($sp)
	li $t2, 1
	lw $t1, -1564($sp)
	add $t0, $t1, $t2
	sw $t0, -1576($sp)
	lw $t0, -1576($sp)
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	sw $t0, -1560($sp)
	lw $t0, -40($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1580($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1580($sp)
	seq $t0, $t1, $t2
	sw $t0, -1584($sp)
	lw $t0, -1584($sp)
	bne $t0, $0, L71
	b L68
L71:
	lw $t0, -44($sp)
	sw $t0, -1752($sp)
	lw $t0, -4($sp)
	sw $t0, -1756($sp)
	subu $sp, $sp, 1760
	jal _check
	addi $sp, $sp, 1760
	sw $v0, -1588($sp)
	lw $ra, ($sp)
	li $t2, 1
	lw $t1, -1588($sp)
	seq $t0, $t1, $t2
	sw $t0, -1592($sp)
	lw $t0, -1592($sp)
	bne $t0, $0, L70
	b L68
L70:
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1604($sp)
	lw $t2, -1604($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1600($sp)
	lw $t0, -1600($sp)
	lw $t1, ($t0)
	sw $t1, -1596($sp)
	li $t2, 4
	lw $t1, -44($sp)
	mul $t0, $t1, $t2
	sw $t0, -1616($sp)
	lw $t2, -1616($sp)
	lw $t1, -1596($sp)
	add $t0, $t1, $t2
	sw $t0, -1612($sp)
	lw $t0, -1612($sp)
	lw $t1, ($t0)
	sw $t1, -1608($sp)
	li $t2, -1
	lw $t1, -1608($sp)
	seq $t0, $t1, $t2
	sw $t0, -1620($sp)
	lw $t0, -1620($sp)
	bne $t0, $0, L69
	b L68
L69:
	li $t2, 1
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -1628($sp)
	lw $t0, -1628($sp)
	sw $t0, -28($sp)
	lw $t0, -28($sp)
	sw $t0, -1624($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1640($sp)
	lw $t2, -1640($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -1636($sp)
	lw $t0, -1636($sp)
	lw $t1, -40($sp)
	sw $t1, ($t0)
	lw $t0, -1636($sp)
	lw $t1, ($t0)
	sw $t1, -1632($sp)
	lw $t2, -28($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1652($sp)
	lw $t2, -1652($sp)
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -1648($sp)
	lw $t0, -1648($sp)
	lw $t1, -44($sp)
	sw $t1, ($t0)
	lw $t0, -1648($sp)
	lw $t1, ($t0)
	sw $t1, -1644($sp)
	li $t2, 1
	lw $t1, -36($sp)
	add $t0, $t1, $t2
	sw $t0, -1660($sp)
	li $t2, 4
	lw $t1, -40($sp)
	mul $t0, $t1, $t2
	sw $t0, -1672($sp)
	lw $t2, -1672($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1668($sp)
	lw $t0, -1668($sp)
	lw $t1, ($t0)
	sw $t1, -1664($sp)
	lw $t2, -44($sp)
	li $t1, 4
	mul $t0, $t1, $t2
	sw $t0, -1680($sp)
	lw $t2, -1680($sp)
	lw $t1, -1664($sp)
	add $t0, $t1, $t2
	sw $t0, -1676($sp)
	lw $t0, -1676($sp)
	lw $t1, -1660($sp)
	sw $t1, ($t0)
	lw $t0, -1676($sp)
	lw $t1, ($t0)
	sw $t1, -1656($sp)
	lw $t2, -20($sp)
	lw $t1, -40($sp)
	seq $t0, $t1, $t2
	sw $t0, -1684($sp)
	lw $t0, -1684($sp)
	bne $t0, $0, L74
	b L72
L74:
	lw $t2, -24($sp)
	lw $t1, -44($sp)
	seq $t0, $t1, $t2
	sw $t0, -1688($sp)
	lw $t0, -1688($sp)
	bne $t0, $0, L73
	b L72
L73:
	li $t0, 1
	sw $t0, -32($sp)
	lw $t0, -32($sp)
	sw $t0, -1692($sp)
L72:
L68:
	li $t2, 1
	lw $t1, -32($sp)
	seq $t0, $t1, $t2
	sw $t0, -1696($sp)
	lw $t0, -1696($sp)
	bne $t0, $0, L76
	b L75
L76:
	b L16
L75:
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -1704($sp)
	lw $t0, -1704($sp)
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -1700($sp)
	b L17
L16:
	li $t2, 1
	lw $t1, -32($sp)
	seq $t0, $t1, $t2
	sw $t0, -1708($sp)
	lw $t0, -1708($sp)
	bne $t0, $0, L78
	b L79
L78:
	li $t2, 4
	lw $t1, -20($sp)
	mul $t0, $t1, $t2
	sw $t0, -1724($sp)
	lw $t2, -1724($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -1720($sp)
	lw $t0, -1720($sp)
	lw $t1, ($t0)
	sw $t1, -1716($sp)
	li $t2, 4
	lw $t1, -24($sp)
	mul $t0, $t1, $t2
	sw $t0, -1736($sp)
	lw $t2, -1736($sp)
	lw $t1, -1716($sp)
	add $t0, $t1, $t2
	sw $t0, -1732($sp)
	lw $t0, -1732($sp)
	lw $t1, ($t0)
	sw $t1, -1728($sp)
	lw $t0, -1712($sp)
	sw $t0, -1752($sp)
	lw $t0, -1728($sp)
	sw $t0, -1756($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 1760
	jal _printf
	addi $sp, $sp, 1760
	sw $v0, -1740($sp)
	lw $ra, ($sp)
	b L77
L79:
	lw $t0, -1744($sp)
	sw $t0, -1752($sp)
	li $t0, 1
	sw $t0, _printf_cnt
	subu $sp, $sp, 1756
	jal _printf
	addi $sp, $sp, 1756
	sw $v0, -1748($sp)
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


.data
	_printf_cnt: .space 4
	_A: .space 4
	_B: .space 4
	_C: .space 4
	_i: .space 4
	str_1: .space 40
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	li $t0, 0
	sw $t0, _printf_cnt
	li $t0, 1
	sw $t0, _A
	li $t0, 1
	sw $t0, _B
	li $t0, 1
	sw $t0, _C
	li $t0, 37
	la $t1, str_1
	sw $t0, 0($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 4($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 8($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 12($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 16($t1)
	li $t0, 32
	la $t1, str_1
	sw $t0, 20($t1)
	li $t0, 37
	la $t1, str_1
	sw $t0, 24($t1)
	li $t0, 100
	la $t1, str_1
	sw $t0, 28($t1)
	li $t0, 10
	la $t1, str_1
	sw $t0, 32($t1)
	li $t0, 0
	la $t1, str_1
	sw $t0, 36($t1)
	j _main
_main:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -3048($sp)
L2:
	li $t2, 536870912
	lw $t1, _C
	slt $t0, $t1, $t2
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	bne $t0, $0, L4
	b L1
L4:
	li $t2, -536870912
	lw $t1, _C
	sgt $t0, $t1, $t2
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	bne $t0, $0, L3
	b L1
L3:
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t2, _B
	lw $t1, -16($sp)
	add $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t2, -24($sp)
	lw $t1, -20($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, _B
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -36($sp)
	sub $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t2, -44($sp)
	lw $t1, -28($sp)
	add $t0, $t1, $t2
	sw $t0, -48($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -52($sp)
	lw $t2, _B
	lw $t1, -52($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	sub $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t2, _B
	lw $t1, -68($sp)
	add $t0, $t1, $t2
	sw $t0, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -64($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	lw $t2, -76($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -80($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, _B
	lw $t1, -88($sp)
	add $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -96($sp)
	sub $t0, $t1, $t2
	sw $t0, -104($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t2, _B
	lw $t1, -108($sp)
	add $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t2, -116($sp)
	lw $t1, -112($sp)
	sub $t0, $t1, $t2
	sw $t0, -120($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t2, _B
	lw $t1, -124($sp)
	add $t0, $t1, $t2
	sw $t0, -128($sp)
	lw $t2, -128($sp)
	lw $t1, -120($sp)
	add $t0, $t1, $t2
	sw $t0, -132($sp)
	lw $t2, -132($sp)
	lw $t1, -104($sp)
	add $t0, $t1, $t2
	sw $t0, -136($sp)
	lw $t2, -136($sp)
	lw $t1, -80($sp)
	sub $t0, $t1, $t2
	sw $t0, -140($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -148($sp)
	lw $t2, _B
	lw $t1, -148($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t2, -152($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -156($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -160($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t2, _B
	lw $t1, -164($sp)
	add $t0, $t1, $t2
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -160($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -172($sp)
	lw $t1, -156($sp)
	sub $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -180($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -184($sp)
	lw $t2, _B
	lw $t1, -184($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t2, -188($sp)
	lw $t1, -180($sp)
	add $t0, $t1, $t2
	sw $t0, -192($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -196($sp)
	lw $t1, -192($sp)
	sub $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t2, -200($sp)
	lw $t1, -176($sp)
	sub $t0, $t1, $t2
	sw $t0, -204($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -208($sp)
	lw $t2, _B
	lw $t1, -208($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, -212($sp)
	sub $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t2, _B
	lw $t1, -224($sp)
	add $t0, $t1, $t2
	sw $t0, -228($sp)
	lw $t2, -228($sp)
	lw $t1, -220($sp)
	add $t0, $t1, $t2
	sw $t0, -232($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -240($sp)
	lw $t2, _B
	lw $t1, -240($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -244($sp)
	lw $t1, -236($sp)
	add $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -252($sp)
	lw $t2, -252($sp)
	lw $t1, -248($sp)
	sub $t0, $t1, $t2
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, -232($sp)
	sub $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t2, -260($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, -140($sp)
	sub $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t2, _B
	lw $t1, -272($sp)
	add $t0, $t1, $t2
	sw $t0, -276($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, -276($sp)
	sub $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -288($sp)
	lw $t2, _B
	lw $t1, -288($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t2, -296($sp)
	lw $t1, -292($sp)
	sub $t0, $t1, $t2
	sw $t0, -300($sp)
	lw $t2, -300($sp)
	lw $t1, -284($sp)
	add $t0, $t1, $t2
	sw $t0, -304($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t2, _B
	lw $t1, -308($sp)
	add $t0, $t1, $t2
	sw $t0, -312($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t2, -316($sp)
	lw $t1, -312($sp)
	sub $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -324($sp)
	lw $t2, _B
	lw $t1, -324($sp)
	add $t0, $t1, $t2
	sw $t0, -328($sp)
	lw $t2, -328($sp)
	lw $t1, -320($sp)
	add $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t2, -332($sp)
	lw $t1, -304($sp)
	add $t0, $t1, $t2
	sw $t0, -336($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -340($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t2, _B
	lw $t1, -344($sp)
	add $t0, $t1, $t2
	sw $t0, -348($sp)
	lw $t2, -348($sp)
	lw $t1, -340($sp)
	add $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -356($sp)
	lw $t2, -356($sp)
	lw $t1, -352($sp)
	sub $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t2, _B
	lw $t1, -364($sp)
	add $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t2, -372($sp)
	lw $t1, -368($sp)
	sub $t0, $t1, $t2
	sw $t0, -376($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -380($sp)
	lw $t2, _B
	lw $t1, -380($sp)
	add $t0, $t1, $t2
	sw $t0, -384($sp)
	lw $t2, -384($sp)
	lw $t1, -376($sp)
	add $t0, $t1, $t2
	sw $t0, -388($sp)
	lw $t2, -388($sp)
	lw $t1, -360($sp)
	add $t0, $t1, $t2
	sw $t0, -392($sp)
	lw $t2, -392($sp)
	lw $t1, -336($sp)
	sub $t0, $t1, $t2
	sw $t0, -396($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -400($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -404($sp)
	lw $t2, _B
	lw $t1, -404($sp)
	add $t0, $t1, $t2
	sw $t0, -408($sp)
	lw $t2, -408($sp)
	lw $t1, -400($sp)
	add $t0, $t1, $t2
	sw $t0, -412($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -416($sp)
	lw $t2, -416($sp)
	lw $t1, -412($sp)
	sub $t0, $t1, $t2
	sw $t0, -420($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t2, _B
	lw $t1, -424($sp)
	add $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -432($sp)
	lw $t2, -432($sp)
	lw $t1, -428($sp)
	sub $t0, $t1, $t2
	sw $t0, -436($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -440($sp)
	lw $t2, _B
	lw $t1, -440($sp)
	add $t0, $t1, $t2
	sw $t0, -444($sp)
	lw $t2, -444($sp)
	lw $t1, -436($sp)
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t2, -448($sp)
	lw $t1, -420($sp)
	add $t0, $t1, $t2
	sw $t0, -452($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -456($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t2, _B
	lw $t1, -460($sp)
	add $t0, $t1, $t2
	sw $t0, -464($sp)
	lw $t2, -464($sp)
	lw $t1, -456($sp)
	add $t0, $t1, $t2
	sw $t0, -468($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t2, -472($sp)
	lw $t1, -468($sp)
	sub $t0, $t1, $t2
	sw $t0, -476($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t2, _B
	lw $t1, -480($sp)
	add $t0, $t1, $t2
	sw $t0, -484($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -488($sp)
	lw $t2, -488($sp)
	lw $t1, -484($sp)
	sub $t0, $t1, $t2
	sw $t0, -492($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -496($sp)
	lw $t2, _B
	lw $t1, -496($sp)
	add $t0, $t1, $t2
	sw $t0, -500($sp)
	lw $t2, -500($sp)
	lw $t1, -492($sp)
	add $t0, $t1, $t2
	sw $t0, -504($sp)
	lw $t2, -504($sp)
	lw $t1, -476($sp)
	add $t0, $t1, $t2
	sw $t0, -508($sp)
	lw $t2, -508($sp)
	lw $t1, -452($sp)
	sub $t0, $t1, $t2
	sw $t0, -512($sp)
	lw $t2, -512($sp)
	lw $t1, -396($sp)
	sub $t0, $t1, $t2
	sw $t0, -516($sp)
	lw $t2, -516($sp)
	lw $t1, -268($sp)
	add $t0, $t1, $t2
	sw $t0, -520($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -524($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t2, _B
	lw $t1, -528($sp)
	add $t0, $t1, $t2
	sw $t0, -532($sp)
	lw $t2, -532($sp)
	lw $t1, -524($sp)
	add $t0, $t1, $t2
	sw $t0, -536($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -540($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t2, _B
	lw $t1, -544($sp)
	add $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t2, -548($sp)
	lw $t1, -540($sp)
	add $t0, $t1, $t2
	sw $t0, -552($sp)
	lw $t2, -552($sp)
	lw $t1, -536($sp)
	sub $t0, $t1, $t2
	sw $t0, -556($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -564($sp)
	lw $t2, _B
	lw $t1, -564($sp)
	add $t0, $t1, $t2
	sw $t0, -568($sp)
	lw $t2, -568($sp)
	lw $t1, -560($sp)
	add $t0, $t1, $t2
	sw $t0, -572($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t2, -576($sp)
	lw $t1, -572($sp)
	sub $t0, $t1, $t2
	sw $t0, -580($sp)
	lw $t2, -580($sp)
	lw $t1, -556($sp)
	sub $t0, $t1, $t2
	sw $t0, -584($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -588($sp)
	lw $t2, _B
	lw $t1, -588($sp)
	add $t0, $t1, $t2
	sw $t0, -592($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t2, -596($sp)
	lw $t1, -592($sp)
	sub $t0, $t1, $t2
	sw $t0, -600($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -604($sp)
	lw $t2, _B
	lw $t1, -604($sp)
	add $t0, $t1, $t2
	sw $t0, -608($sp)
	lw $t2, -608($sp)
	lw $t1, -600($sp)
	add $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -616($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t2, _B
	lw $t1, -620($sp)
	add $t0, $t1, $t2
	sw $t0, -624($sp)
	lw $t2, -624($sp)
	lw $t1, -616($sp)
	add $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -632($sp)
	lw $t2, -632($sp)
	lw $t1, -628($sp)
	sub $t0, $t1, $t2
	sw $t0, -636($sp)
	lw $t2, -636($sp)
	lw $t1, -612($sp)
	sub $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t2, -640($sp)
	lw $t1, -584($sp)
	add $t0, $t1, $t2
	sw $t0, -644($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t2, _B
	lw $t1, -648($sp)
	add $t0, $t1, $t2
	sw $t0, -652($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -656($sp)
	lw $t2, -656($sp)
	lw $t1, -652($sp)
	sub $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t2, _B
	lw $t1, -664($sp)
	add $t0, $t1, $t2
	sw $t0, -668($sp)
	lw $t2, -668($sp)
	lw $t1, -660($sp)
	add $t0, $t1, $t2
	sw $t0, -672($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -676($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -680($sp)
	lw $t2, _B
	lw $t1, -680($sp)
	add $t0, $t1, $t2
	sw $t0, -684($sp)
	lw $t2, -684($sp)
	lw $t1, -676($sp)
	add $t0, $t1, $t2
	sw $t0, -688($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -692($sp)
	lw $t2, -692($sp)
	lw $t1, -688($sp)
	sub $t0, $t1, $t2
	sw $t0, -696($sp)
	lw $t2, -696($sp)
	lw $t1, -672($sp)
	sub $t0, $t1, $t2
	sw $t0, -700($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -704($sp)
	lw $t2, _B
	lw $t1, -704($sp)
	add $t0, $t1, $t2
	sw $t0, -708($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t2, -712($sp)
	lw $t1, -708($sp)
	sub $t0, $t1, $t2
	sw $t0, -716($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -720($sp)
	lw $t2, _B
	lw $t1, -720($sp)
	add $t0, $t1, $t2
	sw $t0, -724($sp)
	lw $t2, -724($sp)
	lw $t1, -716($sp)
	add $t0, $t1, $t2
	sw $t0, -728($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -736($sp)
	lw $t2, _B
	lw $t1, -736($sp)
	add $t0, $t1, $t2
	sw $t0, -740($sp)
	lw $t2, -740($sp)
	lw $t1, -732($sp)
	add $t0, $t1, $t2
	sw $t0, -744($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -748($sp)
	lw $t2, -748($sp)
	lw $t1, -744($sp)
	sub $t0, $t1, $t2
	sw $t0, -752($sp)
	lw $t2, -752($sp)
	lw $t1, -728($sp)
	sub $t0, $t1, $t2
	sw $t0, -756($sp)
	lw $t2, -756($sp)
	lw $t1, -700($sp)
	add $t0, $t1, $t2
	sw $t0, -760($sp)
	lw $t2, -760($sp)
	lw $t1, -644($sp)
	add $t0, $t1, $t2
	sw $t0, -764($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -768($sp)
	lw $t2, _B
	lw $t1, -768($sp)
	add $t0, $t1, $t2
	sw $t0, -772($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -776($sp)
	lw $t2, -776($sp)
	lw $t1, -772($sp)
	sub $t0, $t1, $t2
	sw $t0, -780($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -784($sp)
	lw $t2, _B
	lw $t1, -784($sp)
	add $t0, $t1, $t2
	sw $t0, -788($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -792($sp)
	lw $t2, -792($sp)
	lw $t1, -788($sp)
	sub $t0, $t1, $t2
	sw $t0, -796($sp)
	lw $t2, -796($sp)
	lw $t1, -780($sp)
	add $t0, $t1, $t2
	sw $t0, -800($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -804($sp)
	lw $t2, _B
	lw $t1, -804($sp)
	add $t0, $t1, $t2
	sw $t0, -808($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -812($sp)
	lw $t2, -812($sp)
	lw $t1, -808($sp)
	sub $t0, $t1, $t2
	sw $t0, -816($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t2, _B
	lw $t1, -820($sp)
	add $t0, $t1, $t2
	sw $t0, -824($sp)
	lw $t2, -824($sp)
	lw $t1, -816($sp)
	add $t0, $t1, $t2
	sw $t0, -828($sp)
	lw $t2, -828($sp)
	lw $t1, -800($sp)
	add $t0, $t1, $t2
	sw $t0, -832($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -836($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -840($sp)
	lw $t2, _B
	lw $t1, -840($sp)
	add $t0, $t1, $t2
	sw $t0, -844($sp)
	lw $t2, -844($sp)
	lw $t1, -836($sp)
	add $t0, $t1, $t2
	sw $t0, -848($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -852($sp)
	lw $t2, -852($sp)
	lw $t1, -848($sp)
	sub $t0, $t1, $t2
	sw $t0, -856($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t2, _B
	lw $t1, -860($sp)
	add $t0, $t1, $t2
	sw $t0, -864($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -868($sp)
	lw $t2, -868($sp)
	lw $t1, -864($sp)
	sub $t0, $t1, $t2
	sw $t0, -872($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -876($sp)
	lw $t2, _B
	lw $t1, -876($sp)
	add $t0, $t1, $t2
	sw $t0, -880($sp)
	lw $t2, -880($sp)
	lw $t1, -872($sp)
	add $t0, $t1, $t2
	sw $t0, -884($sp)
	lw $t2, -884($sp)
	lw $t1, -856($sp)
	add $t0, $t1, $t2
	sw $t0, -888($sp)
	lw $t2, -888($sp)
	lw $t1, -832($sp)
	sub $t0, $t1, $t2
	sw $t0, -892($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -896($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -900($sp)
	lw $t2, _B
	lw $t1, -900($sp)
	add $t0, $t1, $t2
	sw $t0, -904($sp)
	lw $t2, -904($sp)
	lw $t1, -896($sp)
	add $t0, $t1, $t2
	sw $t0, -908($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -912($sp)
	lw $t2, -912($sp)
	lw $t1, -908($sp)
	sub $t0, $t1, $t2
	sw $t0, -916($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -920($sp)
	lw $t2, _B
	lw $t1, -920($sp)
	add $t0, $t1, $t2
	sw $t0, -924($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -928($sp)
	lw $t2, -928($sp)
	lw $t1, -924($sp)
	sub $t0, $t1, $t2
	sw $t0, -932($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -936($sp)
	lw $t2, _B
	lw $t1, -936($sp)
	add $t0, $t1, $t2
	sw $t0, -940($sp)
	lw $t2, -940($sp)
	lw $t1, -932($sp)
	add $t0, $t1, $t2
	sw $t0, -944($sp)
	lw $t2, -944($sp)
	lw $t1, -916($sp)
	add $t0, $t1, $t2
	sw $t0, -948($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -952($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -956($sp)
	lw $t2, _B
	lw $t1, -956($sp)
	add $t0, $t1, $t2
	sw $t0, -960($sp)
	lw $t2, -960($sp)
	lw $t1, -952($sp)
	add $t0, $t1, $t2
	sw $t0, -964($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -968($sp)
	lw $t2, -968($sp)
	lw $t1, -964($sp)
	sub $t0, $t1, $t2
	sw $t0, -972($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -976($sp)
	lw $t2, _B
	lw $t1, -976($sp)
	add $t0, $t1, $t2
	sw $t0, -980($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -984($sp)
	lw $t2, -984($sp)
	lw $t1, -980($sp)
	sub $t0, $t1, $t2
	sw $t0, -988($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -992($sp)
	lw $t2, _B
	lw $t1, -992($sp)
	add $t0, $t1, $t2
	sw $t0, -996($sp)
	lw $t2, -996($sp)
	lw $t1, -988($sp)
	add $t0, $t1, $t2
	sw $t0, -1000($sp)
	lw $t2, -1000($sp)
	lw $t1, -972($sp)
	add $t0, $t1, $t2
	sw $t0, -1004($sp)
	lw $t2, -1004($sp)
	lw $t1, -948($sp)
	sub $t0, $t1, $t2
	sw $t0, -1008($sp)
	lw $t2, -1008($sp)
	lw $t1, -892($sp)
	sub $t0, $t1, $t2
	sw $t0, -1012($sp)
	lw $t2, -1012($sp)
	lw $t1, -764($sp)
	add $t0, $t1, $t2
	sw $t0, -1016($sp)
	lw $t2, -1016($sp)
	lw $t1, -520($sp)
	sub $t0, $t1, $t2
	sw $t0, -1020($sp)
	lw $t0, -1020($sp)
	sw $t0, _A
	lw $t0, _A
	sw $t0, -12($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1028($sp)
	lw $t2, _B
	lw $t1, -1028($sp)
	add $t0, $t1, $t2
	sw $t0, -1032($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1036($sp)
	lw $t2, -1036($sp)
	lw $t1, -1032($sp)
	sub $t0, $t1, $t2
	sw $t0, -1040($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1044($sp)
	lw $t2, _B
	lw $t1, -1044($sp)
	add $t0, $t1, $t2
	sw $t0, -1048($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1052($sp)
	lw $t2, -1052($sp)
	lw $t1, -1048($sp)
	sub $t0, $t1, $t2
	sw $t0, -1056($sp)
	lw $t2, -1056($sp)
	lw $t1, -1040($sp)
	add $t0, $t1, $t2
	sw $t0, -1060($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1064($sp)
	lw $t2, _B
	lw $t1, -1064($sp)
	add $t0, $t1, $t2
	sw $t0, -1068($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1072($sp)
	lw $t2, -1072($sp)
	lw $t1, -1068($sp)
	sub $t0, $t1, $t2
	sw $t0, -1076($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1080($sp)
	lw $t2, _B
	lw $t1, -1080($sp)
	add $t0, $t1, $t2
	sw $t0, -1084($sp)
	lw $t2, -1084($sp)
	lw $t1, -1076($sp)
	add $t0, $t1, $t2
	sw $t0, -1088($sp)
	lw $t2, -1088($sp)
	lw $t1, -1060($sp)
	add $t0, $t1, $t2
	sw $t0, -1092($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1096($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1100($sp)
	lw $t2, _B
	lw $t1, -1100($sp)
	add $t0, $t1, $t2
	sw $t0, -1104($sp)
	lw $t2, -1104($sp)
	lw $t1, -1096($sp)
	add $t0, $t1, $t2
	sw $t0, -1108($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1112($sp)
	lw $t2, -1112($sp)
	lw $t1, -1108($sp)
	sub $t0, $t1, $t2
	sw $t0, -1116($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1120($sp)
	lw $t2, _B
	lw $t1, -1120($sp)
	add $t0, $t1, $t2
	sw $t0, -1124($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1128($sp)
	lw $t2, -1128($sp)
	lw $t1, -1124($sp)
	sub $t0, $t1, $t2
	sw $t0, -1132($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1136($sp)
	lw $t2, _B
	lw $t1, -1136($sp)
	add $t0, $t1, $t2
	sw $t0, -1140($sp)
	lw $t2, -1140($sp)
	lw $t1, -1132($sp)
	add $t0, $t1, $t2
	sw $t0, -1144($sp)
	lw $t2, -1144($sp)
	lw $t1, -1116($sp)
	add $t0, $t1, $t2
	sw $t0, -1148($sp)
	lw $t2, -1148($sp)
	lw $t1, -1092($sp)
	sub $t0, $t1, $t2
	sw $t0, -1152($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1156($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1160($sp)
	lw $t2, _B
	lw $t1, -1160($sp)
	add $t0, $t1, $t2
	sw $t0, -1164($sp)
	lw $t2, -1164($sp)
	lw $t1, -1156($sp)
	add $t0, $t1, $t2
	sw $t0, -1168($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1172($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1176($sp)
	lw $t2, _B
	lw $t1, -1176($sp)
	add $t0, $t1, $t2
	sw $t0, -1180($sp)
	lw $t2, -1180($sp)
	lw $t1, -1172($sp)
	add $t0, $t1, $t2
	sw $t0, -1184($sp)
	lw $t2, -1184($sp)
	lw $t1, -1168($sp)
	sub $t0, $t1, $t2
	sw $t0, -1188($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1192($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1196($sp)
	lw $t2, _B
	lw $t1, -1196($sp)
	add $t0, $t1, $t2
	sw $t0, -1200($sp)
	lw $t2, -1200($sp)
	lw $t1, -1192($sp)
	add $t0, $t1, $t2
	sw $t0, -1204($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1208($sp)
	lw $t2, -1208($sp)
	lw $t1, -1204($sp)
	sub $t0, $t1, $t2
	sw $t0, -1212($sp)
	lw $t2, -1212($sp)
	lw $t1, -1188($sp)
	sub $t0, $t1, $t2
	sw $t0, -1216($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1220($sp)
	lw $t2, _B
	lw $t1, -1220($sp)
	add $t0, $t1, $t2
	sw $t0, -1224($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1228($sp)
	lw $t2, -1228($sp)
	lw $t1, -1224($sp)
	sub $t0, $t1, $t2
	sw $t0, -1232($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1236($sp)
	lw $t2, _B
	lw $t1, -1236($sp)
	add $t0, $t1, $t2
	sw $t0, -1240($sp)
	lw $t2, -1240($sp)
	lw $t1, -1232($sp)
	add $t0, $t1, $t2
	sw $t0, -1244($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1248($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1252($sp)
	lw $t2, _B
	lw $t1, -1252($sp)
	add $t0, $t1, $t2
	sw $t0, -1256($sp)
	lw $t2, -1256($sp)
	lw $t1, -1248($sp)
	add $t0, $t1, $t2
	sw $t0, -1260($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1264($sp)
	lw $t2, -1264($sp)
	lw $t1, -1260($sp)
	sub $t0, $t1, $t2
	sw $t0, -1268($sp)
	lw $t2, -1268($sp)
	lw $t1, -1244($sp)
	sub $t0, $t1, $t2
	sw $t0, -1272($sp)
	lw $t2, -1272($sp)
	lw $t1, -1216($sp)
	add $t0, $t1, $t2
	sw $t0, -1276($sp)
	lw $t2, -1276($sp)
	lw $t1, -1152($sp)
	sub $t0, $t1, $t2
	sw $t0, -1280($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1284($sp)
	lw $t2, _B
	lw $t1, -1284($sp)
	add $t0, $t1, $t2
	sw $t0, -1288($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1292($sp)
	lw $t2, -1292($sp)
	lw $t1, -1288($sp)
	sub $t0, $t1, $t2
	sw $t0, -1296($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1300($sp)
	lw $t2, _B
	lw $t1, -1300($sp)
	add $t0, $t1, $t2
	sw $t0, -1304($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1308($sp)
	lw $t2, -1308($sp)
	lw $t1, -1304($sp)
	sub $t0, $t1, $t2
	sw $t0, -1312($sp)
	lw $t2, -1312($sp)
	lw $t1, -1296($sp)
	add $t0, $t1, $t2
	sw $t0, -1316($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1320($sp)
	lw $t2, _B
	lw $t1, -1320($sp)
	add $t0, $t1, $t2
	sw $t0, -1324($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1328($sp)
	lw $t2, -1328($sp)
	lw $t1, -1324($sp)
	sub $t0, $t1, $t2
	sw $t0, -1332($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1336($sp)
	lw $t2, _B
	lw $t1, -1336($sp)
	add $t0, $t1, $t2
	sw $t0, -1340($sp)
	lw $t2, -1340($sp)
	lw $t1, -1332($sp)
	add $t0, $t1, $t2
	sw $t0, -1344($sp)
	lw $t2, -1344($sp)
	lw $t1, -1316($sp)
	add $t0, $t1, $t2
	sw $t0, -1348($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1352($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1356($sp)
	lw $t2, _B
	lw $t1, -1356($sp)
	add $t0, $t1, $t2
	sw $t0, -1360($sp)
	lw $t2, -1360($sp)
	lw $t1, -1352($sp)
	add $t0, $t1, $t2
	sw $t0, -1364($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1368($sp)
	lw $t2, -1368($sp)
	lw $t1, -1364($sp)
	sub $t0, $t1, $t2
	sw $t0, -1372($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1376($sp)
	lw $t2, _B
	lw $t1, -1376($sp)
	add $t0, $t1, $t2
	sw $t0, -1380($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1384($sp)
	lw $t2, -1384($sp)
	lw $t1, -1380($sp)
	sub $t0, $t1, $t2
	sw $t0, -1388($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1392($sp)
	lw $t2, _B
	lw $t1, -1392($sp)
	add $t0, $t1, $t2
	sw $t0, -1396($sp)
	lw $t2, -1396($sp)
	lw $t1, -1388($sp)
	add $t0, $t1, $t2
	sw $t0, -1400($sp)
	lw $t2, -1400($sp)
	lw $t1, -1372($sp)
	add $t0, $t1, $t2
	sw $t0, -1404($sp)
	lw $t2, -1404($sp)
	lw $t1, -1348($sp)
	sub $t0, $t1, $t2
	sw $t0, -1408($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1412($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1416($sp)
	lw $t2, _B
	lw $t1, -1416($sp)
	add $t0, $t1, $t2
	sw $t0, -1420($sp)
	lw $t2, -1420($sp)
	lw $t1, -1412($sp)
	add $t0, $t1, $t2
	sw $t0, -1424($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1428($sp)
	lw $t2, -1428($sp)
	lw $t1, -1424($sp)
	sub $t0, $t1, $t2
	sw $t0, -1432($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1436($sp)
	lw $t2, _B
	lw $t1, -1436($sp)
	add $t0, $t1, $t2
	sw $t0, -1440($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1444($sp)
	lw $t2, -1444($sp)
	lw $t1, -1440($sp)
	sub $t0, $t1, $t2
	sw $t0, -1448($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1452($sp)
	lw $t2, _B
	lw $t1, -1452($sp)
	add $t0, $t1, $t2
	sw $t0, -1456($sp)
	lw $t2, -1456($sp)
	lw $t1, -1448($sp)
	add $t0, $t1, $t2
	sw $t0, -1460($sp)
	lw $t2, -1460($sp)
	lw $t1, -1432($sp)
	add $t0, $t1, $t2
	sw $t0, -1464($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1468($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1472($sp)
	lw $t2, _B
	lw $t1, -1472($sp)
	add $t0, $t1, $t2
	sw $t0, -1476($sp)
	lw $t2, -1476($sp)
	lw $t1, -1468($sp)
	add $t0, $t1, $t2
	sw $t0, -1480($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1484($sp)
	lw $t2, -1484($sp)
	lw $t1, -1480($sp)
	sub $t0, $t1, $t2
	sw $t0, -1488($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1492($sp)
	lw $t2, _B
	lw $t1, -1492($sp)
	add $t0, $t1, $t2
	sw $t0, -1496($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1500($sp)
	lw $t2, -1500($sp)
	lw $t1, -1496($sp)
	sub $t0, $t1, $t2
	sw $t0, -1504($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1508($sp)
	lw $t2, _B
	lw $t1, -1508($sp)
	add $t0, $t1, $t2
	sw $t0, -1512($sp)
	lw $t2, -1512($sp)
	lw $t1, -1504($sp)
	add $t0, $t1, $t2
	sw $t0, -1516($sp)
	lw $t2, -1516($sp)
	lw $t1, -1488($sp)
	add $t0, $t1, $t2
	sw $t0, -1520($sp)
	lw $t2, -1520($sp)
	lw $t1, -1464($sp)
	sub $t0, $t1, $t2
	sw $t0, -1524($sp)
	lw $t2, -1524($sp)
	lw $t1, -1408($sp)
	sub $t0, $t1, $t2
	sw $t0, -1528($sp)
	lw $t2, -1528($sp)
	lw $t1, -1280($sp)
	add $t0, $t1, $t2
	sw $t0, -1532($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1536($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1540($sp)
	lw $t2, _B
	lw $t1, -1540($sp)
	add $t0, $t1, $t2
	sw $t0, -1544($sp)
	lw $t2, -1544($sp)
	lw $t1, -1536($sp)
	add $t0, $t1, $t2
	sw $t0, -1548($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1552($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1556($sp)
	lw $t2, _B
	lw $t1, -1556($sp)
	add $t0, $t1, $t2
	sw $t0, -1560($sp)
	lw $t2, -1560($sp)
	lw $t1, -1552($sp)
	add $t0, $t1, $t2
	sw $t0, -1564($sp)
	lw $t2, -1564($sp)
	lw $t1, -1548($sp)
	sub $t0, $t1, $t2
	sw $t0, -1568($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1572($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1576($sp)
	lw $t2, _B
	lw $t1, -1576($sp)
	add $t0, $t1, $t2
	sw $t0, -1580($sp)
	lw $t2, -1580($sp)
	lw $t1, -1572($sp)
	add $t0, $t1, $t2
	sw $t0, -1584($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1588($sp)
	lw $t2, -1588($sp)
	lw $t1, -1584($sp)
	sub $t0, $t1, $t2
	sw $t0, -1592($sp)
	lw $t2, -1592($sp)
	lw $t1, -1568($sp)
	sub $t0, $t1, $t2
	sw $t0, -1596($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1600($sp)
	lw $t2, _B
	lw $t1, -1600($sp)
	add $t0, $t1, $t2
	sw $t0, -1604($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1608($sp)
	lw $t2, -1608($sp)
	lw $t1, -1604($sp)
	sub $t0, $t1, $t2
	sw $t0, -1612($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1616($sp)
	lw $t2, _B
	lw $t1, -1616($sp)
	add $t0, $t1, $t2
	sw $t0, -1620($sp)
	lw $t2, -1620($sp)
	lw $t1, -1612($sp)
	add $t0, $t1, $t2
	sw $t0, -1624($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1628($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1632($sp)
	lw $t2, _B
	lw $t1, -1632($sp)
	add $t0, $t1, $t2
	sw $t0, -1636($sp)
	lw $t2, -1636($sp)
	lw $t1, -1628($sp)
	add $t0, $t1, $t2
	sw $t0, -1640($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1644($sp)
	lw $t2, -1644($sp)
	lw $t1, -1640($sp)
	sub $t0, $t1, $t2
	sw $t0, -1648($sp)
	lw $t2, -1648($sp)
	lw $t1, -1624($sp)
	sub $t0, $t1, $t2
	sw $t0, -1652($sp)
	lw $t2, -1652($sp)
	lw $t1, -1596($sp)
	add $t0, $t1, $t2
	sw $t0, -1656($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1660($sp)
	lw $t2, _B
	lw $t1, -1660($sp)
	add $t0, $t1, $t2
	sw $t0, -1664($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1668($sp)
	lw $t2, -1668($sp)
	lw $t1, -1664($sp)
	sub $t0, $t1, $t2
	sw $t0, -1672($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1676($sp)
	lw $t2, _B
	lw $t1, -1676($sp)
	add $t0, $t1, $t2
	sw $t0, -1680($sp)
	lw $t2, -1680($sp)
	lw $t1, -1672($sp)
	add $t0, $t1, $t2
	sw $t0, -1684($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1688($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1692($sp)
	lw $t2, _B
	lw $t1, -1692($sp)
	add $t0, $t1, $t2
	sw $t0, -1696($sp)
	lw $t2, -1696($sp)
	lw $t1, -1688($sp)
	add $t0, $t1, $t2
	sw $t0, -1700($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1704($sp)
	lw $t2, -1704($sp)
	lw $t1, -1700($sp)
	sub $t0, $t1, $t2
	sw $t0, -1708($sp)
	lw $t2, -1708($sp)
	lw $t1, -1684($sp)
	sub $t0, $t1, $t2
	sw $t0, -1712($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1716($sp)
	lw $t2, _B
	lw $t1, -1716($sp)
	add $t0, $t1, $t2
	sw $t0, -1720($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1724($sp)
	lw $t2, -1724($sp)
	lw $t1, -1720($sp)
	sub $t0, $t1, $t2
	sw $t0, -1728($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1732($sp)
	lw $t2, _B
	lw $t1, -1732($sp)
	add $t0, $t1, $t2
	sw $t0, -1736($sp)
	lw $t2, -1736($sp)
	lw $t1, -1728($sp)
	add $t0, $t1, $t2
	sw $t0, -1740($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1744($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1748($sp)
	lw $t2, _B
	lw $t1, -1748($sp)
	add $t0, $t1, $t2
	sw $t0, -1752($sp)
	lw $t2, -1752($sp)
	lw $t1, -1744($sp)
	add $t0, $t1, $t2
	sw $t0, -1756($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1760($sp)
	lw $t2, -1760($sp)
	lw $t1, -1756($sp)
	sub $t0, $t1, $t2
	sw $t0, -1764($sp)
	lw $t2, -1764($sp)
	lw $t1, -1740($sp)
	sub $t0, $t1, $t2
	sw $t0, -1768($sp)
	lw $t2, -1768($sp)
	lw $t1, -1712($sp)
	add $t0, $t1, $t2
	sw $t0, -1772($sp)
	lw $t2, -1772($sp)
	lw $t1, -1656($sp)
	add $t0, $t1, $t2
	sw $t0, -1776($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1780($sp)
	lw $t2, _B
	lw $t1, -1780($sp)
	add $t0, $t1, $t2
	sw $t0, -1784($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1788($sp)
	lw $t2, -1788($sp)
	lw $t1, -1784($sp)
	sub $t0, $t1, $t2
	sw $t0, -1792($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1796($sp)
	lw $t2, _B
	lw $t1, -1796($sp)
	add $t0, $t1, $t2
	sw $t0, -1800($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1804($sp)
	lw $t2, -1804($sp)
	lw $t1, -1800($sp)
	sub $t0, $t1, $t2
	sw $t0, -1808($sp)
	lw $t2, -1808($sp)
	lw $t1, -1792($sp)
	add $t0, $t1, $t2
	sw $t0, -1812($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1816($sp)
	lw $t2, _B
	lw $t1, -1816($sp)
	add $t0, $t1, $t2
	sw $t0, -1820($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1824($sp)
	lw $t2, -1824($sp)
	lw $t1, -1820($sp)
	sub $t0, $t1, $t2
	sw $t0, -1828($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1832($sp)
	lw $t2, _B
	lw $t1, -1832($sp)
	add $t0, $t1, $t2
	sw $t0, -1836($sp)
	lw $t2, -1836($sp)
	lw $t1, -1828($sp)
	add $t0, $t1, $t2
	sw $t0, -1840($sp)
	lw $t2, -1840($sp)
	lw $t1, -1812($sp)
	add $t0, $t1, $t2
	sw $t0, -1844($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1848($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1852($sp)
	lw $t2, _B
	lw $t1, -1852($sp)
	add $t0, $t1, $t2
	sw $t0, -1856($sp)
	lw $t2, -1856($sp)
	lw $t1, -1848($sp)
	add $t0, $t1, $t2
	sw $t0, -1860($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1864($sp)
	lw $t2, -1864($sp)
	lw $t1, -1860($sp)
	sub $t0, $t1, $t2
	sw $t0, -1868($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1872($sp)
	lw $t2, _B
	lw $t1, -1872($sp)
	add $t0, $t1, $t2
	sw $t0, -1876($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1880($sp)
	lw $t2, -1880($sp)
	lw $t1, -1876($sp)
	sub $t0, $t1, $t2
	sw $t0, -1884($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1888($sp)
	lw $t2, _B
	lw $t1, -1888($sp)
	add $t0, $t1, $t2
	sw $t0, -1892($sp)
	lw $t2, -1892($sp)
	lw $t1, -1884($sp)
	add $t0, $t1, $t2
	sw $t0, -1896($sp)
	lw $t2, -1896($sp)
	lw $t1, -1868($sp)
	add $t0, $t1, $t2
	sw $t0, -1900($sp)
	lw $t2, -1900($sp)
	lw $t1, -1844($sp)
	sub $t0, $t1, $t2
	sw $t0, -1904($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1908($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1912($sp)
	lw $t2, _B
	lw $t1, -1912($sp)
	add $t0, $t1, $t2
	sw $t0, -1916($sp)
	lw $t2, -1916($sp)
	lw $t1, -1908($sp)
	add $t0, $t1, $t2
	sw $t0, -1920($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1924($sp)
	lw $t2, -1924($sp)
	lw $t1, -1920($sp)
	sub $t0, $t1, $t2
	sw $t0, -1928($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1932($sp)
	lw $t2, _B
	lw $t1, -1932($sp)
	add $t0, $t1, $t2
	sw $t0, -1936($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1940($sp)
	lw $t2, -1940($sp)
	lw $t1, -1936($sp)
	sub $t0, $t1, $t2
	sw $t0, -1944($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1948($sp)
	lw $t2, _B
	lw $t1, -1948($sp)
	add $t0, $t1, $t2
	sw $t0, -1952($sp)
	lw $t2, -1952($sp)
	lw $t1, -1944($sp)
	add $t0, $t1, $t2
	sw $t0, -1956($sp)
	lw $t2, -1956($sp)
	lw $t1, -1928($sp)
	add $t0, $t1, $t2
	sw $t0, -1960($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1964($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1968($sp)
	lw $t2, _B
	lw $t1, -1968($sp)
	add $t0, $t1, $t2
	sw $t0, -1972($sp)
	lw $t2, -1972($sp)
	lw $t1, -1964($sp)
	add $t0, $t1, $t2
	sw $t0, -1976($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1980($sp)
	lw $t2, -1980($sp)
	lw $t1, -1976($sp)
	sub $t0, $t1, $t2
	sw $t0, -1984($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -1988($sp)
	lw $t2, _B
	lw $t1, -1988($sp)
	add $t0, $t1, $t2
	sw $t0, -1992($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -1996($sp)
	lw $t2, -1996($sp)
	lw $t1, -1992($sp)
	sub $t0, $t1, $t2
	sw $t0, -2000($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2004($sp)
	lw $t2, _B
	lw $t1, -2004($sp)
	add $t0, $t1, $t2
	sw $t0, -2008($sp)
	lw $t2, -2008($sp)
	lw $t1, -2000($sp)
	add $t0, $t1, $t2
	sw $t0, -2012($sp)
	lw $t2, -2012($sp)
	lw $t1, -1984($sp)
	add $t0, $t1, $t2
	sw $t0, -2016($sp)
	lw $t2, -2016($sp)
	lw $t1, -1960($sp)
	sub $t0, $t1, $t2
	sw $t0, -2020($sp)
	lw $t2, -2020($sp)
	lw $t1, -1904($sp)
	sub $t0, $t1, $t2
	sw $t0, -2024($sp)
	lw $t2, -2024($sp)
	lw $t1, -1776($sp)
	add $t0, $t1, $t2
	sw $t0, -2028($sp)
	lw $t2, -2028($sp)
	lw $t1, -1532($sp)
	sub $t0, $t1, $t2
	sw $t0, -2032($sp)
	lw $t0, -2032($sp)
	sw $t0, _B
	lw $t0, _B
	sw $t0, -1024($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2040($sp)
	lw $t2, _B
	lw $t1, -2040($sp)
	add $t0, $t1, $t2
	sw $t0, -2044($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2048($sp)
	lw $t2, -2048($sp)
	lw $t1, -2044($sp)
	sub $t0, $t1, $t2
	sw $t0, -2052($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2056($sp)
	lw $t2, _B
	lw $t1, -2056($sp)
	add $t0, $t1, $t2
	sw $t0, -2060($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2064($sp)
	lw $t2, -2064($sp)
	lw $t1, -2060($sp)
	sub $t0, $t1, $t2
	sw $t0, -2068($sp)
	lw $t2, -2068($sp)
	lw $t1, -2052($sp)
	add $t0, $t1, $t2
	sw $t0, -2072($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2076($sp)
	lw $t2, _B
	lw $t1, -2076($sp)
	add $t0, $t1, $t2
	sw $t0, -2080($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2084($sp)
	lw $t2, -2084($sp)
	lw $t1, -2080($sp)
	sub $t0, $t1, $t2
	sw $t0, -2088($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2092($sp)
	lw $t2, _B
	lw $t1, -2092($sp)
	add $t0, $t1, $t2
	sw $t0, -2096($sp)
	lw $t2, -2096($sp)
	lw $t1, -2088($sp)
	add $t0, $t1, $t2
	sw $t0, -2100($sp)
	lw $t2, -2100($sp)
	lw $t1, -2072($sp)
	add $t0, $t1, $t2
	sw $t0, -2104($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2108($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2112($sp)
	lw $t2, _B
	lw $t1, -2112($sp)
	add $t0, $t1, $t2
	sw $t0, -2116($sp)
	lw $t2, -2116($sp)
	lw $t1, -2108($sp)
	add $t0, $t1, $t2
	sw $t0, -2120($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2124($sp)
	lw $t2, -2124($sp)
	lw $t1, -2120($sp)
	sub $t0, $t1, $t2
	sw $t0, -2128($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2132($sp)
	lw $t2, _B
	lw $t1, -2132($sp)
	add $t0, $t1, $t2
	sw $t0, -2136($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2140($sp)
	lw $t2, -2140($sp)
	lw $t1, -2136($sp)
	sub $t0, $t1, $t2
	sw $t0, -2144($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2148($sp)
	lw $t2, _B
	lw $t1, -2148($sp)
	add $t0, $t1, $t2
	sw $t0, -2152($sp)
	lw $t2, -2152($sp)
	lw $t1, -2144($sp)
	add $t0, $t1, $t2
	sw $t0, -2156($sp)
	lw $t2, -2156($sp)
	lw $t1, -2128($sp)
	add $t0, $t1, $t2
	sw $t0, -2160($sp)
	lw $t2, -2160($sp)
	lw $t1, -2104($sp)
	sub $t0, $t1, $t2
	sw $t0, -2164($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2168($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2172($sp)
	lw $t2, _B
	lw $t1, -2172($sp)
	add $t0, $t1, $t2
	sw $t0, -2176($sp)
	lw $t2, -2176($sp)
	lw $t1, -2168($sp)
	add $t0, $t1, $t2
	sw $t0, -2180($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2184($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2188($sp)
	lw $t2, _B
	lw $t1, -2188($sp)
	add $t0, $t1, $t2
	sw $t0, -2192($sp)
	lw $t2, -2192($sp)
	lw $t1, -2184($sp)
	add $t0, $t1, $t2
	sw $t0, -2196($sp)
	lw $t2, -2196($sp)
	lw $t1, -2180($sp)
	sub $t0, $t1, $t2
	sw $t0, -2200($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2204($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2208($sp)
	lw $t2, _B
	lw $t1, -2208($sp)
	add $t0, $t1, $t2
	sw $t0, -2212($sp)
	lw $t2, -2212($sp)
	lw $t1, -2204($sp)
	add $t0, $t1, $t2
	sw $t0, -2216($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2220($sp)
	lw $t2, -2220($sp)
	lw $t1, -2216($sp)
	sub $t0, $t1, $t2
	sw $t0, -2224($sp)
	lw $t2, -2224($sp)
	lw $t1, -2200($sp)
	sub $t0, $t1, $t2
	sw $t0, -2228($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2232($sp)
	lw $t2, _B
	lw $t1, -2232($sp)
	add $t0, $t1, $t2
	sw $t0, -2236($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2240($sp)
	lw $t2, -2240($sp)
	lw $t1, -2236($sp)
	sub $t0, $t1, $t2
	sw $t0, -2244($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2248($sp)
	lw $t2, _B
	lw $t1, -2248($sp)
	add $t0, $t1, $t2
	sw $t0, -2252($sp)
	lw $t2, -2252($sp)
	lw $t1, -2244($sp)
	add $t0, $t1, $t2
	sw $t0, -2256($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2260($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2264($sp)
	lw $t2, _B
	lw $t1, -2264($sp)
	add $t0, $t1, $t2
	sw $t0, -2268($sp)
	lw $t2, -2268($sp)
	lw $t1, -2260($sp)
	add $t0, $t1, $t2
	sw $t0, -2272($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2276($sp)
	lw $t2, -2276($sp)
	lw $t1, -2272($sp)
	sub $t0, $t1, $t2
	sw $t0, -2280($sp)
	lw $t2, -2280($sp)
	lw $t1, -2256($sp)
	sub $t0, $t1, $t2
	sw $t0, -2284($sp)
	lw $t2, -2284($sp)
	lw $t1, -2228($sp)
	add $t0, $t1, $t2
	sw $t0, -2288($sp)
	lw $t2, -2288($sp)
	lw $t1, -2164($sp)
	sub $t0, $t1, $t2
	sw $t0, -2292($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2296($sp)
	lw $t2, _B
	lw $t1, -2296($sp)
	add $t0, $t1, $t2
	sw $t0, -2300($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2304($sp)
	lw $t2, -2304($sp)
	lw $t1, -2300($sp)
	sub $t0, $t1, $t2
	sw $t0, -2308($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2312($sp)
	lw $t2, _B
	lw $t1, -2312($sp)
	add $t0, $t1, $t2
	sw $t0, -2316($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2320($sp)
	lw $t2, -2320($sp)
	lw $t1, -2316($sp)
	sub $t0, $t1, $t2
	sw $t0, -2324($sp)
	lw $t2, -2324($sp)
	lw $t1, -2308($sp)
	add $t0, $t1, $t2
	sw $t0, -2328($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2332($sp)
	lw $t2, _B
	lw $t1, -2332($sp)
	add $t0, $t1, $t2
	sw $t0, -2336($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2340($sp)
	lw $t2, -2340($sp)
	lw $t1, -2336($sp)
	sub $t0, $t1, $t2
	sw $t0, -2344($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2348($sp)
	lw $t2, _B
	lw $t1, -2348($sp)
	add $t0, $t1, $t2
	sw $t0, -2352($sp)
	lw $t2, -2352($sp)
	lw $t1, -2344($sp)
	add $t0, $t1, $t2
	sw $t0, -2356($sp)
	lw $t2, -2356($sp)
	lw $t1, -2328($sp)
	add $t0, $t1, $t2
	sw $t0, -2360($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2364($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2368($sp)
	lw $t2, _B
	lw $t1, -2368($sp)
	add $t0, $t1, $t2
	sw $t0, -2372($sp)
	lw $t2, -2372($sp)
	lw $t1, -2364($sp)
	add $t0, $t1, $t2
	sw $t0, -2376($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2380($sp)
	lw $t2, -2380($sp)
	lw $t1, -2376($sp)
	sub $t0, $t1, $t2
	sw $t0, -2384($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2388($sp)
	lw $t2, _B
	lw $t1, -2388($sp)
	add $t0, $t1, $t2
	sw $t0, -2392($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2396($sp)
	lw $t2, -2396($sp)
	lw $t1, -2392($sp)
	sub $t0, $t1, $t2
	sw $t0, -2400($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2404($sp)
	lw $t2, _B
	lw $t1, -2404($sp)
	add $t0, $t1, $t2
	sw $t0, -2408($sp)
	lw $t2, -2408($sp)
	lw $t1, -2400($sp)
	add $t0, $t1, $t2
	sw $t0, -2412($sp)
	lw $t2, -2412($sp)
	lw $t1, -2384($sp)
	add $t0, $t1, $t2
	sw $t0, -2416($sp)
	lw $t2, -2416($sp)
	lw $t1, -2360($sp)
	sub $t0, $t1, $t2
	sw $t0, -2420($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2424($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2428($sp)
	lw $t2, _B
	lw $t1, -2428($sp)
	add $t0, $t1, $t2
	sw $t0, -2432($sp)
	lw $t2, -2432($sp)
	lw $t1, -2424($sp)
	add $t0, $t1, $t2
	sw $t0, -2436($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2440($sp)
	lw $t2, -2440($sp)
	lw $t1, -2436($sp)
	sub $t0, $t1, $t2
	sw $t0, -2444($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2448($sp)
	lw $t2, _B
	lw $t1, -2448($sp)
	add $t0, $t1, $t2
	sw $t0, -2452($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2456($sp)
	lw $t2, -2456($sp)
	lw $t1, -2452($sp)
	sub $t0, $t1, $t2
	sw $t0, -2460($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2464($sp)
	lw $t2, _B
	lw $t1, -2464($sp)
	add $t0, $t1, $t2
	sw $t0, -2468($sp)
	lw $t2, -2468($sp)
	lw $t1, -2460($sp)
	add $t0, $t1, $t2
	sw $t0, -2472($sp)
	lw $t2, -2472($sp)
	lw $t1, -2444($sp)
	add $t0, $t1, $t2
	sw $t0, -2476($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2480($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2484($sp)
	lw $t2, _B
	lw $t1, -2484($sp)
	add $t0, $t1, $t2
	sw $t0, -2488($sp)
	lw $t2, -2488($sp)
	lw $t1, -2480($sp)
	add $t0, $t1, $t2
	sw $t0, -2492($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2496($sp)
	lw $t2, -2496($sp)
	lw $t1, -2492($sp)
	sub $t0, $t1, $t2
	sw $t0, -2500($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2504($sp)
	lw $t2, _B
	lw $t1, -2504($sp)
	add $t0, $t1, $t2
	sw $t0, -2508($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2512($sp)
	lw $t2, -2512($sp)
	lw $t1, -2508($sp)
	sub $t0, $t1, $t2
	sw $t0, -2516($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2520($sp)
	lw $t2, _B
	lw $t1, -2520($sp)
	add $t0, $t1, $t2
	sw $t0, -2524($sp)
	lw $t2, -2524($sp)
	lw $t1, -2516($sp)
	add $t0, $t1, $t2
	sw $t0, -2528($sp)
	lw $t2, -2528($sp)
	lw $t1, -2500($sp)
	add $t0, $t1, $t2
	sw $t0, -2532($sp)
	lw $t2, -2532($sp)
	lw $t1, -2476($sp)
	sub $t0, $t1, $t2
	sw $t0, -2536($sp)
	lw $t2, -2536($sp)
	lw $t1, -2420($sp)
	sub $t0, $t1, $t2
	sw $t0, -2540($sp)
	lw $t2, -2540($sp)
	lw $t1, -2292($sp)
	add $t0, $t1, $t2
	sw $t0, -2544($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2548($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2552($sp)
	lw $t2, _B
	lw $t1, -2552($sp)
	add $t0, $t1, $t2
	sw $t0, -2556($sp)
	lw $t2, -2556($sp)
	lw $t1, -2548($sp)
	add $t0, $t1, $t2
	sw $t0, -2560($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2564($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2568($sp)
	lw $t2, _B
	lw $t1, -2568($sp)
	add $t0, $t1, $t2
	sw $t0, -2572($sp)
	lw $t2, -2572($sp)
	lw $t1, -2564($sp)
	add $t0, $t1, $t2
	sw $t0, -2576($sp)
	lw $t2, -2576($sp)
	lw $t1, -2560($sp)
	sub $t0, $t1, $t2
	sw $t0, -2580($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2584($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2588($sp)
	lw $t2, _B
	lw $t1, -2588($sp)
	add $t0, $t1, $t2
	sw $t0, -2592($sp)
	lw $t2, -2592($sp)
	lw $t1, -2584($sp)
	add $t0, $t1, $t2
	sw $t0, -2596($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2600($sp)
	lw $t2, -2600($sp)
	lw $t1, -2596($sp)
	sub $t0, $t1, $t2
	sw $t0, -2604($sp)
	lw $t2, -2604($sp)
	lw $t1, -2580($sp)
	sub $t0, $t1, $t2
	sw $t0, -2608($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2612($sp)
	lw $t2, _B
	lw $t1, -2612($sp)
	add $t0, $t1, $t2
	sw $t0, -2616($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2620($sp)
	lw $t2, -2620($sp)
	lw $t1, -2616($sp)
	sub $t0, $t1, $t2
	sw $t0, -2624($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2628($sp)
	lw $t2, _B
	lw $t1, -2628($sp)
	add $t0, $t1, $t2
	sw $t0, -2632($sp)
	lw $t2, -2632($sp)
	lw $t1, -2624($sp)
	add $t0, $t1, $t2
	sw $t0, -2636($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2640($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2644($sp)
	lw $t2, _B
	lw $t1, -2644($sp)
	add $t0, $t1, $t2
	sw $t0, -2648($sp)
	lw $t2, -2648($sp)
	lw $t1, -2640($sp)
	add $t0, $t1, $t2
	sw $t0, -2652($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2656($sp)
	lw $t2, -2656($sp)
	lw $t1, -2652($sp)
	sub $t0, $t1, $t2
	sw $t0, -2660($sp)
	lw $t2, -2660($sp)
	lw $t1, -2636($sp)
	sub $t0, $t1, $t2
	sw $t0, -2664($sp)
	lw $t2, -2664($sp)
	lw $t1, -2608($sp)
	add $t0, $t1, $t2
	sw $t0, -2668($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2672($sp)
	lw $t2, _B
	lw $t1, -2672($sp)
	add $t0, $t1, $t2
	sw $t0, -2676($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2680($sp)
	lw $t2, -2680($sp)
	lw $t1, -2676($sp)
	sub $t0, $t1, $t2
	sw $t0, -2684($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2688($sp)
	lw $t2, _B
	lw $t1, -2688($sp)
	add $t0, $t1, $t2
	sw $t0, -2692($sp)
	lw $t2, -2692($sp)
	lw $t1, -2684($sp)
	add $t0, $t1, $t2
	sw $t0, -2696($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2700($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2704($sp)
	lw $t2, _B
	lw $t1, -2704($sp)
	add $t0, $t1, $t2
	sw $t0, -2708($sp)
	lw $t2, -2708($sp)
	lw $t1, -2700($sp)
	add $t0, $t1, $t2
	sw $t0, -2712($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2716($sp)
	lw $t2, -2716($sp)
	lw $t1, -2712($sp)
	sub $t0, $t1, $t2
	sw $t0, -2720($sp)
	lw $t2, -2720($sp)
	lw $t1, -2696($sp)
	sub $t0, $t1, $t2
	sw $t0, -2724($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2728($sp)
	lw $t2, _B
	lw $t1, -2728($sp)
	add $t0, $t1, $t2
	sw $t0, -2732($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2736($sp)
	lw $t2, -2736($sp)
	lw $t1, -2732($sp)
	sub $t0, $t1, $t2
	sw $t0, -2740($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2744($sp)
	lw $t2, _B
	lw $t1, -2744($sp)
	add $t0, $t1, $t2
	sw $t0, -2748($sp)
	lw $t2, -2748($sp)
	lw $t1, -2740($sp)
	add $t0, $t1, $t2
	sw $t0, -2752($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2756($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2760($sp)
	lw $t2, _B
	lw $t1, -2760($sp)
	add $t0, $t1, $t2
	sw $t0, -2764($sp)
	lw $t2, -2764($sp)
	lw $t1, -2756($sp)
	add $t0, $t1, $t2
	sw $t0, -2768($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2772($sp)
	lw $t2, -2772($sp)
	lw $t1, -2768($sp)
	sub $t0, $t1, $t2
	sw $t0, -2776($sp)
	lw $t2, -2776($sp)
	lw $t1, -2752($sp)
	sub $t0, $t1, $t2
	sw $t0, -2780($sp)
	lw $t2, -2780($sp)
	lw $t1, -2724($sp)
	add $t0, $t1, $t2
	sw $t0, -2784($sp)
	lw $t2, -2784($sp)
	lw $t1, -2668($sp)
	add $t0, $t1, $t2
	sw $t0, -2788($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2792($sp)
	lw $t2, _B
	lw $t1, -2792($sp)
	add $t0, $t1, $t2
	sw $t0, -2796($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2800($sp)
	lw $t2, -2800($sp)
	lw $t1, -2796($sp)
	sub $t0, $t1, $t2
	sw $t0, -2804($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2808($sp)
	lw $t2, _B
	lw $t1, -2808($sp)
	add $t0, $t1, $t2
	sw $t0, -2812($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2816($sp)
	lw $t2, -2816($sp)
	lw $t1, -2812($sp)
	sub $t0, $t1, $t2
	sw $t0, -2820($sp)
	lw $t2, -2820($sp)
	lw $t1, -2804($sp)
	add $t0, $t1, $t2
	sw $t0, -2824($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2828($sp)
	lw $t2, _B
	lw $t1, -2828($sp)
	add $t0, $t1, $t2
	sw $t0, -2832($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2836($sp)
	lw $t2, -2836($sp)
	lw $t1, -2832($sp)
	sub $t0, $t1, $t2
	sw $t0, -2840($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2844($sp)
	lw $t2, _B
	lw $t1, -2844($sp)
	add $t0, $t1, $t2
	sw $t0, -2848($sp)
	lw $t2, -2848($sp)
	lw $t1, -2840($sp)
	add $t0, $t1, $t2
	sw $t0, -2852($sp)
	lw $t2, -2852($sp)
	lw $t1, -2824($sp)
	add $t0, $t1, $t2
	sw $t0, -2856($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2860($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2864($sp)
	lw $t2, _B
	lw $t1, -2864($sp)
	add $t0, $t1, $t2
	sw $t0, -2868($sp)
	lw $t2, -2868($sp)
	lw $t1, -2860($sp)
	add $t0, $t1, $t2
	sw $t0, -2872($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2876($sp)
	lw $t2, -2876($sp)
	lw $t1, -2872($sp)
	sub $t0, $t1, $t2
	sw $t0, -2880($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2884($sp)
	lw $t2, _B
	lw $t1, -2884($sp)
	add $t0, $t1, $t2
	sw $t0, -2888($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2892($sp)
	lw $t2, -2892($sp)
	lw $t1, -2888($sp)
	sub $t0, $t1, $t2
	sw $t0, -2896($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2900($sp)
	lw $t2, _B
	lw $t1, -2900($sp)
	add $t0, $t1, $t2
	sw $t0, -2904($sp)
	lw $t2, -2904($sp)
	lw $t1, -2896($sp)
	add $t0, $t1, $t2
	sw $t0, -2908($sp)
	lw $t2, -2908($sp)
	lw $t1, -2880($sp)
	add $t0, $t1, $t2
	sw $t0, -2912($sp)
	lw $t2, -2912($sp)
	lw $t1, -2856($sp)
	sub $t0, $t1, $t2
	sw $t0, -2916($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2920($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2924($sp)
	lw $t2, _B
	lw $t1, -2924($sp)
	add $t0, $t1, $t2
	sw $t0, -2928($sp)
	lw $t2, -2928($sp)
	lw $t1, -2920($sp)
	add $t0, $t1, $t2
	sw $t0, -2932($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2936($sp)
	lw $t2, -2936($sp)
	lw $t1, -2932($sp)
	sub $t0, $t1, $t2
	sw $t0, -2940($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2944($sp)
	lw $t2, _B
	lw $t1, -2944($sp)
	add $t0, $t1, $t2
	sw $t0, -2948($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2952($sp)
	lw $t2, -2952($sp)
	lw $t1, -2948($sp)
	sub $t0, $t1, $t2
	sw $t0, -2956($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2960($sp)
	lw $t2, _B
	lw $t1, -2960($sp)
	add $t0, $t1, $t2
	sw $t0, -2964($sp)
	lw $t2, -2964($sp)
	lw $t1, -2956($sp)
	add $t0, $t1, $t2
	sw $t0, -2968($sp)
	lw $t2, -2968($sp)
	lw $t1, -2940($sp)
	add $t0, $t1, $t2
	sw $t0, -2972($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2976($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -2980($sp)
	lw $t2, _B
	lw $t1, -2980($sp)
	add $t0, $t1, $t2
	sw $t0, -2984($sp)
	lw $t2, -2984($sp)
	lw $t1, -2976($sp)
	add $t0, $t1, $t2
	sw $t0, -2988($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -2992($sp)
	lw $t2, -2992($sp)
	lw $t1, -2988($sp)
	sub $t0, $t1, $t2
	sw $t0, -2996($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -3000($sp)
	lw $t2, _B
	lw $t1, -3000($sp)
	add $t0, $t1, $t2
	sw $t0, -3004($sp)
	lw $t2, _B
	lw $t1, _A
	add $t0, $t1, $t2
	sw $t0, -3008($sp)
	lw $t2, -3008($sp)
	lw $t1, -3004($sp)
	sub $t0, $t1, $t2
	sw $t0, -3012($sp)
	lw $t2, _A
	lw $t1, _C
	sub $t0, $t1, $t2
	sw $t0, -3016($sp)
	lw $t2, _B
	lw $t1, -3016($sp)
	add $t0, $t1, $t2
	sw $t0, -3020($sp)
	lw $t2, -3020($sp)
	lw $t1, -3012($sp)
	add $t0, $t1, $t2
	sw $t0, -3024($sp)
	lw $t2, -3024($sp)
	lw $t1, -2996($sp)
	add $t0, $t1, $t2
	sw $t0, -3028($sp)
	lw $t2, -3028($sp)
	lw $t1, -2972($sp)
	sub $t0, $t1, $t2
	sw $t0, -3032($sp)
	lw $t2, -3032($sp)
	lw $t1, -2916($sp)
	sub $t0, $t1, $t2
	sw $t0, -3036($sp)
	lw $t2, -3036($sp)
	lw $t1, -2788($sp)
	add $t0, $t1, $t2
	sw $t0, -3040($sp)
	lw $t2, -3040($sp)
	lw $t1, -2544($sp)
	sub $t0, $t1, $t2
	sw $t0, -3044($sp)
	lw $t0, -3044($sp)
	sw $t0, _C
	lw $t0, _C
	sw $t0, -2036($sp)
	b L2
L1:
	lw $t0, -3048($sp)
	sw $t0, -3056($sp)
	lw $t0, _A
	sw $t0, -3060($sp)
	lw $t0, _B
	sw $t0, -3064($sp)
	lw $t0, _C
	sw $t0, -3068($sp)
	li $t0, 4
	sw $t0, _printf_cnt
	subu $sp, $sp, 3072
	jal _printf
	addi $sp, $sp, 3072
	sw $v0, -3052($sp)
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


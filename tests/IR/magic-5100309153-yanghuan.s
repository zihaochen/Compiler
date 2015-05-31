.data
	_printf_cnt: .space 4
	_make: .space 4
	_color: .space 4
	_count: .space 4
	_i: .space 4
	_j: .space 4
	ASU_1: .space 40
	ASU_2: .space 44
	ASU_3: .space 8
	str_1: .asciiz "%d"
	str_2: .asciiz "%c"
	str_3: .asciiz "%c"
	str_4: .asciiz "%c"
	str_5: .asciiz "%d\n"
.text
main:
	move $fp, $sp     # start using memory here
	move $gp, $sp     # set global pointer (unused)
	subu $sp, $sp, 4
	la $t0, ASU_1
	sw $t0, _make
	la $t0, ASU_2
	sw $t0, _color
	la $t0, ASU_3
	sw $t0, _count
	li $t0, 0
	sw $t0, _printf_cnt
	j _main
_search:
	sw $ra, ($sp)
	la $t0, str_1
	sw $t0, -356($sp)
	la $t0, str_2
	sw $t0, -384($sp)
	la $t0, str_3
	sw $t0, -396($sp)
	la $t0, str_4
	sw $t0, -408($sp)
	li $t2, 0
	lw $t1, 8($sp)
	sgt $t0, $t1, $t2
	sw $t0, -16($sp)
	lw $t0, -16($sp)
	bne $t0, $0, L2
	b L5
L5:
	li $t2, 0
	lw $t1, 8($sp)
	slt $t0, $t1, $t2
	sw $t0, -20($sp)
	lw $t0, -20($sp)
	bne $t0, $0, L2
	b L4
L4:
	li $t2, 0
	lw $t1, 12($sp)
	seq $t0, $t1, $t2
	sw $t0, -24($sp)
	lw $t0, -24($sp)
	bne $t0, $0, L2
	b L3
L3:
	li $t2, 1
	lw $t1, 12($sp)
	sub $t0, $t1, $t2
	sw $t0, -28($sp)
	li $t0, 0
	sw $t0, -32($sp)
	li $t2, 12
	lw $t1, -28($sp)
	mul $t0, $t1, $t2
	sw $t0, -36($sp)
	lw $t2, -36($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	li $t2, 4
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -40($sp)
	lw $t2, -40($sp)
	lw $t1, -32($sp)
	add $t0, $t1, $t2
	sw $t0, -32($sp)
	lw $t2, -32($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -44($sp)
	lw $t0, -44($sp)
	lw $t1, ($t0)
	sw $t1, -48($sp)
	li $t2, 1
	lw $t1, 12($sp)
	sub $t0, $t1, $t2
	sw $t0, -52($sp)
	li $t0, 0
	sw $t0, -56($sp)
	li $t2, 12
	lw $t1, -52($sp)
	mul $t0, $t1, $t2
	sw $t0, -60($sp)
	lw $t2, -60($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	li $t2, 4
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -64($sp)
	lw $t2, -64($sp)
	lw $t1, -56($sp)
	add $t0, $t1, $t2
	sw $t0, -56($sp)
	lw $t2, -56($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -68($sp)
	lw $t0, -68($sp)
	lw $t1, ($t0)
	sw $t1, -72($sp)
	lw $t2, -72($sp)
	lw $t1, -48($sp)
	add $t0, $t1, $t2
	sw $t0, -76($sp)
	li $t2, 1
	lw $t1, 12($sp)
	sub $t0, $t1, $t2
	sw $t0, -80($sp)
	li $t0, 0
	sw $t0, -84($sp)
	li $t2, 12
	lw $t1, -80($sp)
	mul $t0, $t1, $t2
	sw $t0, -88($sp)
	lw $t2, -88($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	li $t2, 4
	li $t1, 2
	mul $t0, $t1, $t2
	sw $t0, -92($sp)
	lw $t2, -92($sp)
	lw $t1, -84($sp)
	add $t0, $t1, $t2
	sw $t0, -84($sp)
	lw $t2, -84($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -96($sp)
	lw $t0, -96($sp)
	lw $t1, ($t0)
	sw $t1, -100($sp)
	lw $t2, -100($sp)
	lw $t1, -76($sp)
	add $t0, $t1, $t2
	sw $t0, -104($sp)
	li $t2, 15
	lw $t1, -104($sp)
	seq $t0, $t1, $t2
	sw $t0, -108($sp)
	lw $t0, -108($sp)
	bne $t0, $0, L2
	b L1
L2:
	li $t2, 2
	lw $t1, 12($sp)
	seq $t0, $t1, $t2
	sw $t0, -112($sp)
	lw $t0, -112($sp)
	bne $t0, $0, L9
	b L8
L9:
	li $t2, 2
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -116($sp)
	lw $t0, -116($sp)
	bne $t0, $0, L7
	b L8
L7:
	lw $t2, 4($sp)
	li $t1, 45
	sub $t0, $t1, $t2
	sw $t0, -124($sp)
	lw $t1, _make
	lw $t2, -124($sp)
	sw $t2, 32($t1)
	lw $t0, _make
	lw $t1, ($t0)
	sw $t1, -136($sp)
	lw $t1, _make
	lw $t0, 4($t1)
	sw $t0, -140($sp)
	lw $t2, -140($sp)
	lw $t1, -136($sp)
	add $t0, $t1, $t2
	sw $t0, -144($sp)
	lw $t1, _make
	lw $t0, 8($t1)
	sw $t0, -148($sp)
	lw $t2, -148($sp)
	lw $t1, -144($sp)
	add $t0, $t1, $t2
	sw $t0, -152($sp)
	lw $t0, -152($sp)
	sw $t0, -4($sp)
	lw $t0, -4($sp)
	sw $t0, -132($sp)
	lw $t1, _make
	lw $t0, 12($t1)
	sw $t0, -156($sp)
	lw $t1, _make
	lw $t0, 16($t1)
	sw $t0, -160($sp)
	lw $t2, -160($sp)
	lw $t1, -156($sp)
	add $t0, $t1, $t2
	sw $t0, -164($sp)
	lw $t1, _make
	lw $t0, 20($t1)
	sw $t0, -168($sp)
	lw $t2, -168($sp)
	lw $t1, -164($sp)
	add $t0, $t1, $t2
	sw $t0, -172($sp)
	lw $t2, -4($sp)
	lw $t1, -172($sp)
	seq $t0, $t1, $t2
	sw $t0, -176($sp)
	lw $t0, -176($sp)
	bne $t0, $0, L17
	b L10
L17:
	lw $t1, _make
	lw $t0, 24($t1)
	sw $t0, -180($sp)
	lw $t1, _make
	lw $t0, 28($t1)
	sw $t0, -184($sp)
	lw $t2, -184($sp)
	lw $t1, -180($sp)
	add $t0, $t1, $t2
	sw $t0, -188($sp)
	lw $t1, _make
	lw $t0, 32($t1)
	sw $t0, -192($sp)
	lw $t2, -192($sp)
	lw $t1, -188($sp)
	add $t0, $t1, $t2
	sw $t0, -196($sp)
	lw $t2, -4($sp)
	lw $t1, -196($sp)
	seq $t0, $t1, $t2
	sw $t0, -200($sp)
	lw $t0, -200($sp)
	bne $t0, $0, L16
	b L10
L16:
	lw $t0, _make
	lw $t1, ($t0)
	sw $t1, -204($sp)
	lw $t1, _make
	lw $t0, 12($t1)
	sw $t0, -208($sp)
	lw $t2, -208($sp)
	lw $t1, -204($sp)
	add $t0, $t1, $t2
	sw $t0, -212($sp)
	lw $t1, _make
	lw $t0, 24($t1)
	sw $t0, -216($sp)
	lw $t2, -216($sp)
	lw $t1, -212($sp)
	add $t0, $t1, $t2
	sw $t0, -220($sp)
	lw $t2, -4($sp)
	lw $t1, -220($sp)
	seq $t0, $t1, $t2
	sw $t0, -224($sp)
	lw $t0, -224($sp)
	bne $t0, $0, L15
	b L10
L15:
	lw $t1, _make
	lw $t0, 4($t1)
	sw $t0, -228($sp)
	lw $t1, _make
	lw $t0, 16($t1)
	sw $t0, -232($sp)
	lw $t2, -232($sp)
	lw $t1, -228($sp)
	add $t0, $t1, $t2
	sw $t0, -236($sp)
	lw $t1, _make
	lw $t0, 28($t1)
	sw $t0, -240($sp)
	lw $t2, -240($sp)
	lw $t1, -236($sp)
	add $t0, $t1, $t2
	sw $t0, -244($sp)
	lw $t2, -4($sp)
	lw $t1, -244($sp)
	seq $t0, $t1, $t2
	sw $t0, -248($sp)
	lw $t0, -248($sp)
	bne $t0, $0, L14
	b L10
L14:
	lw $t1, _make
	lw $t0, 8($t1)
	sw $t0, -252($sp)
	lw $t1, _make
	lw $t0, 20($t1)
	sw $t0, -256($sp)
	lw $t2, -256($sp)
	lw $t1, -252($sp)
	add $t0, $t1, $t2
	sw $t0, -260($sp)
	lw $t1, _make
	lw $t0, 32($t1)
	sw $t0, -264($sp)
	lw $t2, -264($sp)
	lw $t1, -260($sp)
	add $t0, $t1, $t2
	sw $t0, -268($sp)
	lw $t2, -4($sp)
	lw $t1, -268($sp)
	seq $t0, $t1, $t2
	sw $t0, -272($sp)
	lw $t0, -272($sp)
	bne $t0, $0, L13
	b L10
L13:
	lw $t0, _make
	lw $t1, ($t0)
	sw $t1, -276($sp)
	lw $t1, _make
	lw $t0, 16($t1)
	sw $t0, -280($sp)
	lw $t2, -280($sp)
	lw $t1, -276($sp)
	add $t0, $t1, $t2
	sw $t0, -284($sp)
	lw $t1, _make
	lw $t0, 32($t1)
	sw $t0, -288($sp)
	lw $t2, -288($sp)
	lw $t1, -284($sp)
	add $t0, $t1, $t2
	sw $t0, -292($sp)
	lw $t2, -4($sp)
	lw $t1, -292($sp)
	seq $t0, $t1, $t2
	sw $t0, -296($sp)
	lw $t0, -296($sp)
	bne $t0, $0, L12
	b L10
L12:
	lw $t1, _make
	lw $t0, 24($t1)
	sw $t0, -300($sp)
	lw $t1, _make
	lw $t0, 16($t1)
	sw $t0, -304($sp)
	lw $t2, -304($sp)
	lw $t1, -300($sp)
	add $t0, $t1, $t2
	sw $t0, -308($sp)
	lw $t1, _make
	lw $t0, 8($t1)
	sw $t0, -312($sp)
	lw $t2, -312($sp)
	lw $t1, -308($sp)
	add $t0, $t1, $t2
	sw $t0, -316($sp)
	lw $t2, -4($sp)
	lw $t1, -316($sp)
	seq $t0, $t1, $t2
	sw $t0, -320($sp)
	lw $t0, -320($sp)
	bne $t0, $0, L11
	b L10
L11:
	lw $t0, _count
	lw $t1, ($t0)
	sw $t1, -328($sp)
	li $t2, 1
	lw $t1, -328($sp)
	add $t0, $t1, $t2
	sw $t0, -332($sp)
	lw $t0, _count
	lw $t1, -332($sp)
	sw $t1, ($t0)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -340($sp)
L19:
	li $t2, 2
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -344($sp)
	lw $t0, -344($sp)
	bne $t0, $0, L20
	b L18
L20:
	li $t0, 0
	sw $t0, -12($sp)
	lw $t0, -12($sp)
	sw $t0, -348($sp)
L22:
	li $t2, 2
	lw $t1, -12($sp)
	sle $t0, $t1, $t2
	sw $t0, -352($sp)
	lw $t0, -352($sp)
	bne $t0, $0, L23
	b L21
L23:
	li $t0, 0
	sw $t0, -360($sp)
	li $t2, 12
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -364($sp)
	lw $t2, -364($sp)
	lw $t1, -360($sp)
	add $t0, $t1, $t2
	sw $t0, -360($sp)
	li $t2, 4
	lw $t1, -12($sp)
	mul $t0, $t1, $t2
	sw $t0, -368($sp)
	lw $t2, -368($sp)
	lw $t1, -360($sp)
	add $t0, $t1, $t2
	sw $t0, -360($sp)
	lw $t2, -360($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -372($sp)
	lw $t0, -372($sp)
	lw $t1, ($t0)
	sw $t1, -376($sp)
	lw $t0, -356($sp)
	sw $t0, -876($sp)
	lw $t0, -376($sp)
	sw $t0, -880($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 884
	jal _printf
	addi $sp, $sp, 884
	sw $v0, -380($sp)
	lw $ra, ($sp)
	lw $t0, -384($sp)
	sw $t0, -876($sp)
	li $t0, 32
	sw $t0, -880($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 884
	jal _printf
	addi $sp, $sp, 884
	sw $v0, -388($sp)
	lw $ra, ($sp)
	lw $t0, -12($sp)
	sw $t0, -392($sp)
	li $t2, 1
	lw $t1, -12($sp)
	add $t0, $t1, $t2
	sw $t0, -12($sp)
	b L22
L21:
	lw $t0, -396($sp)
	sw $t0, -876($sp)
	li $t0, 10
	sw $t0, -880($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 884
	jal _printf
	addi $sp, $sp, 884
	sw $v0, -400($sp)
	lw $ra, ($sp)
	lw $t0, -8($sp)
	sw $t0, -404($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	b L19
L18:
	lw $t0, -408($sp)
	sw $t0, -876($sp)
	li $t0, 10
	sw $t0, -880($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 884
	jal _printf
	addi $sp, $sp, 884
	sw $v0, -412($sp)
	lw $ra, ($sp)
L10:
	b L6
L8:
	li $t2, 2
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -416($sp)
	lw $t0, -416($sp)
	bne $t0, $0, L25
	b L26
L25:
	li $t0, 0
	sw $t0, -424($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -428($sp)
	lw $t2, -428($sp)
	lw $t1, -424($sp)
	add $t0, $t1, $t2
	sw $t0, -424($sp)
	li $t2, 4
	li $t1, 0
	mul $t0, $t1, $t2
	sw $t0, -432($sp)
	lw $t2, -432($sp)
	lw $t1, -424($sp)
	add $t0, $t1, $t2
	sw $t0, -424($sp)
	lw $t2, -424($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -436($sp)
	lw $t0, -436($sp)
	lw $t1, ($t0)
	sw $t1, -440($sp)
	lw $t2, -440($sp)
	li $t1, 15
	sub $t0, $t1, $t2
	sw $t0, -444($sp)
	li $t0, 0
	sw $t0, -448($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -452($sp)
	lw $t2, -452($sp)
	lw $t1, -448($sp)
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	li $t2, 4
	li $t1, 1
	mul $t0, $t1, $t2
	sw $t0, -456($sp)
	lw $t2, -456($sp)
	lw $t1, -448($sp)
	add $t0, $t1, $t2
	sw $t0, -448($sp)
	lw $t2, -448($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -460($sp)
	lw $t0, -460($sp)
	lw $t1, ($t0)
	sw $t1, -464($sp)
	lw $t2, -464($sp)
	lw $t1, -444($sp)
	sub $t0, $t1, $t2
	sw $t0, -468($sp)
	li $t0, 0
	sw $t0, -472($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -476($sp)
	lw $t2, -476($sp)
	lw $t1, -472($sp)
	add $t0, $t1, $t2
	sw $t0, -472($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -480($sp)
	lw $t2, -480($sp)
	lw $t1, -472($sp)
	add $t0, $t1, $t2
	sw $t0, -472($sp)
	lw $t2, -472($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -484($sp)
	lw $t0, -484($sp)
	lw $t1, -468($sp)
	sw $t1, ($t0)
	li $t0, 0
	sw $t0, -492($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -496($sp)
	lw $t2, -496($sp)
	lw $t1, -492($sp)
	add $t0, $t1, $t2
	sw $t0, -492($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -500($sp)
	lw $t2, -500($sp)
	lw $t1, -492($sp)
	add $t0, $t1, $t2
	sw $t0, -492($sp)
	lw $t2, -492($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -504($sp)
	lw $t0, -504($sp)
	lw $t1, ($t0)
	sw $t1, -508($sp)
	li $t2, 0
	lw $t1, -508($sp)
	sgt $t0, $t1, $t2
	sw $t0, -512($sp)
	lw $t0, -512($sp)
	bne $t0, $0, L30
	b L27
L30:
	li $t0, 0
	sw $t0, -516($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -520($sp)
	lw $t2, -520($sp)
	lw $t1, -516($sp)
	add $t0, $t1, $t2
	sw $t0, -516($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -524($sp)
	lw $t2, -524($sp)
	lw $t1, -516($sp)
	add $t0, $t1, $t2
	sw $t0, -516($sp)
	lw $t2, -516($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -528($sp)
	lw $t0, -528($sp)
	lw $t1, ($t0)
	sw $t1, -532($sp)
	li $t2, 10
	lw $t1, -532($sp)
	slt $t0, $t1, $t2
	sw $t0, -536($sp)
	lw $t0, -536($sp)
	bne $t0, $0, L29
	b L27
L29:
	li $t0, 0
	sw $t0, -540($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -544($sp)
	lw $t2, -544($sp)
	lw $t1, -540($sp)
	add $t0, $t1, $t2
	sw $t0, -540($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -548($sp)
	lw $t2, -548($sp)
	lw $t1, -540($sp)
	add $t0, $t1, $t2
	sw $t0, -540($sp)
	lw $t2, -540($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -552($sp)
	lw $t0, -552($sp)
	lw $t1, ($t0)
	sw $t1, -556($sp)
	li $t0, 0
	sw $t0, -560($sp)
	li $t2, 4
	lw $t1, -556($sp)
	mul $t0, $t1, $t2
	sw $t0, -564($sp)
	lw $t2, -564($sp)
	lw $t1, -560($sp)
	add $t0, $t1, $t2
	sw $t0, -560($sp)
	lw $t2, -560($sp)
	lw $t1, _color
	add $t0, $t1, $t2
	sw $t0, -568($sp)
	lw $t0, -568($sp)
	lw $t1, ($t0)
	sw $t1, -572($sp)
	li $t2, 0
	lw $t1, -572($sp)
	seq $t0, $t1, $t2
	sw $t0, -576($sp)
	lw $t0, -576($sp)
	bne $t0, $0, L28
	b L27
L28:
	li $t0, 0
	sw $t0, -584($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -588($sp)
	lw $t2, -588($sp)
	lw $t1, -584($sp)
	add $t0, $t1, $t2
	sw $t0, -584($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -592($sp)
	lw $t2, -592($sp)
	lw $t1, -584($sp)
	add $t0, $t1, $t2
	sw $t0, -584($sp)
	lw $t2, -584($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -596($sp)
	lw $t0, -596($sp)
	lw $t1, ($t0)
	sw $t1, -600($sp)
	li $t0, 0
	sw $t0, -604($sp)
	li $t2, 4
	lw $t1, -600($sp)
	mul $t0, $t1, $t2
	sw $t0, -608($sp)
	lw $t2, -608($sp)
	lw $t1, -604($sp)
	add $t0, $t1, $t2
	sw $t0, -604($sp)
	lw $t2, -604($sp)
	lw $t1, _color
	add $t0, $t1, $t2
	sw $t0, -612($sp)
	lw $t0, -612($sp)
	li $t1, 1
	sw $t1, ($t0)
	li $t2, 2
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -620($sp)
	lw $t0, -620($sp)
	bne $t0, $0, L32
	b L33
L32:
	li $t2, 1
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -624($sp)
	li $t0, 0
	sw $t0, -628($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -632($sp)
	lw $t2, -632($sp)
	lw $t1, -628($sp)
	add $t0, $t1, $t2
	sw $t0, -628($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -636($sp)
	lw $t2, -636($sp)
	lw $t1, -628($sp)
	add $t0, $t1, $t2
	sw $t0, -628($sp)
	lw $t2, -628($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -640($sp)
	lw $t0, -640($sp)
	lw $t1, ($t0)
	sw $t1, -644($sp)
	lw $t2, -644($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -648($sp)
	lw $t0, -624($sp)
	sw $t0, -876($sp)
	li $t0, 0
	sw $t0, -880($sp)
	lw $t0, -648($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _search
	addi $sp, $sp, 888
	sw $v0, -652($sp)
	lw $ra, ($sp)
	b L31
L33:
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -656($sp)
	li $t0, 0
	sw $t0, -660($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -664($sp)
	lw $t2, -664($sp)
	lw $t1, -660($sp)
	add $t0, $t1, $t2
	sw $t0, -660($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -668($sp)
	lw $t2, -668($sp)
	lw $t1, -660($sp)
	add $t0, $t1, $t2
	sw $t0, -660($sp)
	lw $t2, -660($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -672($sp)
	lw $t0, -672($sp)
	lw $t1, ($t0)
	sw $t1, -676($sp)
	lw $t2, -676($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -680($sp)
	lw $t0, 12($sp)
	sw $t0, -876($sp)
	lw $t0, -656($sp)
	sw $t0, -880($sp)
	lw $t0, -680($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _search
	addi $sp, $sp, 888
	sw $v0, -684($sp)
	lw $ra, ($sp)
L31:
	li $t0, 0
	sw $t0, -692($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -696($sp)
	lw $t2, -696($sp)
	lw $t1, -692($sp)
	add $t0, $t1, $t2
	sw $t0, -692($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -700($sp)
	lw $t2, -700($sp)
	lw $t1, -692($sp)
	add $t0, $t1, $t2
	sw $t0, -692($sp)
	lw $t2, -692($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -704($sp)
	lw $t0, -704($sp)
	lw $t1, ($t0)
	sw $t1, -708($sp)
	li $t0, 0
	sw $t0, -712($sp)
	li $t2, 4
	lw $t1, -708($sp)
	mul $t0, $t1, $t2
	sw $t0, -716($sp)
	lw $t2, -716($sp)
	lw $t1, -712($sp)
	add $t0, $t1, $t2
	sw $t0, -712($sp)
	lw $t2, -712($sp)
	lw $t1, _color
	add $t0, $t1, $t2
	sw $t0, -720($sp)
	lw $t0, -720($sp)
	li $t1, 0
	sw $t1, ($t0)
L27:
	b L24
L26:
	li $t0, 1
	sw $t0, -8($sp)
	lw $t0, -8($sp)
	sw $t0, -728($sp)
L35:
	li $t2, 9
	lw $t1, -8($sp)
	sle $t0, $t1, $t2
	sw $t0, -732($sp)
	lw $t0, -732($sp)
	bne $t0, $0, L36
	b L34
L36:
	li $t0, 0
	sw $t0, -736($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -740($sp)
	lw $t2, -740($sp)
	lw $t1, -736($sp)
	add $t0, $t1, $t2
	sw $t0, -736($sp)
	lw $t2, -736($sp)
	lw $t1, _color
	add $t0, $t1, $t2
	sw $t0, -744($sp)
	lw $t0, -744($sp)
	lw $t1, ($t0)
	sw $t1, -748($sp)
	li $t2, 0
	lw $t1, -748($sp)
	seq $t0, $t1, $t2
	sw $t0, -752($sp)
	lw $t0, -752($sp)
	bne $t0, $0, L38
	b L37
L38:
	li $t0, 0
	sw $t0, -760($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -764($sp)
	lw $t2, -764($sp)
	lw $t1, -760($sp)
	add $t0, $t1, $t2
	sw $t0, -760($sp)
	lw $t2, -760($sp)
	lw $t1, _color
	add $t0, $t1, $t2
	sw $t0, -768($sp)
	lw $t0, -768($sp)
	li $t1, 1
	sw $t1, ($t0)
	li $t0, 0
	sw $t0, -780($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -784($sp)
	lw $t2, -784($sp)
	lw $t1, -780($sp)
	add $t0, $t1, $t2
	sw $t0, -780($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -788($sp)
	lw $t2, -788($sp)
	lw $t1, -780($sp)
	add $t0, $t1, $t2
	sw $t0, -780($sp)
	lw $t2, -780($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -792($sp)
	lw $t0, -792($sp)
	lw $t1, -8($sp)
	sw $t1, ($t0)
	li $t2, 2
	lw $t1, 8($sp)
	seq $t0, $t1, $t2
	sw $t0, -800($sp)
	lw $t0, -800($sp)
	bne $t0, $0, L40
	b L41
L40:
	li $t2, 1
	lw $t1, 12($sp)
	add $t0, $t1, $t2
	sw $t0, -804($sp)
	lw $t2, -8($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -808($sp)
	lw $t0, -804($sp)
	sw $t0, -876($sp)
	li $t0, 0
	sw $t0, -880($sp)
	lw $t0, -808($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _search
	addi $sp, $sp, 888
	sw $v0, -812($sp)
	lw $ra, ($sp)
	b L39
L41:
	li $t2, 1
	lw $t1, 8($sp)
	add $t0, $t1, $t2
	sw $t0, -816($sp)
	lw $t2, -8($sp)
	lw $t1, 4($sp)
	add $t0, $t1, $t2
	sw $t0, -820($sp)
	lw $t0, 12($sp)
	sw $t0, -876($sp)
	lw $t0, -816($sp)
	sw $t0, -880($sp)
	lw $t0, -820($sp)
	sw $t0, -884($sp)
	subu $sp, $sp, 888
	jal _search
	addi $sp, $sp, 888
	sw $v0, -824($sp)
	lw $ra, ($sp)
L39:
	li $t0, 0
	sw $t0, -832($sp)
	li $t2, 12
	lw $t1, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, -836($sp)
	lw $t2, -836($sp)
	lw $t1, -832($sp)
	add $t0, $t1, $t2
	sw $t0, -832($sp)
	li $t2, 4
	lw $t1, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, -840($sp)
	lw $t2, -840($sp)
	lw $t1, -832($sp)
	add $t0, $t1, $t2
	sw $t0, -832($sp)
	lw $t2, -832($sp)
	lw $t1, _make
	add $t0, $t1, $t2
	sw $t0, -844($sp)
	lw $t0, -844($sp)
	li $t1, 0
	sw $t1, ($t0)
	li $t0, 0
	sw $t0, -856($sp)
	li $t2, 4
	lw $t1, -8($sp)
	mul $t0, $t1, $t2
	sw $t0, -860($sp)
	lw $t2, -860($sp)
	lw $t1, -856($sp)
	add $t0, $t1, $t2
	sw $t0, -856($sp)
	lw $t2, -856($sp)
	lw $t1, _color
	add $t0, $t1, $t2
	sw $t0, -864($sp)
	lw $t0, -864($sp)
	li $t1, 0
	sw $t1, ($t0)
L37:
	lw $t0, -8($sp)
	sw $t0, -872($sp)
	li $t2, 1
	lw $t1, -8($sp)
	add $t0, $t1, $t2
	sw $t0, -8($sp)
	b L35
L34:
L24:
L6:
L1:
	jr $ra
_main:
	sw $ra, ($sp)
	la $t0, str_5
	sw $t0, -8($sp)
	li $t0, 0
	sw $t0, -20($sp)
	li $t0, 0
	sw $t0, -24($sp)
	li $t0, 0
	sw $t0, -28($sp)
	subu $sp, $sp, 32
	jal _search
	addi $sp, $sp, 32
	sw $v0, -4($sp)
	lw $ra, ($sp)
	lw $t0, _count
	lw $t1, ($t0)
	sw $t1, -12($sp)
	lw $t0, -8($sp)
	sw $t0, -20($sp)
	lw $t0, -12($sp)
	sw $t0, -24($sp)
	li $t0, 2
	sw $t0, _printf_cnt
	subu $sp, $sp, 28
	jal _printf
	addi $sp, $sp, 28
	sw $v0, -16($sp)
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
	addu $a1, $a1, 1
	beq $a0, '%', _printf_fmt
	li $v0, 11
	syscall
	b _printf_loop

_printf_fmt:
	lb $a0, 0($a1)
	addu $a1, $a1, 1
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
	addu $a1, $a1, 1
	sub $t1, $t1, '1'
	addu $a1, $a1, 1
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
	subu $a2 $a2 1
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

_malloc:
	lw $a0, 4($sp)
	li $v0, 9
	syscall
	move $t0, $v0
	li $v0, 9
	li $a0, 4
	syscall
	sw $t0, ($v0)
	jr $ra


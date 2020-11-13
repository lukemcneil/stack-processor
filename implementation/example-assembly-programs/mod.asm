MAIN:
	getin
	getin2
	jal MOD
	halt
MOD:
	over
	over
	slt
	pushi 1
	beq MODRETURNN
	swap
	over
	sub 
	swap 
	j MOD
MODRETURNN:
	drop
	return

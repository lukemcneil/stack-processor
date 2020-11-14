MAIN:
	jal CHOOSE
	halt
CHOOSE:	
	over
	over
	sub
	jal FACT
	swap
	jal FACT
	jal MUL
	swap
	jal FACT
	swap
	j MOD
FACT:
	dup
	pushi 2
	slt
	bez LOOP
	drop
	pushi 1
	return
LOOP:
	dup
	pushi 1
	sub
	jal FACT
	j MUL
MUL:
	over
	over
	slt
	pushi 1
	beq SWAP
	dup
	pushi 1
	beq DONE
	pushi 1
	sub
	over
	swap
	jal MUL
	add
	return
DONE:
	drop
	return
SWAP:
	swap
	j MUL
DIV:
	over
	over
	slt
	pushi 1
	beq DIVRETURNY
	swap
	over
	sub
	swap
	push 1
	pushi 1
	add
	pop 1
	j DIV
DIVRETURNY:
	drop
	drop
	push 1
	return
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

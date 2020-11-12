MAIN:
	getin
	jal FACT
	halt
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
	jal MUL
	return
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
	jal MUL
	return

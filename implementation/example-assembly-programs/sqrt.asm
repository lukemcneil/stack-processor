MAIN:
	getin
	jal SQRT
	halt
SQRT:
	dup
	bez SQRTRETURN0
	pushi 1
	j SQRTLOOP
SQRTLOOP:
	over
	over
	dup
	jal MUL
	slt
	pushi 1
	beq SQRTDONE
	pushi 1
	add
	j SQRTLOOP
SQRTDONE:
	swap
	drop
	pushi 1
	sub
	return
SQRTRETURN0:
	drop
	pushi 0
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
	j MUL

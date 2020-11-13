MAIN:
	getin
	getin2
	pushi 0
	pop 1
	jal DIV
	halt
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

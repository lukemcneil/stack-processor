MAIN:
	getin
	getin2
	jal DIV
	halt
DIV:
	pushi 0
	pop 1
DIVLOOP:
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
	j DIVLOOP
DIVRETURNY:
	drop
	drop
	push 1
	return

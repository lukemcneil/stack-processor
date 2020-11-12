MAIN:
	getin
	jal FIB
	halt
FIB:
	dup
	bez RETURNA
	dup
	pushi 1
	beq RETURNA
	dup
	pushi 2
	sub
	jal FIB
	swap
	pushi 1
	sub
	jal FIB
	add
	return
RETURNA:
	return

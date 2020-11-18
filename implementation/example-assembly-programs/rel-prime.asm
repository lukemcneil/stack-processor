MAIN:
	getin
	jal RELPRIME
	halt
RELPRIME:
	pushi 2
RPLOOP:
	over
	over
	jal GCD
	pushi 1
	beq RETURNM
	pushi 1
	add
	j RPLOOP
RETURNM:
	swap
	drop
	return
GCD:
	bezn RETURNB
	swap
LOOP:
	over
	bez RETURNA
	sltn
	bez ELSE
	over
	sub
	j LOOP
ELSE:
	swap
	over
	sub
	swap
	j LOOP
RETURNB:
	drop
	return
RETURNA:
	swap
	drop
	return

MAIN:
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
	over
	bez RETURNB
LOOP:
	bezn RETURNA
	swap
	sltn
	bez ELSE
	over
	sub
	swap
	j LOOP
ELSE:
	swap
	over
	sub
	j LOOP
RETURNB:
	swap
	drop
	return
RETURNA:
	drop
	return

1ADDMAIN:
	getin
	getin2
	add
	halt
2SUBMAIN:
	getin
	getin2
	sub
	halt
3MULMAIN:
	getin
	getin2
	jal MUL
	halt
4FACTMAIN:
	getin
	jal FACT
	halt
FACT:
	dup
	pushi 2
	slt
	bez FACTLOOP
	drop
	pushi 1
	return
FACTLOOP:
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
5FIBMAIN:
	getin
	jal FIB
	halt
FIB:
	dup
	bez FIBRETURNA
	dup
	pushi 1
	beq FIBRETURNA
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
FIBRETURNA:
	return
6RELPRIMEMAIN:
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
	over
	bez GCDRETURNB
GCDLOOP:
	dup
	bez GCDRETURNA
	over
	over
	swap
	slt
	bez ELSE
	swap
	over
	sub
	swap
	j GCDLOOP
ELSE:
	over
	sub
	j GCDLOOP
GCDRETURNB:
	swap
	drop
	return
GCDRETURNA:
	drop
	return
7DIVMAIN:
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
8MODMAIN:
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
9MAINCHOOSE:
	getin
	getin2
	jal CHOOSE
	halt
CHOOSE:
	over
	over
	slt
	pushi 1
	beq RETURN0
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
	j DIV
RETURN0:
	drop
	drop
	pushi 0
	return
10MAINSQRT:
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

Implementation Directory
--------------------------------------

Put your datapath/processor implementation files in here.  Also include any other artifacts like an assembler or simulator.
Do not include design documents.

Include:
* a Xinlinx project directory
* Your lab6-8 folders
* Assembler, simulator, compiler code and instruction manuals.


Assembler Instructions
--------------------------------------
* Make sure you have Chez Scheme installed
* Run the following in a terminal
`scheme --script assembler.ss path/to/file.asm`
* To get binary output run
`scheme --script assembler.ss path/to/file.asm --binary`

Simulator Instructions
--------------------------------------
* Make sure you have Chez Scheme installed
* Run the following in a terminal
`scheme --script stack-simulator.ss path/to/file.asm [topOfStack] [secondOfStack] ...`
You can include as many extra arguments as you want to place on top of the stack before simulating.
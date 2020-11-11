`timescale 1ns / 1ps

// Author: Luke McNeil

// This component takes in the instruction and sets
// the control bits to the correct values. This component
// also keeps track of how many instructions have been executed.

module control(
   input [15:0] inst,
   input reset,
	input CLK,
   output reg [2:0] stackOP,
   output reg [1:0] rStackOP,
   output reg [3:0] ALUOP,
   output reg [2:0] stackControl,
   output reg [2:0] PCControl,
   output reg MemWrite,
   output reg PCWrite,
	output reg [31:0] instCount
   );
	
//	stackOP and rStackOP
	parameter NONE = 0;
	parameter PUSH = 1;
	parameter POPANDREPLACE = 2;
	parameter POP = 3;
	parameter POP2 = 4;
	parameter SWAP = 5;
	
//	ALUOP
	parameter ADD = 0;
	parameter SUB = 1;
	parameter AND = 2;
	parameter OR = 3;
	parameter XOR = 4;
	parameter A = 5;
	parameter B = 6;
	parameter EQ = 7;
	parameter EZ = 8;
	parameter BLESSA = 9;
	
//	stackControl
	parameter IMM = 0;
	parameter IMMLUI = 1;
	parameter MEM = 2;
	parameter ALU = 3;
	parameter INPUT = 4;
	parameter INPUT2 = 5;
	
//	PCControl
	parameter RETURN = 0;
	parameter TOPOFSTACK = 1;
	parameter LABEL = 2;
	parameter LABELORPCINC = 3;
	parameter PCINC = 4;
	
	always @ (posedge(CLK)) begin
		if (reset == 1)
			instCount = 0;
		else
			if (inst != 'h0003)
				instCount = instCount + 1;
	end
	
	always @ (inst) begin
		case(inst[15:12])
			0: begin // O Type
				case(inst[11:0])
					0: begin // add
						stackOP <= POPANDREPLACE;
						rStackOP <= NONE;
						ALUOP <= ADD;
						stackControl <= ALU;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					1: begin // dup
						stackOP <= PUSH;
						rStackOP <= NONE;
						ALUOP <= A;
						stackControl <= ALU;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					2: begin // drop
						stackOP <= POP;
						rStackOP <= NONE;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					3: begin // halt
						stackOP <= NONE;
						rStackOP <= NONE;
						MemWrite <= 0;
						PCWrite <= 0;
					end
					4: begin // getin
						stackOP <= PUSH;
						rStackOP <= NONE;
						stackControl <= INPUT;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					5: begin // js
						stackOP <= POP;
						rStackOP <= NONE;
						PCControl <= TOPOFSTACK;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					6: begin // over
						stackOP <= PUSH;
						rStackOP <= NONE;
						ALUOP <= B;
						stackControl <= ALU;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					7: begin // or
						stackOP <= POPANDREPLACE;
						rStackOP <= NONE;
						ALUOP <= OR;
						stackControl <= ALU;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					8: begin // return
						stackOP <= NONE;
						rStackOP <= POP;
						PCControl <= RETURN;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					9: begin // slt
						stackOP <= POPANDREPLACE;
						rStackOP <= NONE;
						ALUOP <= BLESSA;
						stackControl <= ALU;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					10: begin // sub
						stackOP <= POPANDREPLACE;
						rStackOP <= NONE;
						ALUOP <= SUB;
						stackControl <= ALU;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					11: begin // swap
						stackOP <= SWAP;
						rStackOP <= NONE;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
					12: begin // getin2
						stackOP <= PUSH;
						rStackOP <= NONE;
						stackControl <= INPUT2;
						PCControl <= PCINC;
						MemWrite <= 0;
						PCWrite <= 1;
					end
				endcase
			end
			1: begin // beq
				stackOP <= POP2;
				rStackOP <= NONE;
				ALUOP <= EQ;
				PCControl <= LABELORPCINC;
				MemWrite <= 0;
				PCWrite <= 1;
			end
			2: begin // bez
				stackOP <= POP;
				rStackOP <= NONE;
				ALUOP <= EZ;
				PCControl <= LABELORPCINC;
				MemWrite <= 0;
				PCWrite <= 1;
			end
			3: begin // j
				stackOP <= NONE;
				rStackOP <= NONE;
				PCControl <= LABEL;
				MemWrite <= 0;
				PCWrite <= 1;
			end
			4: begin // jal
				stackOP <= NONE;
				rStackOP <= PUSH;
				PCControl <= LABEL;
				MemWrite <= 0;
				PCWrite <= 1;
			end
			5: begin // pop
				stackOP <= POP;
				rStackOP <= NONE;
				PCControl <= PCINC;
				MemWrite <= 1;
				PCWrite <= 1;
			end
			6: begin // push
				stackOP <= PUSH;
				rStackOP <= NONE;
				stackControl <= MEM;
				PCControl <= PCINC;
				MemWrite <= 0;
				PCWrite <= 1;
			end
			7: begin // pushi
				stackOP <= PUSH;
				rStackOP <= NONE;
				stackControl <= IMM;
				PCControl <= PCINC;
				MemWrite <= 0;
				PCWrite <= 1;
			end
			8: begin // lui
				stackOP <= PUSH;
				rStackOP <= NONE;
				stackControl <= IMMLUI;
				PCControl <= PCINC;
				MemWrite <= 0;
				PCWrite <= 1;
			end
		endcase
	end
	
endmodule

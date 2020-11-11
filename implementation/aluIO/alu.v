`timescale 1ns / 1ps

// Author: Austin Swatek

// This component takes two 16 bit values and an
// op code. It then outputs the result of doing the
// correct operation.

module alu(
	input [3:0] Oper,
	input [15:0] A,
	input [15:0] B,
	
	output reg [15:0] ALU_Out,
	output reg Overflow
	);
	
	always @ ( * )
	begin
		case(Oper)
			4'b0000:	//add
				ALU_Out <= A + B;
			4'b0001:	//sub
				ALU_Out <= B - A;
			4'b0010:	//logical and
				ALU_Out <= A & B;
			4'b0011:	//logical or
				ALU_Out <= A | B;
			4'b0100:	//logical xor
				ALU_Out <= A ^ B;
			4'b0101:	//select A
				ALU_Out <= A;
			4'b0110:	//select B
				ALU_Out <= B;
			4'b0111:	//A == B? 1:0
				if (A == B)
					ALU_Out <= 1;
				else
					ALU_Out <= 0;
			4'b1000:	//A == 0? 1:0
				if (A == 0)
					ALU_Out <= 1;
				else
					ALU_Out <= 0;
			4'b1001:	//B < A? 1:0
				if (B < A)
					ALU_Out <= 1;
				else
					ALU_Out <= 0;
//			4'b1010:
//				ALU_Out <= 
//			4'b1011:
//				ALU_Out <= 
//			4'b1100:
//				ALU_Out <= 
//			4'b1101:
//				ALU_Out <= 
//			4'b1110:
//				ALU_Out <= 
//			4'b1111:
//				ALU_Out <= 
			default: 
				ALU_Out <= 0;
		endcase
	end
	 
	 


endmodule

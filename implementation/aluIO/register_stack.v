`timescale 1ns / 1ps

// Author: Luke McNeil

// This component takes in write data and a stack operation.
// On the negative edge of the clock the stack does the operation
// which may or may not use w. If reset is ever high on the negative
// edge then every entry on the stack is set to zero. The stack
// outputs two 16 bit values which are the top and second from the
// top of the stack.

module register_stack(a, b, stackOP, w, reset, CLK);
	output [15:0] a;
   output [15:0] b;
	input [2:0] stackOP;
   input [15:0] w;
	input reset;
   input CLK;
	 
	localparam stackSize = 64;
	 
	reg [15:0] stack [stackSize-1:0];
	 
	integer i;

	assign a = stack[0];
	assign b = stack[1];
	
	always @ (negedge CLK) begin
		case(stackOP)
			1: begin // push
				for(i = stackSize - 1; i > 0; i = i - 1)
					stack[i] <= stack[i-1];
				stack[0] <= w;
			end
			
			2: begin // pop and replace
				for(i = 1; i < stackSize - 1; i = i + 1)
					stack[i] <= stack[i+1];
				stack[stackSize - 1] <= 0;
				stack[0] <= w;
			end
			
			3: begin // pop
				for(i = 0; i < stackSize - 1; i = i + 1)
					stack[i] <= stack[i+1];
				stack[stackSize - 1] <= 0;
			end
			
			4: begin // pop 2
				for(i = 0; i < stackSize - 2; i = i + 1)
					stack[i] <= stack[i+2];
				stack[stackSize - 2] <= 0;
				stack[stackSize - 1] <= 0;
			end
			
			5: begin // swap
				stack[0] <= stack[1];
				stack[1] <= stack[0];
			end
			default: begin end
		endcase
		
		if (reset == 1)
			for (i = 0; i < stackSize; i = i + 1)
				stack[i] <= 0;
	end
endmodule

`timescale 1ns / 1ps

module return_stack(a, stackOP, w, reset, CLK);
	output [15:0] a;
	input [1:0] stackOP;
   input [15:0] w;
	input reset;
   input CLK;
	 
	localparam stackSize = 64;
	 
	reg [15:0] stack [stackSize-1:0];
	 
	integer i;

	assign a = stack[0];
	
	always @ (negedge CLK) begin
		case(stackOP)
			1: begin // push
				for(i = stackSize - 1; i > 0; i = i - 1)
					stack[i] <= stack[i-1];
				stack[0] <= w;
			end
			
			3: begin // pop
				for(i = 0; i < stackSize - 1; i = i + 1)
					stack[i] <= stack[i+1];
				stack[stackSize - 1] <= 0;
			end
			default: begin end
		endcase
		
		if (reset == 1)
			for (i = 0; i < stackSize; i = i + 1)
				stack[i] <= 0;
	end
endmodule

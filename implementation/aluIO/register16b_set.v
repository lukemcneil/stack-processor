`timescale 1ns / 1ps

// Author: Luke McNeil

module register16b_set(
   input [15:0] din,
   input enable,
   input CLK,
   input reset,
   input [15:0] pc_reset_address,
   output reg [15:0] dout
   );
	 
//	initial begin
//		pc = pc_reset_address;
//	end

	always @ (posedge(CLK), posedge(reset)) begin
		if (reset)
			dout = pc_reset_address;
		else
			if (enable)
				dout = din;
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:59 10/24/2020 
// Design Name: 
// Module Name:    leftshifter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module leftshifter(
    input [11:0] in,
    output [12:0] out
    );
	 CLK = 0;
	 out[0] = 0;
	while(CLK < 12)
		out[CLK+1] = in[CLK];
		CLK = CLK + 1;
	end
		

endmodule

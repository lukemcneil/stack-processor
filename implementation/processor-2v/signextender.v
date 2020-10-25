`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:18:45 10/24/2020 
// Design Name: 
// Module Name:    signextender 
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
module signextender(
    input [11:0] in,
    output [15:0] out
    );
	 
	 out[11:0] = in[11:0];
    out[15:12] = {4{in[11]}};


endmodule

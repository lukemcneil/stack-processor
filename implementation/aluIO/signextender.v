`timescale 1ns / 1ps

// Author: Jinhao Sheng

// This component sign extends a 12 bit number to 16 bits.

module signextender(
    input [11:0] in,
    output [15:0] out
    );
	 
	 assign out = {{4{in[11]}}, in[11:0]};


endmodule

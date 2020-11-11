`timescale 1ns / 1ps

// Author: Jinhao Sheng

// This component shifts a 4 bit input left 12
// bits outputing a 16 bit value.

module leftshifter12(
    input [3:0] in,
    output [15:0] out
    );

	assign out = in << 12;
		

endmodule

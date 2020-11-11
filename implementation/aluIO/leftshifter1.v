`timescale 1ns / 1ps

// Author: Luke McNeil

// This component left shifts a 12 bit number left 1 bit.

module leftshifter1(
    input [11:0] in,
    output [12:0] out
    );
	
	assign out = in << 1;
		

endmodule

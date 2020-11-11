`timescale 1ns / 1ps

// Author: Luke McNeil

module leftshifter1(
    input [11:0] in,
    output [12:0] out
    );
	
	assign out = in << 1;
		

endmodule

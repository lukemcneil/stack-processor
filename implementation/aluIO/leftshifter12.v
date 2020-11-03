`timescale 1ns / 1ps

module leftshifter12(
    input [3:0] in,
    output [15:0] out
    );

	assign out = in << 12;
		

endmodule

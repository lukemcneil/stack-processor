`timescale 1ns / 1ps

module merger_3b13b(
    input [2:0] a,
    input [12:0] b,
    output [15:0] r
    );
	 
	 assign r = {a, b};

endmodule

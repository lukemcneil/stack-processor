`timescale 1ns / 1ps

module signextender(
    input [11:0] in,
    output [15:0] out
    );
	 
	 assign out = (in[11] == 1) ? {4'b1111, in} : {4'b0000, in};

endmodule

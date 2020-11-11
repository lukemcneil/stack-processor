`timescale 1ns / 1ps

// Author: Luke McNeil

// This component takes a clock and produces another
// clock which has twice the period.

module clock_splitter(
    input CLK,
	 output reg slowCLK
    );
	 
	 initial
		slowCLK <= 0;

	always @ (posedge CLK)
		slowCLK <= ~slowCLK;

endmodule

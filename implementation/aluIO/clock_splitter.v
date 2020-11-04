`timescale 1ns / 1ps

module clock_splitter(
    input CLK,
	 output reg slowCLK
    );
	 
	 initial
		slowCLK <= 0;

	always @ (posedge CLK)
		slowCLK <= ~slowCLK;

endmodule
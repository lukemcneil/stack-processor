`timescale 1ns / 1ps

// Author: Jinhao Sheng

// This component is a 1 bit mux with 16 bit inputs.

module mux1(
    input [15:0] i0,
    input [15:0] i1,
    input control,
    output reg [15:0] out
    );

	 always @(i0,i1,control) begin
		if (control == 0)
			out <= i0;
		else
			out <= i1;
	 end


endmodule

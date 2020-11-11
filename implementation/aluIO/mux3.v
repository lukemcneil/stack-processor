`timescale 1ns / 1ps

// Author: Jinhao Sheng

module mux3(
    input [15:0] i0,
    input [15:0] i1,
    input [15:0] i2,
    input [15:0] i3,
    input [15:0] i4,
    input [15:0] i5,
    input [15:0] i6,
    input [15:0] i7,
    input [2:0] control,
    output reg [15:0] out
    );

	 always @(i0,i1,i2,i3,i4,i5,i6,i7,control) begin
	 case(control)
		3'b000 : out <= i0;
		3'b001 : out <= i1;
		3'b010 : out <= i2;
		3'b011 : out <= i3;
		3'b100 : out <= i4;
		3'b101 : out <= i5;
		3'b110 : out <= i6;
		default : out <= i7;
	 endcase
	 end


endmodule

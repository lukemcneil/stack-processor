`timescale 1ns / 1ps

// Author: Jinhao Sheng

// This component is a 3 bit mux with 16 bit inputs.

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
    output reg [15:0] dout
    );

	 always @(i0,i1,i2,i3,i4,i5,i6,i7,control) begin
	 case(control)
		3'b000 : dout <= i0;
		3'b001 : dout <= i1;
		3'b010 : dout <= i2;
		3'b011 : dout <= i3;
		3'b100 : dout <= i4;
		3'b101 : dout <= i5;
		3'b110 : dout <= i6;
		default : dout <= i7;
	 endcase
	 end


endmodule

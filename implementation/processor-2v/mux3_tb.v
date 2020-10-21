`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:07 10/20/2020
// Design Name:   mux3
// Module Name:   C:/Users/shengj1/Desktop/2021a-project-2v/implementation/mux3/mux3_test.v
// Project Name:  mux3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux3_test;

	// Inputs
	reg [15:0] i0;
	reg [15:0] i1;
	reg [15:0] i2;
	reg [15:0] i3;
	reg [15:0] i4;
	reg [15:0] i5;
	reg [15:0] i6;
	reg [15:0] i7;
	reg [2:0] control;
	
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux3 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.control(control),
		.out(out)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 1;
		i2 = 2;
		i3 = 3;
		i4 = 4;
		i5 = 5;
		i6 = 6;
		i7 = 7;
		control = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		repeat (7) begin
			case(control)
				3'b000 : if(out == i0) $display("PASS!");
				3'b001 : if(out == i1) $display("PASS!");
				3'b010 : if(out == i2) $display("PASS!");
				3'b011 : if(out == i3) $display("PASS!");
				3'b100 : if(out == i4) $display("PASS!");
				3'b101 : if(out == i5) $display("PASS!");
				3'b110 : if(out == i6) $display("PASS!");
				default: if(out == i7) $display("PASS!");
			endcase

			control = control + 1;
			#10;
		end
	end

endmodule
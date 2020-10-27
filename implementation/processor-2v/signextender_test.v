`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:16 10/26/2020
// Design Name:   signextender
// Module Name:   C:/Users/shengj1/Desktop/2021a-project-2v/implementation/processor-2v/signextender_test.v
// Project Name:  processor-2v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signextender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module signextender_test;

	// Inputs
	reg [11:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	signextender uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = b'100000000000;

		// Wait 100 ns for global reset to finish
		#100;
		
		if(out == b'1111100000000000) $display("PASS!");
		else $display("FAIL!");
        
		// Add stimulus here

	end
      
endmodule


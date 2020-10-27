`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:52:37 10/26/2020
// Design Name:   leftshifter
// Module Name:   C:/Users/shengj1/Desktop/2021a-project-2v/implementation/processor-2v/leftshifter_test.v
// Project Name:  processor-2v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: leftshifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module leftshifter_test;

	// Inputs
	reg [11:0] in;

	// Outputs
	wire [12:0] out;

	// Instantiate the Unit Under Test (UUT)
	leftshifter uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 12;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(out == 48) $display("PASS!");
		else $display("FAIL!");
	end
      
endmodule


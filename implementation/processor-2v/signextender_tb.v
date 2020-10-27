`timescale 1ns / 1ps

module signextender_tb;

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
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 'b100000000000;
		#10;
		if(out == 'b1111100000000000) $display("PASS!");
		else $display("FAIL!");
	end
      
endmodule


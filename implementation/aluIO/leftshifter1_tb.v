`timescale 1ns / 1ps

module leftshifter1_tb;

	// Inputs
	reg [11:0] in;

	// Outputs
	wire [12:0] out;

	// Instantiate the Unit Under Test (UUT)
	leftshifter1 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		in = 12;
		#10;
		// Add stimulus here
		if(out == 24) $display("PASS!");
		else $display("FAIL!");
	end
      
endmodule


`timescale 1ns / 1ps

module signextender_tb;

	// Inputs
	reg [11:0] in;

	// Outputs
	wire signed [15:0] out;
	
	integer fails;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	signextender uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = -2048; i < 2048; i = i + 1) begin
			in = i;
			#10;
			if (out != i)
				fails = fails + 1;
		end
			
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


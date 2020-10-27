`timescale 1ns / 1ps

module leftshifter12_tb;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [15:0] out;
	
	integer fails;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	leftshifter12 uut (
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
		for (i = 0; i < 16; i = i + 1) begin
			in = i;
			#10;
			if (out != ((2**12) * i))
				fails = fails + 1;
		end
			
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


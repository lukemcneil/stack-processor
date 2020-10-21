`timescale 1ns / 1ps

module merger_3b13b_tb;

	// Inputs
	reg [2:0] a;
	reg [12:0] b;

	// Outputs
	wire [15:0] r;

	// Instantiate the Unit Under Test (UUT)
	merger_3b13b uut (
		.a(a), 
		.b(b), 
		.r(r)
	);
	
	integer fails;

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 3'b111;
		b = 13'b0000000000111;
		#10;
		if (r != 16'b1110000000000111) begin
			$display("FAIL: expected %d, actual %d", 16'b1110000000000111, r);
			fails = fails + 1;
		end
		
		a = 3'b110;
		b = 13'b0101000100100;
		#10;
		if (r != 16'b1100101000100100) begin
			$display("FAIL: expected %d, actual %d", 16'b1100101000100100, r);
			fails = fails + 1;
		end
		
		a = 0;
		b = 0;
		#10;
		if (r != 0) begin
			$display("FAIL: expected %d, actual %d", 0, r);
			fails = fails + 1;
		end
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


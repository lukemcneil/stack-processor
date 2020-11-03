`timescale 1ns / 1ps

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
	
	integer fails;

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
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		repeat (8) begin
			case(control)
				3'b000 : if(out != i0) fails = fails + 1;
				3'b001 : if(out != i1) fails = fails + 1;
				3'b010 : if(out != i2) fails = fails + 1;
				3'b011 : if(out != i3) fails = fails + 1;
				3'b100 : if(out != i4) fails = fails + 1;
				3'b101 : if(out != i5) fails = fails + 1;
				3'b110 : if(out != i6) fails = fails + 1;
				default: if(out != i7) fails = fails + 1;
			endcase

			control = control + 1;
			#10;
		end
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end

endmodule
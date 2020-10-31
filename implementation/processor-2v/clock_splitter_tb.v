`timescale 1ns / 1ps

module clock_splitter_tb;

	// Inputs
	reg CLK;

	// Outputs
	wire slowCLK;

	// Instantiate the Unit Under Test (UUT)
	clock_splitter uut (
		.CLK(CLK), 
		.slowCLK(slowCLK)
	);
	
	// use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   initial    // Clock process for CLK
     begin
        #OFFSET;
        forever
          begin
             CLK = 1'b0;
             #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = 1'b1;
             #(PERIOD*DUTY_CYCLE);
          end
     end

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


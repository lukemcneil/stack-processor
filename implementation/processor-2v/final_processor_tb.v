`timescale 1ns / 1ps

module final_processor_tb;

	// Inputs
	reg [15:0] getin;
	reg CLK;
	reg reset;

	// Outputs
	wire [15:0] top_of_stack;
	wire [15:0] second_of_stack;

	// Instantiate the Unit Under Test (UUT)
	final_processor uut (
		.getin(getin), 
		.CLK(CLK), 
		.reset(reset), 
		.top_of_stack(top_of_stack), 
		.second_of_stack(second_of_stack)
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
		getin = 0;
		CLK = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#PERIOD;
		#PERIOD;
		#PERIOD;
		reset = 0;
		$display("now %t", $time);
	end
      
endmodule


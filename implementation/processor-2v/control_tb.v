`timescale 1ns / 1ps

module control_tb;

	// Inputs
	reg [15:0] inst;
	reg reset;
	reg CLK;

	// Outputs
	wire [2:0] stackOP;
	wire [1:0] rStackOP;
	wire [2:0] stackControl;
	wire [2:0] PCControl;
	wire MemWrite;
	wire PCWrite;
	
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

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.inst(inst), 
		.reset(reset), 
		.CLK(CLK), 
		.stackOP(stackOP), 
		.rStackOP(rStackOP), 
		.stackControl(stackControl), 
		.PCControl(PCControl), 
		.MemWrite(MemWrite), 
		.PCWrite(PCWrite)
	);

	initial begin
		// Initialize Inputs
		inst = 0;
		reset = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		inst = 'h0000;
		#PERIOD;
		inst = 'h0001;
		#PERIOD;
		inst = 'h0002;
		#PERIOD;
		inst = 'h0003;
		#PERIOD;
		inst = 'h0004;
		#PERIOD;
		inst = 'h0005;
		#PERIOD;
		inst = 'h0006;
		#PERIOD;
		inst = 'h0007;
		#PERIOD;
		inst = 'h0008;
		#PERIOD;
		inst = 'h0009;
		#PERIOD;
		inst = 'h000A;
		#PERIOD;
		inst = 'h000B;
		#PERIOD;
		
		inst = 'h1000;
		#PERIOD;
		inst = 'h2000;
		#PERIOD;
		inst = 'h3000;
		#PERIOD;
		inst = 'h4000;
		#PERIOD;
		inst = 'h5000;
		#PERIOD;
		inst = 'h6000;
		#PERIOD;
		inst = 'h7000;
		#PERIOD;
		inst = 'h8000;
		#PERIOD;
	end
      
endmodule


`timescale 1ns / 1ps

module integration_updating_pc_tb;

	// Inputs
	reg PCWrite;
	reg [2:0] PCControl;
	reg [1:0] RStackOP;
	reg CLK;
	reg Reset;

	// Outputs
	wire Overflow;
	wire [15:0] PC_out;
	
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
	integration_updating_pc uut (
		.PCWrite(PCWrite), 
		.PCControl(PCControl), 
		.RStackOP(RStackOP), 
		.CLK(CLK), 
		.Reset(Reset), 
		.Overflow(Overflow),
		.PC_out(PC_out)
	);

	initial begin
		// Initialize Inputs
		PCWrite = 0;
		PCControl = 0;
		RStackOP = 0;
		CLK = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Reset = 1;
		#PERIOD;
		Reset = 0;
		
//		TEST: PC counts up by 2
		PCWrite = 1;
		PCControl = 4;
		#PERIOD;
		#PERIOD;
		if (PC_out != 2)
			$display("fail: expected %d, actual %d", 2, PC_out);
		#PERIOD;
		if (PC_out != 4)
			$display("fail: expected %d, actual %d", 4, PC_out);
			
		PCWrite = 0;
		#(2*PERIOD);
		if (PC_out != 4)
			$display("fail: expected %d, actual %d", 4, PC_out);

		RStackOP = 1;
		#PERIOD;
		RStackOP = 0;
		
		PCWrite = 1;
		PCControl = 4;
		#(4*PERIOD);
		
		PCWrite = 0;
		
		PCWrite = 1;
		PCControl = 0;
		#PERIOD;	
		#PERIOD;
		
		PCWrite = 0;
		#(5*PERIOD);
		
		PCWrite = 1;
		PCControl = 4;
		#(3*PERIOD);
		
		PCWrite = 0;
	end
      
endmodule


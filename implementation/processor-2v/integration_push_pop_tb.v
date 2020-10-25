`timescale 1ns / 1ps

module integration_push_pop_tb;

	// Inputs
	reg [2:0] stackOP;
	reg [3:0] aluOP;
	reg reset;
	reg CLK;
	reg [15:0] immediate;
	reg [2:0] mux_selector;

	// Outputs
	wire Overflow;
	reg [15:0] outA;
	reg [15:0] outB;

	// Instantiate the Unit Under Test (UUT)
	integration_push_pop uut (
		.stackOP(stackOP), 
		.aluOP(aluOP), 
		.reset(reset), 
		.CLK(CLK), 
		.immediate(immediate), 
		.mux_selector(mux_selector), 
		.Overflow(Overflow)
	);
	
	// use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;
	
	integer i;
	integer fails;

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
	  
	  
	task resetStack;
		begin
			reset = 1;
			stackOP = 0;
			#PERIOD;
			reset = 0;
		end
	endtask;

	task pushi;
		input [15:0] imm;
		begin
			stackOP = 1;
			mux_selector = 1;
			immediate = imm;
			#PERIOD;
		end
	endtask;
	
	task add;
		begin
			stackOP = 2;
			aluOP = 0;
			mux_selector = 0;
			#PERIOD;
		end
	endtask;

	task dup;
		begin
			stackOP = 1;
			aluOP = 5;
			mux_selector = 0;
			#PERIOD;
		end
	endtask;
	
	task drop;
		begin
			stackOP = 3;
			#PERIOD;
		end
	endtask;
	
	task slt;
		begin
			stackOP = 2;
			aluOP = 9;
			mux_selector = 0;
			#PERIOD;
		end
	endtask;

	initial begin
		// Initialize Inputs
		stackOP = 0;
		aluOP = 0;
		reset = 0;
		CLK = 0;
		immediate = 0;
		mux_selector = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
//		TEST ADD
		pushi(1);
		pushi(2);
		add();
		
		
		stackOP = 0;
	end
      
endmodule


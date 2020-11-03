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
	wire [15:0] inst;
	
	integer fails;
	integer i;
	
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
		.PC_out(PC_out),
		.inst(inst)
	);

	initial begin
		// Initialize Inputs
		PCWrite = 0;
		PCControl = 0;
		RStackOP = 0;
		CLK = 0;
		Reset = 0;
		fails = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Reset = 1;
		#PERIOD;
		Reset = 0;
		
//		TEST: PC counts up by 2 and RStack
		PCWrite = 1;
		PCControl = 4;
		#OFFSET;
		if (PC_out !== 0) begin
			$display("fail at time %t: expected %d, actual %d", $time, 0, PC_out);
			fails = fails + 1;
		end
		#PERIOD;
		if (PC_out !== 2) begin
			$display("fail at time %t: expected %d, actual %d", $time, 2, PC_out);
			fails = fails + 1;
		end
		#PERIOD;
		if (PC_out !== 4) begin
			$display("fail at time %t: expected %d, actual %d", $time, 4, PC_out);
			fails = fails + 1;
		end
		#OFFSET;
		PCWrite = 0;
		#(4*PERIOD);
		if (PC_out !== 4) begin
			$display("fail at time %t: expected %d, actual %d", $time, 4, PC_out);
			fails = fails + 1;
		end

		RStackOP = 1; // push 6 onto RStack
		#PERIOD;
		RStackOP = 0;
		
		PCWrite = 1; // increment PC a couple more times
		PCControl = 4;
		#(4*PERIOD);
		
		PCWrite = 0; // stop writing
		PCControl = 0; // choose the top of return stack to put in PC
		
		#(4*PERIOD);
		
		PCWrite = 1; // write to PC
		RStackOP = 3; // pop of RStack
		#PERIOD;
		RStackOP = 0;
		PCWrite = 0;
		if (PC_out !== 6) begin
			$display("fail at time %t: expected %d, actual %d", $time, 6, PC_out);
			fails = fails + 1;
		end

		PCWrite = 0;
		PCControl = 4; // go back to incrementing PC
		#(5*PERIOD);
		
		PCWrite = 1;
		#(5*PERIOD);
		
		if (PC_out !== 16) begin
			$display("fail at time %t: expected %d, actual %d", $time, 16, PC_out);
			fails = fails + 1;
		end
		
		PCWrite = 0;
		PCControl = 4;
		Reset = 1;
		#(5*PERIOD);
		Reset = 0;
		
//		TEST: instruction memory
		PCWrite = 1;
		for (i = 0; i < 12; i = i + 1) begin
			#PERIOD;
			if (inst !== i) begin
				$display("fail at time %t: expected %d, actual %d", $time, i, inst);
				fails = fails + 1;
			end
		end
		
		for (i = 1; i < 9; i = i + 1) begin
			#PERIOD;
			if (inst !== i << 12) begin
				$display("fail at time %t: expected %d, actual %d", $time, i << 12, inst);
				fails = fails + 1;
			end
		end
		
		PCWrite = 0;
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


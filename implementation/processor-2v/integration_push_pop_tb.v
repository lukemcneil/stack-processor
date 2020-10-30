`timescale 1ns / 1ps

module integration_push_pop_tb;

	// Inputs
	reg [2:0] stackOP;
	reg [3:0] aluOP;
	reg reset;
	reg CLK;
	reg [15:0] immediate;
	reg mux_selector;

	// Outputs
	wire Overflow;
	wire signed [15:0] topOfStack;
	wire signed [15:0] secondOfStack;
	wire signed [15:0] ALU_out;

	// Instantiate the Unit Under Test (UUT)
	integration_push_pop uut (
		.stackOP(stackOP), 
		.aluOP(aluOP), 
		.reset(reset), 
		.CLK(CLK), 
		.immediate(immediate), 
		.mux_selector(mux_selector), 
		.Overflow(Overflow),
		.aOut(topOfStack),
		.bOut(secondOfStack),
		.ALU_out(ALU_out)
	);
	
	// use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;
	
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
	
	task sub;
		begin
			stackOP = 2;
			aluOP = 1;
			mux_selector = 0;
			#PERIOD;
		end
	endtask;
	
	task or2;
		begin
			stackOP = 2;
			aluOP = 3;
			mux_selector = 0;
			#PERIOD;
		end
	endtask;
	
	task beq;
		begin
			stackOP = 4;
			aluOP = 7;
			#(PERIOD/2);
		end
	endtask;
	
	task bez;
		begin
			stackOP = 4;
			aluOP = 8;
			#(PERIOD/2);
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
	
	task over;
		begin
			stackOP = 1;
			aluOP = 6;
			mux_selector = 0;
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
	
	task swap;
		begin
			stackOP = 5;
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
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
//		TEST add
		resetStack();
		pushi(1);
		pushi(2);
		add();
		if (topOfStack !== 3) begin
			$display("FAIL: add: expected %d, actual %d", 3, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 0) begin
			$display("FAIL: add: expected %d, actual %d", 0, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST sub
		resetStack();
		pushi(1);
		pushi(2);
		sub();
		if (topOfStack !== -1) begin
			$display("FAIL: sub: expected %d, actual %d", -1, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 0) begin
			$display("FAIL: sub: expected %d, actual %d", 0, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST or
		resetStack();
		pushi(1);
		pushi(3);
		or2();
		if (topOfStack !== 3) begin
			$display("FAIL: or: expected %d, actual %d", 3, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 0) begin
			$display("FAIL: or: expected %d, actual %d", 0, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST beq
		resetStack();
		pushi(1);
		pushi(1);
		beq();
		if (ALU_out !== 1) begin
			$display("FAIL: beq: expected %d, actual %d", 1, ALU_out);
			fails = fails + 1;
		end
		#(PERIOD/2);
		resetStack();
		pushi(2);
		pushi(1);
		beq();
		if (ALU_out !== 0) begin
			$display("FAIL: beq: expected %d, actual %d", 0, ALU_out);
			fails = fails + 1;
		end
		#(PERIOD/2);
		
//		TEST bez
		resetStack();
		pushi(7);
		pushi(0);
		bez();
		if (ALU_out !== 1) begin
			$display("FAIL: bez: expected %d, actual %d", 1, ALU_out);
			fails = fails + 1;
		end
		#(PERIOD/2);
		resetStack();
		pushi(7);
		pushi(1);
		bez();
		if (ALU_out !== 0) begin
			$display("FAIL: bez: expected %d, actual %d", 0, ALU_out);
			fails = fails + 1;
		end
		#(PERIOD/2);
		
//		TEST dup
		resetStack();
		pushi(3);
		dup();
		if (topOfStack !== 3) begin
			$display("FAIL: dup: expected %d, actual %d", 3, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 3) begin
			$display("FAIL: dup: expected %d, actual %d", 3, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST drop
		resetStack();
		pushi(3);
		pushi(4);
		pushi(5);
		drop();
		if (topOfStack !== 4) begin
			$display("FAIL: drop: expected %d, actual %d", 4, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 3) begin
			$display("FAIL: drop: expected %d, actual %d", 3, secondOfStack);
			fails = fails + 1;
		end
		drop();
		drop();
		if (topOfStack !== 0) begin
			$display("FAIL: drop: expected %d, actual %d", 0, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 0) begin
			$display("FAIL: drop: expected %d, actual %d", 0, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST over
		resetStack();
		pushi(3);
		pushi(7);
		over();
		if (topOfStack !== 3) begin
			$display("FAIL: over: expected %d, actual %d", 3, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 7) begin
			$display("FAIL: over: expected %d, actual %d", 7, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST slt
		resetStack();
		pushi(1);
		pushi(2);
		slt();
		if (topOfStack !== 1) begin
			$display("FAIL: slt: expected %d, actual %d", 1, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 0) begin
			$display("FAIL: slt: expected %d, actual %d", 0, secondOfStack);
			fails = fails + 1;
		end
		resetStack();
		pushi(2);
		pushi(2);
		slt();
		if (topOfStack !== 0) begin
			$display("FAIL: slt: expected %d, actual %d", 1, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 0) begin
			$display("FAIL: slt: expected %d, actual %d", 0, secondOfStack);
			fails = fails + 1;
		end
		
//		TEST swap
		resetStack();
		pushi(3);
		pushi(7);
		swap();
		if (topOfStack !== 3) begin
			$display("FAIL: swap: expected %d, actual %d", 3, topOfStack);
			fails = fails + 1;
		end
		if (secondOfStack !== 7) begin
			$display("FAIL: swap: expected %d, actual %d", 7, secondOfStack);
			fails = fails + 1;
		end
		
		stackOP = 0;
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


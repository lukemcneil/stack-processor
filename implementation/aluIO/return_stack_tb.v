`timescale 1ns / 1ps

module return_stack_tb;

	// Inputs
	reg [1:0] stackOP;
	reg [15:0] w;
	reg reset;
   reg CLK;

	// Outputs
	wire signed [15:0] a;
	
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

	// Instantiate the Unit Under Test (UUT)
	return_stack uut (
		.a(a), 
		.stackOP(stackOP), 
		.w(w), 
		.reset(reset),
		.CLK(CLK)
	);
	
	task push;
		input [15:0] val;
		begin
			stackOP = 1;
			w = val;
			#PERIOD;
		end
	endtask
	
	task pop;
		begin
			stackOP = 3;
			#PERIOD;	
		end
	endtask
	
	task resetStack;
		begin
			reset = 1;
			stackOP = 0;
			#PERIOD;
			reset = 0;
		end
	endtask;
	
	initial begin
		// Initialize Inputs
		CLK = 0;
		stackOP = 0;
		w = 0;
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		
		resetStack();
		
		// Test push
		push(1);
		if (a != 1) begin
			$display("FAIL: push: expected %d, actual %d", 1, a);
			fails = fails + 1;
		end
		resetStack();
		
		// Test pop
		push(2);
		push(4);
		pop();
		if (a != 2) begin
			$display("FAIL: pop: expected %d, actual %d", 2, a);
			fails = fails + 1;
		end
		pop();
		if (a != 0) begin
			$display("FAIL: pop: expected %d, actual %d", 0, a);
			fails = fails + 1;
		end
		resetStack();
		
		// Test many pushes
		for (i = 0; i < 64; i = i + 1) begin
			push(i+1);
		end
		for (i = 0; i < 63; i = i + 1) begin
			pop();
		end
		if (a != 1) begin
			$display("FAIL: many pushes: expected %d, actual %d", 1, a);
			fails = fails + 1;
		end
		resetStack();
		
		// Test many pushes, 65 spot becomes 0
		for (i = 0; i < 65; i = i + 1) begin
			push(i+1);
		end
		for (i = 0; i < 64; i = i + 1) begin
			pop();
		end
		if (a != 0) begin
			$display("FAIL: lose 65: expected %d, actual %d", 0, a);
			fails = fails + 1;
		end
		resetStack();
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


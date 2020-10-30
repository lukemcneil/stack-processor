`timescale 1ns / 1ps

module integration_control_data_mem_tb;

	// Inputs
	reg [15:0] inst;
	reg [15:0] memWriteData;
	reg reset;
	reg CLK;
	reg [15:0] getinData;

	// Outputs
	wire [15:0] newPC;
	wire [15:0] stackWriteData;
	
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

	// Instantiate the Unit Under Test (UUT)
	integration_control_data_mem uut (
		.inst(inst), 
		.memWriteData(memWriteData), 
		.reset(reset), 
		.CLK(CLK), 
		.getinData(getinData), 
		.newPC(newPC), 
		.stackWriteData(stackWriteData)
	);

	initial begin
		// Initialize Inputs
		inst = 0;
		memWriteData = 0;
		reset = 0;
		CLK = 0;
		getinData = 0;
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		getinData = 'h13;
		inst = 'h0004; // getin
		#PERIOD;
		getinData = 0;
		if (stackWriteData !== 'h13) begin
			$display("FAIL: getin");
			fails = fails + 1;
		end
		
		inst = 'h3005; // j
		#PERIOD;
		if (newPC !== 'ha) begin
			$display("FAIL: j");
			fails = fails + 1;
		end
		
		inst = 'h8003; // lui 3
		#PERIOD;
		if (stackWriteData !== 'h3000) begin
			$display("FAIL: lui");
			fails = fails + 1;
		end
		
		inst = 'h7003; // pushi 3
		#PERIOD;
		if (stackWriteData !== 3) begin
			$display("FAIL: pushi");
			fails = fails + 1;
		end
		
		inst = 'h6005; // push 5
		#PERIOD;
		#PERIOD;
		if (stackWriteData !== 'h0005) begin
			$display("FAIL: push1 %t", $time);
			fails = fails + 1;
		end
		
		memWriteData = 'h3333;
		inst = 'h5002; // pop 2
		#PERIOD;
		memWriteData = 0;
		
		inst = 'h6002; // push 2
		#PERIOD;
		if (stackWriteData !== 'h3333) begin
			$display("FAIL: push2");
			fails = fails + 1;
		end
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


`timescale 1ns / 1ps

module control_tb;

	// Inputs
	reg [15:0] inst;
	reg reset;

	// Outputs
	wire [2:0] stackOP;
	wire [1:0] rStackOP;
	wire [2:0] stackControl;
	wire [2:0] PCControl;
	wire [3:0] ALUOP;
	wire MemWrite;
	wire PCWrite;
	
	integer fails;
	
	// use this if your design contains sequential logic
   parameter   PERIOD = 20;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.inst(inst), 
		.reset(reset),
		.stackOP(stackOP), 
		.rStackOP(rStackOP), 
		.stackControl(stackControl), 
		.PCControl(PCControl), 
		.MemWrite(MemWrite), 
		.PCWrite(PCWrite),
		.ALUOP(ALUOP)
	);

	initial begin
		// Initialize Inputs
		inst = 0;
		reset = 0;
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		inst = 'h0000;
		#PERIOD;
		if (stackOP != 2 ||
				rStackOP != 0 ||
				ALUOP != 0 ||
				stackControl != 3 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: add");
			fails = fails + 1;
		end
		inst = 'h0001;
		#PERIOD;
		if (stackOP != 1 ||
				rStackOP != 0 ||
				ALUOP != 5 ||
				stackControl != 3 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: dup");
			fails = fails + 1;
		end
		inst = 'h0002;
		#PERIOD;
		if (stackOP != 3 ||
				rStackOP != 0 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: drop");
			fails = fails + 1;
		end
		inst = 'h0003;
		#PERIOD;
		if (stackOP != 0 ||
				rStackOP != 0 ||
				MemWrite != 0 ||
				PCWrite != 0) begin
			$display("FAIL: halt");
			fails = fails + 1;
		end
		inst = 'h0004;
		#PERIOD;
		if (stackOP != 1 ||
				rStackOP != 0 ||
				stackControl != 4 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: getin");
			fails = fails + 1;
		end
		inst = 'h0005;
		#PERIOD;
		if (stackOP != 3 ||
				rStackOP != 0 ||
				PCControl != 1 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: js");
			fails = fails + 1;
		end
		inst = 'h0006;
		#PERIOD;
		if (stackOP != 1 ||
				rStackOP != 0 ||
				ALUOP != 6 ||
				stackControl != 3 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: over");
			fails = fails + 1;
		end
		inst = 'h0007;
		#PERIOD;
		if (stackOP != 2 ||
				rStackOP != 0 ||
				ALUOP != 3 ||
				stackControl != 3 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: or");
			fails = fails + 1;
		end
		inst = 'h0008;
		#PERIOD;
		if (stackOP != 0 ||
				rStackOP != 3 ||
				PCControl != 0 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: return");
			fails = fails + 1;
		end
		inst = 'h0009;
		#PERIOD;
		if (stackOP != 2 ||
				rStackOP != 0 ||
				ALUOP != 9 ||
				stackControl != 3 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: slt");
			fails = fails + 1;
		end
		inst = 'h000A;
		#PERIOD;
		if (stackOP != 2 ||
				rStackOP != 0 ||
				ALUOP != 1 ||
				stackControl != 3 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: sub");
			fails = fails + 1;
		end
		inst = 'h000B;
		#PERIOD;
		if (stackOP != 5 ||
				rStackOP != 0 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: swap");
			fails = fails + 1;
		end
		
		inst = 'h1000;
		#PERIOD;
		if (stackOP != 4 ||
				rStackOP != 0 ||
				ALUOP != 7 ||
				PCControl != 3 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: beq");
			fails = fails + 1;
		end
		inst = 'h2000;
		#PERIOD;
		if (stackOP != 3 ||
				rStackOP != 0 ||
				ALUOP != 8 ||
				PCControl != 3 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: bez");
			fails = fails + 1;
		end
		inst = 'h3000;
		#PERIOD;
		if (stackOP != 0 ||
				rStackOP != 0 ||
				PCControl != 2 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: j");
			fails = fails + 1;
		end
		inst = 'h4000;
		#PERIOD;
		if (stackOP != 0 ||
				rStackOP != 1 ||
				PCControl != 2 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: jal");
			fails = fails + 1;
		end
		inst = 'h5000;
		#PERIOD;
		if (stackOP != 3 ||
				rStackOP != 0 ||
				PCControl != 4 ||
				MemWrite != 1 ||
				PCWrite != 1) begin
			$display("FAIL: pop");
			fails = fails + 1;
		end
		inst = 'h6000;
		#PERIOD;
		if (stackOP != 1 ||
				rStackOP != 0 ||
				stackControl != 2 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: push");
			fails = fails + 1;
		end
		inst = 'h7000;
		#PERIOD;
		if (stackOP != 1 ||
				rStackOP != 0 ||
				stackControl != 0 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: pushi");
			fails = fails + 1;
		end
		inst = 'h8000;
		#PERIOD;
		if (stackOP != 1 ||
				rStackOP != 0 ||
				stackControl != 1 ||
				PCControl != 4 ||
				MemWrite != 0 ||
				PCWrite != 1) begin
			$display("FAIL: lui");
			fails = fails + 1;
		end
		
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


`timescale 1ns / 1ps

module register_stack_tb;

	// Inputs
	reg [2:0] stackOP;
	reg [15:0] w;
	reg CLK;

	// Outputs
	wire [15:0] a;
	wire [15:0] b;
	
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
	register_stack uut (
		.stackOP(stackOP), 
		.w(w), 
		.a(a), 
		.b(b),
		.CLK(CLK)
	);
	
	function push;
		input [15:0] val;
		begin
			stackOP = 1;
			w = val;
		end
	endfunction
	
	function add;
		input _;
		begin
			stackOP = 2;
			w = b + a;
		end
	endfunction
	
	function sub;
		input _;
		begin
			stackOP = 2;
			w = b - a;
		end
	endfunction
	
	function or2;
		input _;
		begin
			stackOP = 2;
			w = b | a;
		end
	endfunction
	
	function pop;
		input _;
		stackOP = 3;
	endfunction
	
	function pop2;
		input _;
		stackOP = 4;
	endfunction
	
	function swap;
		input _;
		stackOP = 5;
	endfunction

	function dup;
		input _;
		begin
			stackOP = 1;
			w = a;
		end
	endfunction
	
	function over;
		input _;
		begin
			stackOP = 1;
			w = b;
		end
	endfunction
	
	function slt;
		input _;
		begin
			stackOP = 2;
			if (b < a)
				w = 1;
			else
				w = 0;
		end
	endfunction
	
	initial begin
		// Initialize Inputs
		CLK = 0;
		stackOP = 0;
		w = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		push(1);
		#PERIOD;		
		
		push(2);
		#PERIOD;
		
		slt(0);
		#PERIOD;
		
		stackOP = 0;
	end
      
endmodule


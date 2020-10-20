`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:20:21 10/19/2020
// Design Name:   register_stack
// Module Name:   /home/luke/csse232/project/2021a-project-2v/implementation/processor-2v/register_stack_tb.v
// Project Name:  processor-2v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_stack
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

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
		
		push(3);
		#PERIOD;
		
		push(4);
		#PERIOD;
		
		add(0);
		#PERIOD;
		
		sub(0);
		#PERIOD;
		
		add(0);
		#PERIOD;

		push(7);
		#PERIOD;
		
		swap(0);
		#PERIOD;
		
		pop2(0);
		#PERIOD;
		
		stackOP = 0;
	end
      
endmodule


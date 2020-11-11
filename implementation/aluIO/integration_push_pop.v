`timescale 1ns / 1ps

// This integration test puts together the stack, ALU, and a mux1.

module integration_push_pop(
   input [2:0] stackOP,
	input [3:0] aluOP,
	input reset,
	input CLK,
	input [15:0] immediate,
	input mux_selector,
	output Overflow,
	output wire [15:0] aOut,
	output wire [15:0] bOut,
	output wire [15:0] ALU_out
   );
	
	wire [15:0] mux_out;
	
	mux1 mux (
		.i0(ALU_out),
		.i1(immediate),
		.control(mux_selector),
		.out(mux_out)
	);
	
	register_stack stack (
		.a(aOut),
		.b(bOut),
		.stackOP(stackOP), 
		.w(mux_out),
		.reset(reset),
		.CLK(CLK)
	);
	
	alu alu (
		.Oper(aluOP), 
		.A(aOut),
		.B(bOut),
		.ALU_Out(ALU_out),
		.Overflow(Overflow)
	);

endmodule

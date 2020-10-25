`timescale 1ns / 1ps

module integration_push_pop(
   input [2:0] stackOP,
	input [3:0] aluOP,
	input reset,
	input CLK,
	input [15:0] immediate,
	input [2:0] mux_selector,
	output Overflow
//	output wire [15:0] a,
//	output wire [15:0] b
   );
	
	wire [15:0] a;
	wire [15:0] b;
	wire [15:0] ALU_out;
	wire [15:0] mux_out;
	
	mux3 mux (
		.i0(ALU_out),
		.i1(immediate),
		.control(mux_selector),
		.out(mux_out)
	);
	
	register_stack stack (
		.a(a),
		.b(b),
		.stackOP(stackOP), 
		.w(mux_out),
		.reset(reset),
		.CLK(CLK)
	);
	
	alu alu (
		.Oper(aluOP), 
		.A(a),
		.B(b),
		.ALU_Out(ALU_out),
		.Overflow(Overflow)
	);

endmodule

`timescale 1ns / 1ps

// This integration test puts together PC, a mux3, the adder, 
// return stack, and instruction memory.

module integration_updating_pc(
   input PCWrite,
   input [2:0] PCControl,
   input [1:0] RStackOP,
	input CLK,
	input Reset,
	output Overflow,
	output wire [15:0] PC_out,
	output wire [15:0] inst
   );
	 
	wire [15:0] Adder_out;
	wire [15:0] Mux_out;
	wire [15:0] RStack_out;
	
	register16b PC (
		.D(Mux_out),
		.CE(PCWrite),
		.C(CLK),
		.R(Reset),
		.Q(PC_out)
	);
	
	 mux3 mux (
		.i0(RStack_out),
		.i4(Adder_out),
		.control(PCControl),
		.out(Mux_out)
	);
	
	alu adder (
		.Oper(0),
		.A(2),
		.B(PC_out),
		.ALU_Out(Adder_out),
		.Overflow(Overflow)
	);
	
	return_stack rStack (
		.a(RStack_out),
		.stackOP(RStackOP), 
		.w(Adder_out),
		.reset(Reset),
		.CLK(CLK)
	);
	
	blockmemory16kx1 instMemory (
		.clka(CLK),
		.addra(PC_out[12:1]),
		.wea(0),
		.dina(0),
		.douta(inst)
	);

endmodule

`timescale 1ns / 1ps

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

	reg [15:0] PC;

	assign PC_out = PC;
	
	always @ (posedge CLK) begin
		if (Reset == 1)
			PC = 0;
		else
			if (PCWrite == 1)
				PC = Mux_out;
	end
	 
	 mux3 mux (
		.i0(RStack_out),
		.i4(Adder_out),
		.control(PCControl),
		.out(Mux_out)
	);
	
	alu alu (
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
		.addra(PC_out >> 1),
		.douta(inst)
	);


endmodule

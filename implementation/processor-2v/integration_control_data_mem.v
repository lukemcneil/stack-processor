`timescale 1ns / 1ps

module integration_control_data_mem(
   input [15:0] inst,
   input [15:0] memWriteData,
	input reset,
	input CLK,
	output wire [15:0] newPC,
	output wire [15:0] stackWriteData
   );
	
	wire [2:0] stackOP;
	wire [1:0] rStackOP;
	wire [2:0] stackControl;
	wire [2:0] PCControl;
	wire MemWrite;
	wire PCWrite;
	wire [3:0] ALUOP;
	
	wire [15:0] ls12_out;
	wire [15:0] se_out;
	wire [12:0] ls1_out;
	wire [15:0] merger_out;
	wire [15:0] dout;

	control Control (
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
	
	leftshifter12 ls12 (
		.in(inst[3:0]),
		.out(ls12_out)
	);
	
	signextender se (
		.in(inst[11:0]),
		.out(se_out)
	);
	
	leftshifter1 ls1 (
		.in(inst[11:0]),
		.out(ls1_out)
	);
	
	merger_3b13b merger (
		.a('b000),
		.b(ls1_out),
		.r(merger_out)
	);
	
	blockmemory16kx1 dataMemory (
		.clka(CLK),
		.addra(merger_out),
		.wea(merger_out),
		.dina(memWriteData),
		.douta(dout),
		.ena(MemoryWrite)
	);
	
	mux3 PCControlMux (
		.i2(merger_out),
		.control(PCControl),
		.out(newPC)
	);

	mux3 stackControlMux (
		.i0(se_out),
		.i1(ls12_out),
		.i2(dout),
		.control(stackControl),
		.out(stackWriteData)
	);

endmodule

`timescale 1ns / 1ps

module final_processor(
   input [15:0] getin,  
	input [15:0] getin2,
   input CLK,
   input reset,
	input [15:0] pc_reset_address,
   output [15:0] top_of_stack,
   output [15:0] second_of_stack,
	output [31:0] inst_count
   );

	wire [15:0] pc_out;
	wire [15:0] new_pc;
	wire [15:0] inst;
	wire [15:0] alu_out;
	wire [15:0] adder_out;
	wire [15:0] r_stack_out;
	wire [15:0] branch_mux_out;
	wire [15:0] ls12_out;
	wire [12:0] ls1_out;
	wire [15:0] se_out;	
	wire [15:0] data_mem_out;
	wire [15:0] new_top_of_stack;
	
	wire [2:0] stack_op;
	wire [1:0] r_stack_op;
	wire [2:0] stack_control;
	wire [2:0] pc_control;
	wire mem_write;
	wire pc_write;
	wire [3:0] alu_op;
	
	wire slowCLK;
	
	clock_splitter clock_splitter (
		.CLK(CLK),
		.slowCLK(slowCLK)
	);
	
	register16b_set pc (
		.din(new_pc),
		.enable(pc_write),
		.CLK(~slowCLK),
		.reset(reset),
		.dout(pc_out),
		.pc_reset_address(pc_reset_address)
	);

//	register16b pc (
//		.D(new_pc),
//		.CE(pc_write),
//		.C(~slowCLK),
//		.R(reset),
//		.Q(pc_out)
//	);
	
	alu adder (
		.Oper(0), 
		.A(pc_out),
		.B(2), 
		.ALU_Out(adder_out)
//		.Overflow(Overflow)
	);
	
	mux3 pc_control_mux (
		.i0(r_stack_out),
		.i1((top_of_stack << 1)),
		.i2({3'b000, ls1_out}),
		.i3(branch_mux_out),
		.i4(adder_out),
		.control(pc_control),
		.dout(new_pc)
	);
	
	blockmemory16kx1 inst_memory (
		.clka(slowCLK),
		.addra(pc_out[12:1]),
		.wea(0),
		.dina(0),
		.douta(inst)
	);
	
	control control (
		.inst(inst), 
		.reset(reset),
		.CLK(slowCLK),
		.stackOP(stack_op), 
		.rStackOP(r_stack_op), 
		.stackControl(stack_control), 
		.PCControl(pc_control), 
		.MemWrite(mem_write), 
		.PCWrite(pc_write),
		.ALUOP(alu_op),
		.instCount(inst_count)
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
	
	mux1 branch_mux(
		.i0(adder_out),
		.i1({3'b000, ls1_out}),
		.control(alu_out[0]),
		.dout(branch_mux_out)
	);
	
	mux3 stack_control_mux (
		.i0(se_out),
		.i1(ls12_out),
		.i2(data_mem_out),
		.i3(alu_out),
		.i4(getin),
		.i5(getin2),
		.control(stack_control),
		.dout(new_top_of_stack)
	);
	
	register_stack stack (
		.a(top_of_stack),
		.b(second_of_stack),
		.stackOP(stack_op), 
		.w(new_top_of_stack),
		.reset(reset),
		.CLK(slowCLK)
	);
	
	alu alu (
		.Oper(alu_op), 
		.A(top_of_stack),
		.B(second_of_stack),
		.ALU_Out(alu_out)
//		.Overflow(Overflow)
	);
	
	return_stack r_stack (
		.a(r_stack_out),
		.stackOP(r_stack_op),
		.w(adder_out),
		.reset(reset),
		.CLK(slowCLK)
	);
	
	blockmemory16kx1 data_memory (
		.clka(~(slowCLK & CLK)), // we need to make a clock that rises in between the rising and falling edge of the fast clock
		.addra(ls1_out[12:1]),
		.wea(mem_write),
		.dina(top_of_stack),
		.douta(data_mem_out)
	);

endmodule

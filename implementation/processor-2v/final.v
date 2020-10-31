`timescale 1ns / 1ps

module final_processor(
   input [15:0] getin,
   input CLK,
   input reset,
   output [15:0] top_of_stack,
   output [15:0] second_of_stack
   );

	wire [15:0] pc_out;
	wire new_pc;
	wire [15:0] inst;
	wire [15:0] alu_out;
	wire [15:0] adder_out;
	wire [15:0] r_stack_out;
	wire [15:0] branch_mux_out;
	wire [15:0] ls12_out;
	wire [15:0] ls1_out;
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
	
	register16b pc (
		.D(new_pc),
		.CE(pc_write),
		.C(CLK),
		.R(reset),
		.Q(pc_out)
	);
	
	alu adder (
		.Oper(0), 
		.A(pc_out),
		.B(2), 
		.ALU_Out(adder_out)
//		.Overflow(Overflow)
	);
	
	blockmemory16kx1 inst_memory (
		.clka(CLK),
		.addra(pc_out[12:1]),
		.wea(0),
		.dina(0),
		.douta(inst)
	);
	
	control control (
		.inst(inst), 
		.reset(reset),
		.stackOP(stack_op), 
		.rStackOP(r_stack_op), 
		.stackControl(stack_control), 
		.PCControl(pc_control), 
		.MemWrite(mem_write), 
		.PCWrite(pc_write),
		.ALUOP(alu_op)
	);
	
	mux3 pc_control_mux (
		.i0(r_stack_out),
		.i1(top_of_stack),
		.i2({3'b000, se1_out}),
		.i3(branch_mux_out),
		.i4(adder_out),
		.control(pc_control),
		.out(new_pc)
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
		.i0(ls1_out),
		.i1(adder_out),
		.control(alu_out[0]),
		.out(branch_mux_out)
	);
	
	mux3 stack_control_mux (
		.i0(se_out),
		.i1(ls12_out),
		.i2(data_mem_out),
		.i3(alu_out),
		.i4(getin),
		.control(stack_control),
		.out(new_top_of_stack)
	);
	
	register_stack stack (
		.a(top_of_stack),
		.b(second_of_stack),
		.stackOP(stack_op), 
		.w(new_top_of_stack),
		.reset(reset),
		.CLK(CLK)
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
		.CLK(CLK)
	);
	
	blockmemory16kx1 data_memory (
		.clka(CLK),
		.addra({3'b000, ls1_out}),
		.wea(mem_write),
		.dina(alu_out),
		.douta(data_mem_out)
	);

endmodule

`timescale 1ns / 1ps

module final_processor_tb;

	// Inputs
	reg [15:0] getin;	
	reg [15:0] getin2;
	reg CLK;
	reg reset;
	reg [15:0] pc_reset_address;

	// Outputs
	wire signed [15:0] top_of_stack;
	wire signed [15:0] second_of_stack;
	wire [31:0] inst_count;

	// Instantiate the Unit Under Test (UUT)
	final_processor uut (
		.getin(getin),
		.getin2(getin2),
		.CLK(CLK), 
		.reset(reset),
		.pc_reset_address(pc_reset_address),
		.top_of_stack(top_of_stack), 
		.second_of_stack(second_of_stack),
		.inst_count(inst_count)
	);
	
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

	integer fails;

	task resetProcessor;
		begin
			reset = 1;
			#(2*PERIOD);
			reset = 0;
		end
	endtask;
	
	initial begin
		// Initialize Inputs
		getin = 0;
		getin2 = 0;
		CLK = 0;
		reset = 0;
		fails = 0;
		pc_reset_address = 332;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		getin = 3480;
		getin2 = 2;
		resetProcessor();
	
// ###########################################	
//		Test pushi and lui

// pushi 2
// lui 1
// halt

//0111000000000010
//1000000000000001
//0000000000000011

//		#(10*PERIOD);
//		if (top_of_stack !== 4096 | second_of_stack != 2) begin
//			$display("FAIL: pushi, lui");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test add

// pushi 1
// pushi 2
// pushi 3
// add
// halt

//0111000000000001
//0111000000000010
//0111000000000011
//0000000000000000
//0000000000000011

//		#(10*PERIOD);
//		if (top_of_stack !== 5 | second_of_stack != 1) begin
//			$display("FAIL: add");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test sub

// pushi 1
// pushi 2
// pushi 3
// sub
// halt

//0111000000000001
//0111000000000010
//0111000000000011
//0000000000001010
//0000000000000011

//		#(10*PERIOD);
//		if (top_of_stack !== -1 | second_of_stack != 1) begin
//			$display("FAIL: sub");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test or

// pushi 1
// pushi 2
// pushi 3
// or
// halt

//0111000000000001
//0111000000000010
//0111000000000011
//0000000000000111
//0000000000000011

//		#(10*PERIOD);
//		if (top_of_stack !== 3 | second_of_stack != 1) begin
//			$display("FAIL: or");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test slt

// pushi 1
// pushi 2
// slt
// pushi 2
// pushi 1
// slt
// halt

//0111000000000001
//0111000000000010
//0000000000001001
//0111000000000010
//0111000000000001
//0000000000001001
//0000000000000011

//		#(20*PERIOD);
//		if (top_of_stack !== 0 | second_of_stack != 1) begin
//			$display("FAIL: slt");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test dup and over

// pushi 1
// pushi 2
// over
// dup
// halt

//0111000000000001
//0111000000000010
//0000000000000110
//0000000000000001
//0000000000000011

//		#(20*PERIOD);
//		if (top_of_stack !== 1 | second_of_stack != 1) begin
//			$display("FAIL: dup, over");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test drop and swap

// pushi 1
// pushi 2
// pushi 3
// swap
// drop
// halt

//0111000000000001
//0111000000000010
//0111000000000011
//0000000000001011
//0000000000000010
//0000000000000011

//		#(20*PERIOD);
//		if (top_of_stack !== 3 | second_of_stack != 1) begin
//			$display("FAIL: drop, swap");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test getin and getin2

// getin
// getin2
// halt

//0000000000000100
//0000000000001100
//0000000000000011

//		#(20*PERIOD);
//		if (top_of_stack !== 4 | second_of_stack != 3) begin
//			$display("FAIL: getin, getin2");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test halt

// pushi 2
// halt
// pushi 3

//0111000000000010
//0000000000000011
//0111000000000011

//		#(20*PERIOD);
//		if (top_of_stack !== 2 | second_of_stack != 0 | inst_count != 2) begin
//			$display("FAIL: halt");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test j and js

// j 2
// pushi 7
// pushi 1
// pushi 6
// js
// pushi 7
// pushi 2
// halt


//0011000000000010
//0111000000000111
//0111000000000001
//0111000000000110
//0000000000000101
//0111000000000111
//0111000000000010
//0000000000000011

//		#(20*PERIOD);
//		if (top_of_stack !== 2 | second_of_stack != 1) begin
//			$display("FAIL: j, js");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test jal and return

// jal 3
// pushi 2
// halt
// pushi 1
// return

//0100000000000011
//0111000000000010
//0000000000000011
//0111000000000001
//0000000000001000

//		#(20*PERIOD);
//		if (top_of_stack !== 2 | second_of_stack != 1 | inst_count != 5) begin
//			$display("FAIL: jal, return");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test beq and bez

//	pushi 1
//	pushi 2
//	beq 11
//	pushi 3
//	pushi 3
//	beq 7
//	pushi 7
//	pushi 1
//	bez 11
//	pushi 0
//	bez 13
//	pushi 7
//	halt
//	pushi 5
//	halt

//0111000000000001
//0111000000000010
//0001000000001011
//0111000000000011
//0111000000000011
//0001000000000111
//0111000000000111
//0111000000000001
//0010000000001011
//0111000000000000
//0010000000001101
//0111000000000111
//0000000000000011
//0111000000000101
//0000000000000011

//		#(30*PERIOD);
//		if (top_of_stack !== 5 | second_of_stack != 0 | inst_count != 12) begin
//			$display("FAIL: beq, bez");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test pop and push

//	pushi 3
//	pop 300
//	pushi 2
//	pop 200
//	pushi 5
//	drop
//	push 200
//	push 300
//	pop 3
//	push 3
//	halt

//0111000000000011
//0101000100101100
//0111000000000010
//0101000011001000
//0111000000000101
//0000000000000010
//0110000011001000
//0110000100101100
//0101000000000011
//0110000000000011
//0000000000000011

//		#(30*PERIOD);
//		if (top_of_stack !== 3 | second_of_stack != 2) begin
//			$display("FAIL: pop, push");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test for loop

 
// MAIN:
//  pushi 1
//  pushi 0
// LOOP:
//  dup
//  pushi 5
//  slt
//  pushi 1
//  beq OP
//  drop
//  halt
// OP:
//  pushi 1
//  add
//  swap
//  pushi 1
//  add
//  swap
//  j LOOP

//0111000000000001
//0111000000000000
//0000000000000001
//0111000000000101
//0000000000001001
//0111000000000001
//0001000000001001
//0000000000000010
//0000000000000011
//0111000000000001
//0000000000000000
//0000000000001011
//0111000000000001
//0000000000000000
//0000000000001011
//0011000000000010

//		#(150*PERIOD);
//		if (top_of_stack !== 6 | second_of_stack != 0) begin
//			$display("FAIL: for loop");
//			fails = fails + 1;
//		end

// ###########################################	
//		Test rel prime

//MAIN:
// getin
//	jal RELPRIME
//	halt
//RELPRIME:
//	pushi 2
//RPLOOP:
//	over
//	over
//	jal GCD
//	pushi 1
//	beq RETURNM
//	pushi 1
//	add
//	j RPLOOP
//RETURNM:
//	swap
//	drop
//	return
//GCD:
//	over
//	bez RETURNB
//LOOP:
//	dup
//	bez RETURNA
//	over
//	over
//	swap
//	slt
//	bez ELSE
//	swap
//	over
//	sub
//	swap
//	j LOOP
//ELSE:
//	over
//	sub
//	j LOOP
//RETURNB:
//	swap
//	drop
//	return
//RETURNA:
//	drop
//	return

//0000000000000100
//0100000000000011
//0000000000000011
//0111000000000010
//0000000000000110
//0000000000000110
//0100000000001111
//0111000000000001
//0001000000001100
//0111000000000001
//0000000000000000
//0011000000000100
//0000000000001011
//0000000000000010
//0000000000001000
//0000000000000110
//0010000000100000
//0000000000000001
//0010000000100011
//0000000000000110
//0000000000000110
//0000000000001011
//0000000000001001
//0010000000011101
//0000000000001011
//0000000000000110
//0000000000001010
//0000000000001011
//0011000000010001
//0000000000000110
//0000000000001010
//0011000000010001
//0000000000001011
//0000000000000010
//0000000000001000
//0000000000000010
//0000000000001000

//		getin = 'h13b0;
//		#(300000*PERIOD);
//		if (top_of_stack !== 11 | second_of_stack != 0) begin
//			$display("FAIL: rel prime");
//			fails = fails + 1;
//		end

		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS %d TESTS", fails);
	end
      
endmodule


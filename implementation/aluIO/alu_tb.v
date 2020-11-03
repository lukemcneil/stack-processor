`timescale 1ns / 1ps

module alu_tb;

	// Inputs
	reg [3:0] Oper;
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire [15:0] ALU_Out;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.Oper(Oper), 
		.A(A), 
		.B(B), 
		.ALU_Out(ALU_Out),
		.Overflow(Overflow)
	);
	
	integer bad;

	initial begin
		// Initialize Inputs
		Oper = 0;
		A = 0;
		B = 0;
		bad = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
//Testing begins
		
	//Testing add
		Oper = 4'b0000;
		
		A = 4'b0110;
		B = 4'b1001;
		#10;
		if (ALU_Out != (A + B))
		begin
			$display ("add.1 bad");
			bad = bad + 1;
		end
			
		A=16'hFFFF;
		B=16'h0001;
		#10;
		if (ALU_Out != (A+B) && Overflow != 1)
		begin
			$display("add.2 bad");
			bad = bad + 1;
		end
		
		A=16'hFFFE;
		B=16'h0001;
		#10;
		if (ALU_Out != (A+B) && Overflow != 0)
		begin
			$display("add.3 bad");
			bad = bad + 1;
		end
		
		
	//Testing sub
		Oper = 4'b0001;
		
		A = 16'hBEEF;
		B = 16'hDEAD;
		#10;
		if (ALU_Out != (B-A))
		begin
			$display("sub.1 bad");
			bad = bad + 1;
		end
		
		A = 16'h1111;
		B = 16'h1111;
		#10;
		if (ALU_Out != (B-A))
		begin
			$display("sub.2 bad");
			bad = bad + 1;
		end
		
		A = 16'h0001;
		B = 16'h0000;
		#10;
		if (ALU_Out != (B-A))
		begin
			$display("sub.3 bad");
			bad = bad + 1;
		end
		
		
	//Testing AND
		Oper = 4'b0010;
		
		A = 16'hAAAA;
		B = 16'hBBBB;
		#10;
		if (ALU_Out != (A&B))
		begin
			$display("and.1 bad");
			bad = bad + 1;
		end	
			
		A = 16'h2345;
		B = 16'hABCD;
		#10;
		if (ALU_Out != (A&B))
		begin
			$display("and.2 bad");
			bad = bad + 1;
		end	
			
		A = 16'h0000;
		B = 16'hFFFF;
		#10;
		if (ALU_Out != (A&B))
		begin
			$display("and.3 bad");
			bad = bad + 1;
		end
		
		
	//Testing OR
		Oper = 4'b0011;
		
		A = 16'hAAAA;
		B = 16'hBBBB;
		#10;
		if (ALU_Out != (A|B))
		begin
			$display("or.1 bad");
			bad = bad + 1;
		end	
			
		A = 16'h2345;
		B = 16'hABCD;
		#10;
		if (ALU_Out != (A|B))
		begin
			$display("or.2 bad");
			bad = bad + 1;
		end
			
		A = 16'h0000;
		B = 16'hFFFF;
		#10;
		if (ALU_Out != (A|B))
		begin
			$display("or.3 bad");
			bad = bad + 1;
		end
		
		
	//Testing XOR
		Oper = 4'b0100;
		
		A = 16'hAAAA;
		B = 16'hBBBB;
		#10;
		if (ALU_Out != (A^B))
		begin
			$display("xor.1 bad");
			bad = bad + 1;
		end
		
		A = 16'h2345;
		B = 16'hABCD;
		#10;
		if (ALU_Out != (A^B))
		begin
			$display("xor.2 bad");
			bad = bad + 1;
		end	
		
		A = 16'h0000;
		B = 16'hFFFF;
		#10;
		if (ALU_Out != (A^B))
		begin
			$display("xor.3 bad");
			bad = bad + 1;
		end
		
		
		
	//Testing SelectA
		Oper = 4'b0101;
		
		A = 16'h1234;
		#10;
		if (ALU_Out != A)
		begin
			$display("selectA.1 bad");
			bad = bad + 1;
		end
		
		
		A = 16'h0000;
		#10;
		if (ALU_Out != A)
		begin
			$display("selectA.2 bad");
			bad = bad + 1;
		end
		
		
		A = 16'hFFFF;
		#10;
		if (ALU_Out != A)
		begin
			$display("selectA.3 bad");
			bad = bad + 1;
		end
		
		
		
		
	//Testing SelectB
		Oper = 4'b0110;
		
		B = 16'h1234;
		#10;
		if (ALU_Out != B)
		begin
			$display("selectB.1 bad");
			bad = bad + 1;
		end
		
		
		B = 16'h0000;
		#10;
		if (ALU_Out != B)
		begin
			$display("selectB.2 bad");
			bad = bad + 1;
		end
		
		
		B = 16'hFFFF;
		#10;
		if (ALU_Out != B)
		begin
			$display("selectB.3 bad");
			bad = bad + 1;
		end
		
		
		
	//Testing A==B?
		Oper = 4'b0111;
		
		A = 16'hAAAA;
		B = 16'hBBBB;
		#10;
		if (ALU_Out != 0)
		begin
			$display("AEqualsB.1 bad");
			bad = bad + 1;
		end
			
		A = 16'h0abc;
		B = 16'h0abc;
		#10;
		if (ALU_Out != 1)
		begin
			$display("AEqualsB.2 bad");
			bad = bad + 1;
		end	
		
		A = 16'b0000000000100000;
		B = 16'b0000000000010000;
		#10;
		if (ALU_Out != 0)
		begin
			$display("AEqualsB.3 bad");
			bad = bad + 1;
		end
	
		
		
	//Testing A==0?
		Oper = 4'b1000;
		
		A = 16'hCA11;
		#10;
		if (ALU_Out != 0)
		begin
			$display("AEqualsZero.1 bad");
			bad = bad + 1;
		end	
		
		A = 16'h0000;
		#10;
		if (ALU_Out != 1)
		begin
			$display("AEqualsZero.2 bad");
			bad = bad + 1;
		end
		
		A = 16'hBEEF;
		#10;
		if (ALU_Out != 0)
		begin
			$display("AEqualsZero.3 bad");
			bad = bad + 1;
		end
		
		
	//Testing B<A?
		Oper = 4'b1001;
		
		A = 16'hAAAA;
		B = 16'hBBBB;
		#10;
		if (ALU_Out != (B<A))
		begin
			$display("BLTA.1 bad");
			bad = bad + 1;
		end
			
		A = 16'hDEED;
		B = 16'hCADE;
		#10;
		if (ALU_Out != (B<A))
		begin
			$display("BLTA.2 bad");
			bad = bad + 1;
		end	
		
		A = 16'hDEAF;
		B = 16'hDEAD;
		#10;
		if (ALU_Out != (B<A))
		begin
			$display("BLTA.3 bad");
			bad = bad + 1;
		end
		
		
		#100;
		
		if (bad != 0)
			$display("%d bad tests", bad);
		else
			$display("all tests passed");

	end
      
endmodule


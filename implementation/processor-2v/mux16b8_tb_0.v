// Verilog test fixture created from schematic /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/scratch/mux16b8/mux16b8.sch - Sun Oct 10 09:39:45 2010

`timescale 1ns / 1ps

module mux16b8_tb_0();

   // Inputs
   reg [15:0] A;
   reg [15:0] B;
   reg [15:0] C;
   reg [15:0] D;
   reg [15:0] E;
   reg [15:0] F;
   reg [15:0] G;
   reg [15:0] H;
   reg [2:0]  S;

   // Output
   wire [15:0] O;
	
	// Variables
	integer i;
	integer fails;

   // Bidirs

   // Instantiate the UUT
   mux16b8 UUT (
                .A(A), 
                .B(B), 
                .C(C), 
                .D(D), 
                .E(E), 
                .F(F), 
                .G(G), 
                .H(H), 
                .S(S), 
                .O(O)
                );
   
   // Initialize Inputs
   initial begin
      A = 16'h0000;
      B = 16'h0001;
      C = 16'h0002;
      D = 16'h0003;
      E = 16'h0004;
      F = 16'h0005;
      G = 16'h0006;
      H = 16'h0007;
      S = 0;

		fails = 0;

      #100;
		for (i = 0; i < 8; i = i + 1) begin
			S = i;
			#20;
			if (O != i) begin
				$display("Fail: expected %d, got %d", i, O);
				fails = fails + 1;
			end
		end
		if (fails == 0)
			$display("All passed!");
		else
			$display("Failures: %d", fails);
   end

endmodule

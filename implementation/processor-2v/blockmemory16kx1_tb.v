`timescale 1ns / 1ps

module blockmemory16kx1_tb;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [12:0] addra;
	reg [15:0] dina;

	// Outputs
	wire [15:0] douta;

	// Instantiate the Unit Under Test (UUT)
	blockmemory16kx1 uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);
	
	integer i;
	integer fails;
	
   // use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   initial begin
			#OFFSET;
			forever begin
				clka = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clka = 1'b1;
            #(PERIOD*DUTY_CYCLE);
         end
   end
	  
	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		i = 0;
		fails = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		for (i = 0; i < 12; i = i + 1) begin
			addra = i;
			#(2*PERIOD);
			if (douta != i) begin
				$display("fail: expected %d, actual %d", i, douta);
				fails = fails + 1;
			end
		end
		
		for (i = 1; i < 9; i = i + 1) begin
			addra = i + 11;
			#(2*PERIOD);
			if (douta != (i << 12)) begin
				$display("fail: expected %d, actual %d", (i << 12), douta);
				fails = fails + 1;
			end
		end
			
		if (fails == 0)
			$display("ALL TESTS PASSED");
		else
			$display("FAILS: %d", fails);
      
	end
      
endmodule


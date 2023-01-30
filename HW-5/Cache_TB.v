`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module Cache_TB;

	// Inputs
	reg [31:0] inputAddr;
	reg [127:0] data_line;
	reg clk;

	// Outputs
	wire [31:0] outputAddr;
	wire hitBit;

	// Instantiate the Unit Under Test (UUT)
	Cache uut (
		.inputAddr(inputAddr), 
		.data_line(data_line), 
		.clk(clk), 
		.outputAddr(outputAddr), 
		.hitBit(hitBit)
	);

	initial begin
		clk = 0;
	end
	
	always #50 clk = ~clk;
	
	initial begin
		inputAddr = 32'b1;
		#200;
		
		data_line = 128'h0F0E0D0C0B0A09080706050403020100;
		#100;
		
		
		inputAddr = 32'h05;   
		#100;
		
		inputAddr = 32'h07;   
		#100;
		
		inputAddr = 32'h08;  
		#100;
		
		inputAddr = 32'h09;  
		#100;
		
		inputAddr = 32'h0A; 
		#100;
		
		inputAddr = 32'h0E; 
		#100;
		
		inputAddr = 32'h0F;
		
	end
	
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module Fetch_TB;

	// Inputs
	reg [31:0] branchTarget;
	reg clk;
	reg PCSrc;

	// Outputs
	wire [31:0] nextPC;
	wire [31:0] Instruction;
	wire hitBit;

	// Instantiate the Unit Under Test (UUT)
	Fetch uut (
		.branchTarget(branchTarget), 
		.clk(clk), 
		.PCSrc(PCSrc), 
		.nextPC(nextPC), 
		.Instruction(Instruction), 
		.hitBit(hitBit)
	);

	initial begin
		// Initialize Inputs
		branchTarget = 0;
		clk = 0;
		PCSrc = 1;
	end
	
	always #50 clk = ~clk;

endmodule


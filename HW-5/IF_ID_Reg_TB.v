`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module IF_ID_Reg_TB;

	// Inputs
	reg clk;
	reg [31:0] next_pc;
	reg [31:0] instruction;
	reg hit;

	// Outputs
	wire [31:0] instruction_out;
	wire [31:0] next_pc_out;
	wire hit_out;

	// Instantiate the Unit Under Test (UUT)
	IF_ID_Reg uut (
		.clk(clk), 
		.next_pc(next_pc), 
		.instruction(instruction), 
		.hit(hit), 
		.instruction_out(instruction_out), 
		.next_pc_out(next_pc_out), 
		.hit_out(hit_out)
	);

	initial begin 
		clk = 0;
		next_pc = 0;
		instruction = 0;
		hit = 0;
	end
	
	always #25 clk = ~clk;
		
	initial begin
		// Wait 50 ns for global reset to finish
		#50;
		next_pc = 32'hAAAAAAAA;
		instruction = 32'h11111111;
		hit = 1;
		
		#50;
		next_pc = 32'hCCCCCCCC;
		instruction = 32'h33333333;
		hit = 0;
		
		#50;
		next_pc = 32'hFFFFFFFF;
		instruction = 32'h77777777;
		hit = 1;
	end
      
endmodule


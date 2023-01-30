`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module IF_ID_Reg(
	input clk,									// CLK(1 bit)
	input [31:0] next_pc,					// next_pc(32 bits)
	input [31:0] instruction,				// instruction(32 bits)
	input hit,									// hit bit(1 bit)
	
	output reg [31:0] instruction_out,	// instruction_out(32 bits)
	output reg [31:0] next_pc_out,		// next_pc_out(32 bits)
	output hit_out								// hit_out(1 bit)
    );
	
	always @(negedge clk)
		begin
			if (hit == 1'b1)
				begin
					instruction_out = instruction;
					next_pc_out = next_pc;
				end
		end
		
	assign hit_out = hit;

endmodule

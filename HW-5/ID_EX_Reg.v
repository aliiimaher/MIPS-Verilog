`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module ID_EX_Reg(
	input clk,
	input hit,
	input [31:0] readData1,
	input [31:0] readData2,
	input [31:0] signExImmediate,
	input RegDst,
	input ALUSrc, 
	input MemtoReg,
	input RegWrite,
	input MemRead,
	input MemWrite,
	input Branch,
	input [2:0] ALUOp,
	input [4:0] rt,
	input [4:0] rd,
	input [5:0] funct,
	input [31:0] nextPC,
	
	output reg [31:0] readData1Out,
	output reg [31:0] readData2Out,
	output reg [31:0] signExImmediateOut,
	output reg RegDstOut,
	output reg ALUSrcOut,
	output reg MemtoRegOut,
	output reg RegWriteOut,
	output reg MemReadOut,
	output reg MemWriteOut,
	output reg BranchOut,
	output reg [2:0] ALUOpOut,
	output reg [4:0] rtOut,
	output reg [4:0] rdOut,
	output reg [5:0] functOut,
	output reg [31:0] nextPCOut	
    );

	always @(negedge clk)
	begin
		if (hit == 1'b1)
			begin
				readData1Out = readData1;
				readData2Out = readData2;
				signExImmediateOut = signExImmediate;
				RegDstOut = RegDst;
				ALUSrcOut = ALUSrc;
				MemtoRegOut = MemtoReg;
				RegWriteOut = RegWrite;
				MemReadOut = MemRead;
				MemWriteOut = MemWrite;
				BranchOut = Branch;
				ALUOpOut = ALUOp;
				rtOut = rt;
				rdOut = rd;
				functOut = funct;
				nextPCOut = nextPC;
			end
	end

endmodule

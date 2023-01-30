`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module Execute(
	input clk,
	input [31:0] ALUReadData1,
	input [31:0] ALUReadData2,
	input [31:0] immediate,
	input [5:0] funct,
	input [2:0] ALUOp,
	input ALUSrc,
	
	// some which not menotioned
	input [31:0] lastPC,
	input [4:0] rt,
	input [4:0] rd,
	input RegDst,
	
	output [31:0] ALUResult,
	output zero,
	output [31:0] AddResult,
	output [31:0] ALUReadData2_Out,
	output [4:0] RdOrRt
    );
	 
	// Branch Desicion (PC + Immediate)
	assign AddResult = lastPC + immediate << 2;
	
	// Mux (rt or rd)
	Mux_2to1 mux_rt_or_rd (
    .input_0(rt), 
    .input_1(rd), 
    .selector(RegDst), 
    .output_0(RdOrRt)
    );
	 
	// Shamt
	wire [4:0] shamt;
	assign shamt = immediate[10:6];
	 
	// MUX (ReadData2 or Immediate)
	wire [31:0] output_mux_before_alu;
	Mux_2to1 mux_before_alu (
    .input_0(immediate), 	
    .input_1(ALUReadData2), 
    .selector(ALUSrc), 			
    .output_0(output_mux_before_alu)
    );
	 
	// ALU Control Module
	wire [3:0] ALUCnt;
	ALUControlUnit aluControlUnit (
    .ALUOp(ALUOp), 
    .funct(funct), 	
    .ALUCnt(ALUCnt)
    );
	 
	// ALU Module
	ALU alu (
    .ALUCnt(ALUCnt), 
    .input1(ALUReadData1),
    .input2(output_mux_before_alu), 
    .shamt(shamt), 
    .result(ALUResult),
    .zero(zero)	
    );
	 
	// ALU Read Data 2
	assign ALUReadData2_Out = ALUReadData2;

endmodule

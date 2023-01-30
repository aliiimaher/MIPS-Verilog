`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module Fetch(
	input [31:0] branchTarget,
	input clk,
	input PCSrc,
	output [31:0] nextPC,
	output [31:0] Instruction,
	output hitBit
    );
	 
	 wire [31:0] nextAddr;
	 wire [31:0] addressOutFromPcReg;
	 wire [127:0] data_line;
	
	// mux: if select bit is one => Branch Target, if select bit is zero => NextPC
	Mux_2to1 mux (
    .input_0(NextPC), 
    .input_1(branchTarget), 
    .selector(PCSrc), 
    .output_0(nextAddr)
    );
	 
	 PC_Reg pc (
    .address(nextAddr), 
    .clk(clk), 
    .hitBit(hitBit), 
    .nextAddress(addressOutFromPcReg)
    );
	 
	 InstructionMemory instructionMemory (
    .inputAddress(addressOutFromPcReg), 
    .clk(clk), 
    .data_line(data_line)
    );
	 
	 Cache cache (
    .inputAddr(addressOutFromPcReg), 
    .data_line(data_line), 
    .clk(clk), 
    .outputAddr(Instruction), 
    .hitBit(hitBit)
    );
	 
	 assign nextPC = addressOutFromPcReg + 4;

endmodule

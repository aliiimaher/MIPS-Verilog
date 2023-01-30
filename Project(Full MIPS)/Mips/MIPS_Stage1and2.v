`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////

// This Module is made on stage 1 and 2 of mips.
// So, it made up from Fetch, Decode, IF/ID Register and Control Unit.

module MIPS_Stage1and2(
	input clk				// CLK(1 bit)
    );

	// ========== Fetch Module ==========
	wire [31:0] branchTarget;
	wire PCSrc;
	wire [31:0] nextPC;
	wire [31:0] Instruction;
	wire hitBit;
	
	Fetch fetch (
    .branchTarget(branchTarget), 
    .clk(clk), 
    .PCSrc(PCSrc), 
    .nextPC(nextPC), 
    .Instruction(Instruction), 
    .hitBit(hitBit)
    );
	 
	// ========== IF/ID Module ========== 
	wire [31:0] instruction_out;
	wire [31:0] next_pc_out;
	wire hit_out;
	
	IF_ID_Reg If_Id_Reg (
    .clk(clk), 
    .next_pc(nextPC), 
    .instruction(Instruction), 
    .hit(hitBit), 
    .instruction_out(instruction_out), 
    .next_pc_out(next_pc_out), 
    .hit_out(hit_out)
    );
	 
	// ========== Decode Module ==========	
	wire [5:0] opcode;
	wire [31:0] read_data1;
	wire [31:0] read_data2;
	wire [31:0] sign_extended_immediate;
	wire [4:0] rt;
	wire [4:0] rd;
	
	Decode decode (
    .clk(clk),
    .instruction(instruction_out),
	 //
    .RegWrite(RegWrite), 				// signal. we get it from control unit.
    .write_reg(write_reg), 			// this will be specified in stage 5.
    .write_data(write_data), 			// this will be specified in stage 5.
	 //
    .opcode(opcode),
    .read_data1(read_data1), 
    .read_data2(read_data2),
    .sign_extended_immediate(sign_extended_immediate), 
    .rt(rt), 
    .rd(rd)
    );
	 
	// ========== Control Unit Module ==========	
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [2:0] ALUOp;
	
	ControlUnit controlUnit (
    .Opcode(opcode),
    .RegDst(RegDst), 
    .ALUSrc(ALUSrc), 
    .MemtoReg(MemtoReg), 
    .RegWrite(RegWrite), 
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .Branch(Branch), 
    .ALUOp(ALUOp)
    );

endmodule

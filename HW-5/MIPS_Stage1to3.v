`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////

// This Module is made on stage 1 to 3 of mips.
// So, it made up from Fetch, Decode, IF/ID Register, Control Unit,
// Alu, Alu Control, Execute, and ID/EX Register.

module MIPS_Stage1to3(
	input clk
    );
	 
	reg hitBit;						// We get it from fetch and use it for other modules.
	 
	// ========== Fetch Module ==========
	wire [31:0] branchTarget;
	wire PCSrc;
	wire [31:0] nextPC;
	wire [31:0] Instruction;
	
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
	
	IF_ID_Reg If_Id_Reg (
    .clk(clk),
    .next_pc(nextPC),
    .instruction(Instruction), 
    .hit(hitBit), 
    .instruction_out(instruction_out), 
    .next_pc_out(next_pc_out), 
    .hit_out(hit_out)	// Nothing
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
    .RegWrite(RegWrite), 				// this will be specified in stage 5.
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
	 
	 
	// ========== ID/EX Module ========== 
	wire [31:0] readData1Out;
	wire [31:0] readData2Out;
	wire [31:0] signExImmediateOut;
	wire RegDstOut;
	wire ALUSrcOut;
	wire MemtoRegOut;
	wire RegWriteOut;
	wire MemReadOut;
	wire MemWriteOut;
	wire BranchOut;
	wire [2:0] ALUOpOut;
	wire [4:0] rtOut;
	wire [4:0] rdOut;
	wire [5:0] functOut;
	wire [31:0] nextPCOut;
	
	ID_EX_Reg Id_Ex_Reg (
    .clk(clk),
    .hit(hitBit), 
    .readData1(read_data1), 
    .readData2(read_data2), 
    .signExImmediate(sign_extended_immediate), 
    .RegDst(RegDst), 
    .ALUSrc(ALUSrc), 
    .MemtoReg(MemtoReg), 
    .RegWrite(RegWrite), 
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .Branch(Branch), 
    .ALUOp(ALUOp), 
    .rt(rt), 
    .rd(rd), 
    .funct(sign_extended_immediate[5:0]), 
    .nextPC(next_pc_out), 
    .readData1Out(readData1Out), 
    .readData2Out(readData2Out), 
    .signExImmediateOut(signExImmediateOut), 
    .RegDstOut(RegDstOut), 
    .ALUSrcOut(ALUSrcOut), 
    .MemtoRegOut(MemtoRegOut), 
    .RegWriteOut(RegWriteOut), 
    .MemReadOut(MemReadOut), 
    .MemWriteOut(MemWriteOut), 
    .BranchOut(BranchOut), 
    .ALUOpOut(ALUOpOut), 
    .rtOut(rtOut), 
    .rdOut(rdOut), 
    .functOut(functOut), 
    .nextPCOut(nextPCOut) 
    );
	 

	// ========== Execute Module ==========
	wire [31:0] ALUResult;
	wire zero;
	wire [31:0] AddResult;
	wire [31:0] ALUReadData2_Out;
	wire [4:0] RdOrRt;
	
Execute execute (
    .clk(clk), 
    .ALUReadData1(readData1Out),
    .ALUReadData2(readData2Out), 
    .immediate(signExImmediateOut), 
    .funct(functOut), 
    .ALUOp(ALUOpOut), 
    .ALUSrc(ALUSrcOut), 
    .lastPC(next_pc_out), 
    .rt(rtOut), 
    .rd(rdOut), 
    .RegDst(RegDstOut), 
    .ALUResult(ALUResult), 
    .zero(zero), 
    .AddResult(AddResult),
    .ALUReadData2_Out(ALUReadData2_Out), 
    .RdOrRt(RdOrRt)
    );

endmodule

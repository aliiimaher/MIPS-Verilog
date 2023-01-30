`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////

// This is the last module of this Term. (Project)
// This Module is made on stage 1 to 5 of mips.
// So, it made up from Fetch, Decode, IF/ID Register, Control Unit,
// Alu, Alu Control, Execute, and ID/EX Register, EX/MEM register,
// Data Memory, MEM/WB register, WriteBack Stage. (Complete MIPS)

module MIPS(
	input clk
    );

	 wire hitBit;					// We get it from fetch and use it for other modules.
	 
	// Some declarations that must be earlier
	wire [4:0] writeRegOutFromMemWbReg;
	wire RegWriteOutFromMemWbReg;
	wire [31:0] writeDataOutFromWriteBackStage;
	
	//
	wire [31:0] branchTargetOut;
	

	// ========== Fetch Module ==========
	wire PCSrc;
	wire [31:0] nextPC;
	wire [31:0] Instruction;
	
	Fetch fetch (
    .branchTarget(branchTargetOut), 
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
	 // === WriteBack ===
	 // We came back here from write back stage.
    .RegWrite(RegWriteOutFromMemWbReg), 
    .write_reg(writeRegOutFromMemWbReg), 
    .write_data(writeDataOutFromWriteBackStage),
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
	 
	 
	 // ========== EX/MEM Module ==========
	 // wire [31:0] branchTargetOut;
	 wire zeroFlagOut;
	 wire [31:0] ALUResultOut;
	 wire [31:0] readData2OutFromExMemReg;
	 wire [4:0] writeRegOutFromExMemReg;
	 wire MemReadOutFromExMemReg;
	 wire MemWriteOutFromExMemReg;
	 wire BranchOutFromExMemReg;
	 wire RegWriteOutFromExMemReg;
	 wire MemToRegOutFromExMemReg;	 
	 
	 EX_MEM_Reg Ex_Mem_Reg (
    .clk(clk), 
    .hit(hitBit), 
    .branchTarget(AddResult), 
    .zeroFlag(zero), 
    .ALUResult(ALUResult), 
    .readData2(ALUReadData2_Out), 
    .writeReg(RdOrRt), 
    .MemRead(MemReadOut), 
    .MemWrite(MemWriteOut),
    .Branch(BranchOut), 
    .RegWrite(RegWriteOut), 
    .MemToReg(MemtoRegOut),  
    .branchTargetOut(branchTargetOut), 
    .zeroFlagOut(zeroFlagOut), 
    .ALUResultOut(ALUResultOut), 
    .readData2Out(readData2OutFromExMemReg), 
    .writeRegOut(writeRegOutFromExMemReg), 
    .MemReadOut(MemReadOutFromExMemReg), 
    .MemWriteOut(MemWriteOutFromExMemReg),
    .BranchOut(BranchOutFromExMemReg), 
    .RegWriteOut(RegWriteOutFromExMemReg), 
    .MemToRegOut(MemToRegOutFromExMemReg) 
    );


	// ========== Data Memory Module ==========
	wire [31:0] readData;
	
	DataMemory dataMemory (
    .clk(clk), 
    .address(ALUResultOut), 
    .writeData(readData2OutFromExMemReg), 
    .MemRead(MemReadOutFromExMemReg), 
    .MemWrite(MemWriteOutFromExMemReg), 
    .readData(readData) 
    );
	 
	 // Handling PCSrc
	 assign PCSrc = zeroFlagOut && BranchOutFromExMemReg;
	 
	 
	 // ========== MEM/WB Reg ==========
	 wire [31:0] readDataOutFromMemWbReg;
	 wire [31:0] ALUResultOutFromMemWbReg;
	 // wire [4:0] writeRegOutFromMemWbReg;				// Declared Earlier
	 // wire RegWriteOutFromMemWbReg;						// Declared Earlier
	 //
	 wire MemtoRegOutFromMemWbReg;
	 
	 MEM_WB_Reg Mem_Wb_Reg (
    .clk(clk), 
    .hit(hitBit), 
    .readData(readData),  
    .ALUResult(ALUResultOut), 
    .writeReg(writeRegOutFromExMemReg), 
    .RegWrite(RegWriteOutFromExMemReg), 
    .MemtoReg(MemToRegOutFromExMemReg), 
    .readDataOut(readDataOutFromMemWbReg), 
    .ALUResultOut(ALUResultOutFromMemWbReg), 
    .writeRegOut(writeRegOutFromMemWbReg),
    .RegWriteOut(RegWriteOutFromMemWbReg),  
    .MemtoRegOut(MemtoRegOutFromMemWbReg) 
    );
	 
	 
	 // ========== WriteBack Module ==========
	 // wire [31:0] writeDataOutFromWriteBackStage;			// Declared Earlier
	 
	 WriteBack writeBack (
    .MemtoReg(MemtoRegOutFromMemWbReg), 
    .readData(readDataOutFromMemWbReg), 
    .ALUResult(ALUResultOutFromMemWbReg), 
    .writeData(writeDataOutFromWriteBackStage) 
    );


endmodule

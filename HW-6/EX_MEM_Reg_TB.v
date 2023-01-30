`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module EX_MEM_Reg_TB;

	// Inputs
	reg clk;
	reg hit;
	reg [31:0] branchTarget;
	reg zeroFlag;
	reg [31:0] ALUResult;
	reg [31:0] readData2;
	reg [4:0] writeReg;
	reg MemRead;
	reg MemWrite;
	reg Branch;
	reg RegWrite;
	reg MemToReg;

	// Outputs
	wire [31:0] branchTargetOut;
	wire zeroFlagOut;
	wire [31:0] ALUResultOut;
	wire [31:0] readData2Out;
	wire [4:0] writeRegOut;
	wire MemReadOut;
	wire MemWriteOut;
	wire BranchOut;
	wire RegWriteOut;
	wire MemToRegOut;

	// Instantiate the Unit Under Test (UUT)
	EX_MEM_Reg uut (
		.clk(clk), 
		.hit(hit), 
		.branchTarget(branchTarget), 
		.zeroFlag(zeroFlag), 
		.ALUResult(ALUResult), 
		.readData2(readData2), 
		.writeReg(writeReg), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.RegWrite(RegWrite), 
		.MemToReg(MemToReg), 
		.branchTargetOut(branchTargetOut), 
		.zeroFlagOut(zeroFlagOut), 
		.ALUResultOut(ALUResultOut), 
		.readData2Out(readData2Out), 
		.writeRegOut(writeRegOut), 
		.MemReadOut(MemReadOut), 
		.MemWriteOut(MemWriteOut), 
		.BranchOut(BranchOut), 
		.RegWriteOut(RegWriteOut), 
		.MemToRegOut(MemToRegOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		hit = 0;
		branchTarget = 0;
		zeroFlag = 0;
		ALUResult = 0;
		readData2 = 0;
		writeReg = 0;
		MemRead = 0;
		MemWrite = 0;
		Branch = 0;
		RegWrite = 0;
		MemToReg = 0;

		// Wait for 50 ns
		#5;
		#50;
      clk = 1;
		hit = 0;
		branchTarget = 1;
		zeroFlag = 1;
		ALUResult = 1;
		readData2 = 1;
		writeReg = 1;
		MemRead = 1;
		MemWrite = 1;
		Branch = 1;
		RegWrite = 1;
		MemToReg = 1;

		// Wait for 50 ns		
		#50;
      clk = 0;
		hit = 0;
		branchTarget = 1;
		zeroFlag = 1;
		ALUResult = 1;
		readData2 = 1;
		writeReg = 1;
		MemRead = 1;
		MemWrite = 1;
		Branch = 1;
		RegWrite = 1;
		MemToReg = 1;
		
		// Wait for 50 ns		
		#50;
      clk = 1;
		hit = 1;
		branchTarget = 1;
		zeroFlag = 1;
		ALUResult = 1;
		readData2 = 1;
		writeReg = 1;
		MemRead = 1;
		MemWrite = 1;
		Branch = 1;
		RegWrite = 1;
		MemToReg = 1;

		// Wait for 50 ns
		#50;
		clk = 0;
	end
      
endmodule


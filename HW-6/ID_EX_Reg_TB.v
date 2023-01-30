`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module ID_EX_Reg_TB;

	// Inputs
	reg clk;
	reg hit;
	reg [31:0] readData1;
	reg [31:0] readData2;
	reg [31:0] signExImmediate;
	reg RegDst;
	reg ALUSrc;
	reg MemtoReg;
	reg RegWrite;
	reg MemRead;
	reg MemWrite;
	reg Branch;
	reg [2:0] ALUOp;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [5:0] funct;
	reg [31:0] nextPC;

	// Outputs
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

	// Instantiate the Unit Under Test (UUT)
	ID_EX_Reg uut (
		.clk(clk), 
		.hit(hit), 
		.readData1(readData1), 
		.readData2(readData2), 
		.signExImmediate(signExImmediate), 
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
		.funct(funct), 
		.nextPC(nextPC), 
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
	initial begin
		clk = 0;
		hit = 0;
	end
	
	always #50 clk = ~clk;

	initial begin
	#5;
		// Initialize Inputs
		readData1 = 0;
		readData2 = 0;
		signExImmediate = 0;
		RegDst = 0;
		ALUSrc = 0;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 0;
		MemWrite = 0;
		Branch = 0;
		ALUOp = 0;
		rt = 0;
		rd = 0;
		funct = 0;
		nextPC = 0;

		#50;
		hit = 1;
		readData1 = 13;
		readData2 = 0;
		signExImmediate = 1;
		RegDst = 0;
		ALUSrc = 1;
		MemtoReg = 0;
		RegWrite = 1;
		MemRead = 0;
		MemWrite = 1;
		Branch = 0;
		ALUOp = 1;
		rt = 0;
		rd = 1;
		funct = 0;
		nextPC = 1;
		
		#50;
		hit = 0;
		readData1 = 1;
		readData2 = 2;
		signExImmediate = 3;
		RegDst = 1;
		ALUSrc = 1;
		MemtoReg = 1;
		RegWrite = 1;
		MemRead = 1;
		MemWrite = 1;
		Branch = 1;
		ALUOp = 4;
		rt = 13;
		rd = 13;
		funct = 15;
		nextPC = 1;
        
	end
      
endmodule


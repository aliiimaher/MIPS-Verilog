`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module Execute_TB;

	// Inputs
	reg clk;
	reg [31:0] ALUReadData1;
	reg [31:0] ALUReadData2;
	reg [31:0] immediate;
	reg [5:0] funct;
	reg [2:0] ALUOp;
	reg ALUSrc;
	reg [31:0] lastPC;
	reg [4:0] rt;
	reg [4:0] rd;
	reg RegDst;

	// Outputs
	wire [31:0] ALUResult;
	wire zero;
	wire [31:0] AddResult;
	wire [31:0] ALUReadData2_Out;
	wire [4:0] RdOrRt;

	// Instantiate the Unit Under Test (UUT)
	Execute uut (
		.clk(clk), 
		.ALUReadData1(ALUReadData1), 
		.ALUReadData2(ALUReadData2), 
		.immediate(immediate), 
		.funct(funct), 
		.ALUOp(ALUOp), 
		.ALUSrc(ALUSrc), 
		.lastPC(lastPC), 
		.rt(rt), 
		.rd(rd), 
		.RegDst(RegDst), 
		.ALUResult(ALUResult), 
		.zero(zero), 
		.AddResult(AddResult), 
		.ALUReadData2_Out(ALUReadData2_Out), 
		.RdOrRt(RdOrRt)
	);

	
	initial begin
		clk = 0;
		ALUReadData1 = 0;
		ALUReadData2 = 0;
		immediate = 0;
		funct = 0;
		ALUOp = 0;
		ALUSrc = 0;
		lastPC = 0;
		rt = 0;
		rd = 0;
		RegDst= 0;
	end
	
	always #50 clk = ~clk;

	initial begin
		#100;
		ALUReadData1 = 5;
		ALUReadData2 = 8;
		immediate = 4;
		funct = 6'b000000;
		ALUOp = 3'b000;
		ALUSrc = 0;
		lastPC = 0;
		rt = 3;
		rd = 0;
		RegDst= 0;
		
		#100;
		ALUReadData1 = 5;
		ALUReadData2 = 8;
		immediate = 4;
		funct = 6'b000000;
		ALUOp = 3'b000;
		ALUSrc = 1;
		lastPC = 4;
		rt = 3;
		rd = 0;
		RegDst= 1;
        
	end
      
endmodule


`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module WriteBack(
	input MemtoReg,
	input [31:0] readData,
	input [31:0] ALUResult,
	
	output [31:0] writeData
    );

	// assign writeData = MemtoReg ? readData : ALUResult;
	
	Mux_2to1 WB_Mux (
    .input_0(ALUResult), 
    .input_1(readData), 
    .selector(MemtoReg), 
    .output_0(writeData)
    );
	
endmodule

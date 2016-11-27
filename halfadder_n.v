`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:51 11/14/2016 
// Design Name: 
// Module Name:    halfadder_n 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module halfadder_n(
	input a,
	input b,
	output sum,
	output carry
    );
assign sum=a^b;
assign carry=a&b;

endmodule

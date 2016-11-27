`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:09 11/14/2016 
// Design Name: 
// Module Name:    fulladder_n 
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
module fulladder_n(
	input a,
	input b,
	input mgate,
	input cin,
	output cout,
	output sum
    );
wire ain; 
assign ain=a&mgate;
wire sum1;
wire carry1;
wire carry2; 
halfadder_n ha1(ain,b,sum1,carry1);
halfadder_n ha2(sum1,cin,sum,carry2);
assign cout=carry1||carry2;
endmodule

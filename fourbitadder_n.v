`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:29 11/14/2016 
// Design Name: 
// Module Name:    fourbitadder_n 
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
module fourbitadder_n(
input [3:0]a,
input [3:0]b,
input mgate,
input cin,
output [3:0] cout,
output [3:0]sum
    );
fulladder_n f0(a[0],b[0],mgate,cin,cout[0],sum[0]);
fulladder_n f1(a[1],b[1],mgate,cout[0],cout[1],sum[1]);
fulladder_n f2(a[2],b[2],mgate,cout[1],cout[2],sum[2]);
fulladder_n f3(a[3],b[3],mgate,cout[2],cout[3],sum[3]);

endmodule

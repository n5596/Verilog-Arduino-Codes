`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:23 10/04/2016 
// Design Name: 
// Module Name:    eight_bitadder 
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
module eight_bitadder(
    input [7:0] a,
    input [7:0] b,
    input mgate,
    input cin,
    output [7:0] cout,
    output [7:0] sum
    );

 full_adder fa0(a[0],b[0],mgate,cin,cout[0],sum[0]);
 full_adder fa1(a[1],b[1],mgate,cout[0],cout[1],sum[1]);
 full_adder fa2(a[2],b[2],mgate,cout[1],cout[2],sum[2]);
 full_adder fa3(a[3],b[3],mgate,cout[2],cout[3],sum[3]);
 full_adder fa4(a[4],b[4],mgate,cout[3],cout[4],sum[4]);
 full_adder fa5(a[5],b[5],mgate,cout[4],cout[5],sum[5]);
 full_adder fa6(a[6],b[6],mgate,cout[5],cout[6],sum[6]);
 full_adder fa7(a[7],b[7],mgate,cout[6],cout[7],sum[7]);
 

endmodule

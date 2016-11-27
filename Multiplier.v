`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:24 10/04/2016 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [7:0] a,
    //input [7:0] b,
    input [3:0] mgate,
	 input cin,
	// output [7:0] x,
	 output [7:0] b,
    output [7:0] cout,
    output [11:0] sum
	
    );
	 wire [7:0] p;
wire [7:0] q;
wire [7:0] r;
wire [7:0] x;
wire [7:0] y;
wire [7:0] z;
wire [7:0] w;
wire [7:0] cout1;
wire [7:0] cout2;
wire [7:0] cout3;

eight_bitadder e1(a,0000000,mgate[0],cin,cout1,p);
assign sum[0]=p[0];
//assign b=b>>1;
assign x[6:0]=p[7:1];
assign x[7]=cout1[7];

eight_bitadder e2(a,x,mgate[1],cin,cout2,y);
assign sum[1]=y[0];
//assign b=b>>1;
assign q[6:0]=y[7:1];
assign q[7]=cout2[7];
//assign b[7]=cout[7];

eight_bitadder e3(a,q,mgate[2],cin,cout3,r);
assign sum[2]=r[0];
//assign b=b>>1;
//assign b[7]=cout[7];
assign z[6:0]=r[7:1];
assign z[7]=cout3[7];

//assign x[7:0]=b[7:0];
eight_bitadder e4(a,z,mgate[3],cin,cout,b);
assign sum[3]=b[0];
//assign b=b>>1;
//assign b[7]=cout[7];
assign w[6:0]=b[7:1];
assign w[7]=cout[7];

assign sum[11:4]=w[7:0];
//assign b[7]=cout[7];
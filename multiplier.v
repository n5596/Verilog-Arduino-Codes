`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:46 11/14/2016 
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
	input [3:0]a,
	input [3:0]mgate,
	input cin,
	output [3:0]v,
	output [3:0]w,
	output [7:0]sum
    );
	 wire[3:0]x;
	 wire [3:0]q;
	 wire [3:0]p;
	 wire [3:0]y;
	 wire [3:0]r;
	 wire [3:0]s;
	 wire [3:0]z;
	 wire [3:0]u;
	 wire [3:0]t;
	 wire [3:0]m;
fourbitadder_n f0(a,0000,mgate[0],cin,p,q);
assign sum[0]=q[0];
assign x[2:0]=q[3:1];
assign x[3]=p[3];
fourbitadder_n f1(a,x,mgate[1],cin,r,s);
assign sum[1]=s[0];
assign y[2:0]=s[3:1];
assign y[3]=r[3];
fourbitadder_n f2(a,y,mgate[2],cin,t,u);
assign sum[2]=u[0];
assign z[2:0]=u[3:1];
assign z[3]=t[3];
fourbitadder_n f3(a,z,mgate[3],cin,v,w);
assign sum[3]=w[0];
assign m[2:0]=w[3:1];
assign m[3]=v[3]; 
assign sum[7:4]=m[3:0];

endmodule

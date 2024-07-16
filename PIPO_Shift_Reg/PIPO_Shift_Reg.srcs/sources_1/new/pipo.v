`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 00:45:01
// Design Name: 
// Module Name: pipo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pipo(q,clk,clr,d);
output reg [3:0]q; // parallel output
input clk,clr;
input [3:0]d; // parallel input
always @(posedge clk)
if(clr == 1)
q = 4'b0000;
else
q = d;
endmodule

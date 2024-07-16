`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 00:49:43
// Design Name: 
// Module Name: tb
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


module tb;
reg clr,clk;
reg [3:0]d;
wire [3:0]q;
pipo uut(.q(q),.clr(clr),.clk(clk),.d(d));
initial begin
clk = 0;  clr = 1;
d = 4'b1010;
#5 clr = 0;
#2 d = 4'b0000;
#2 d = 4'b0011;
#2 d = 4'b1011;
end
always #1 clk = ~clk;
initial #14 $finish;
endmodule

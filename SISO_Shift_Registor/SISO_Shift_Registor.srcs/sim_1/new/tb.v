`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 01:01:48
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
reg clr,clk,d;
wire v;
siso uut(.clr(clr),.clk(clk),.d(d),.v(v));
initial begin
clk = 0;  clr = 1;
d = 0;
#10 clr = 0;
end
always #1 clk = ~clk;
always #2 d = ~d;
initial $monitor("clk=%b,d = %b,v=%b",clk,d,v);
initial #100 $finish;
endmodule

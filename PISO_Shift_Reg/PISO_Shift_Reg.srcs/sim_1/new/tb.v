`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 01:29:13
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
reg clk,clr,sel;
reg [3:0]d;
wire v;
piso uut(.clk(clk),.clr(clr),.d(d),.v(v),.sel(sel));
initial begin
clk = 0;   clr = 1;
#2 clr = 0;
sel = 0;
d = 4'b0100;
#2 sel = 1;
#10 sel = 0;
d = 4'b1110;
#2 sel = 1;
end
always #1 clk = ~clk;
initial #25 $finish;
endmodule

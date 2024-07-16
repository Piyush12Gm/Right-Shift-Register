`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 01:25:04
// Design Name: 
// Module Name: piso
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


module piso(v,clk,sel,clr,d);
reg [3:0]q;
input [3:0]d; //parallel input
input sel,clk,clr;
output reg v;
always @ (posedge clk)
if(clr == 1)
q <= 4'b0000;
else if(sel == 0)
q <= d;
else
begin
v <= q[0];
q <= q>>1;
end
endmodule
//example sel = 0 dumping data parallel
//sel = 1 shifting
// d[3:0] = 1011
//1.clk  v=1;
//2.clk  v=1;
//3.clk  v=0;
//4/clk  v=1;
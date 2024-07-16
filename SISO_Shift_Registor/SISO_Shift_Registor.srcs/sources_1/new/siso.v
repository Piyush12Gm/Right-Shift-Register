`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 00:58:19
// Design Name: 
// Module Name: siso
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

//serial input serial output
module siso(input clk,clr,d,output v);
reg [3:0]q;
always @ (posedge clk)
if(clr == 1)
q <= 4'b0000;
else
begin
q <= q>>1;
q[3] <= d;
end
assign v = q[0];
endmodule
// example      q[3:0] = ? ? ? ?
// d = 0 1.clk  q[3:0] = 0 ? ? ?
// d = 1 2.clk  q[3:0] = 1 0 ? ?
// d = 0 3.clk  q[3:0] = 0 1 0 ?
// d = 1 4.clk  q[3:0] = 1 0 1 0  =>  d = 0 after 4 clk 
// d = 1 5.clk  q[3:0] = 1 1 0 1
// d = 1 6.clk  q[3:0] = 1 1 1 0
// d = 0 7.clk  q[3:0] = 0 1 1 1
// d = 0 8.clk  q[3:0] = 0 0 1 1  =>  d = 1 after 4 clk 

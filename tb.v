`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 20:07:24
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
 
 
integer i = 0;
 
reg clk = 0,sys_rst = 0;
reg [15:0] din = 0;
wire [15:0] dout;
wire [31:0]IR;
wire [15:0] GPR [31:0];
wire [31:0] inst_mem [15:0];
wire [31:0] data_mem [15:0];
wire PC;
 
processor dut(clk, sys_rst, din, dout);
 
always #5 clk = ~clk;
 
initial begin
sys_rst = 1'b1;
repeat(5) @(posedge clk);
sys_rst = 1'b0;
$display("program memory : %b",inst_mem[0]);
$display("program memory : %b",inst_mem[1]);
$display("program memory : %b",inst_mem[2]);
$display("program memory : %b",inst_mem[3]);
$display("program memory : %b",inst_mem[4]);
$display("program memory : %b",inst_mem[5]);
#800;
$stop;
end
 
endmodule

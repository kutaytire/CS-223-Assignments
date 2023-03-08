`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2021 01:37:06 PM
// Design Name: 
// Module Name: mips
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


module mips(
    input logic clk, reset, 
    output logic [2:0] pc, pcnext,
    input logic [11:0] instruction,
    input logic [3:0] M_rd,
    input logic leftButton, isExternal,
    output logic M_we, M_re,
    output logic [3:0] M_wd, da, aluout
    );
    logic EQ, pc_ld, reg_wr_sel, ALU_src_sel, RF_we, ALU_op, PC_sel;
    logic [2:0]  ra1, ra2, wa, constant;
    logic [3:0] RF_wd;
    
    Controller cont(instruction, leftButton, isExternal, EQ, pc_ld, reg_wr_sel, M_we, M_re, ALU_src_sel, RF_we, ALU_op, ra1, ra2, wa, da, constant, PC_sel);
    Datapath dp(clk, reset, PC_sel, pc_ld, reg_wr_sel, ALU_src_sel, RF_we, ALU_op, M_rd, ra1, ra2, wa, constant, EQ, pc, pcnext, aluout, M_wd, RF_wd);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2021 01:52:43 PM
// Design Name: 
// Module Name: top
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


module top(
    input logic aclk, reset, leftButton, isExternal,
    input logic [11:0] SWs,
    output logic [3:0] aluout,
    output logic [2:0] pc, pcnext
    );
    logic clk;
    clockdivider cd(aclk, reset, clk);
    //ButtonDebouncer bt2(leftButton, clk, slow_LB);

    logic [3:0] M_rd, M_wd, da;
    logic [11:0] instruction,instruction_next, memoryIntstruction;
    logic M_we, M_re;
    
    
    
    mips mips(clk, reset, pc, pcnext, instruction, M_rd, 1'b1, 1'b0, M_we, M_re, M_wd, da, aluout);
    
    InstructionMemory instmem(clk, pc, memoryIntstruction);
    Multiplexer #(12) mux(SWs, memoryIntstruction, 1'b0, instruction_next);
                
    DFlipFlop #(12)  instrreg (clk, reset, 1'b1, instruction_next, instruction);

    DataMemory datamem(clk, da, M_wd, M_we, M_re, M_rd);
    
endmodule

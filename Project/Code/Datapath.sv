`timescale 1ns / 1ps

module Datapath(
    input logic clk, reset, PC_sel, pc_ld, reg_wr_sel,
    input logic ALU_src_sel, RF_we, ALU_op,
    input logic [3:0] M_rd,
    input logic [2:0]  ra1, ra2, wa,
    input logic [2:0] constant,
    output logic EQ,
    output logic [2:0] pc, apc_next,
    output logic [3:0] aluout, RF_d2, RF_wd //RF_d2 is also M_wd
    );
    
    logic [2:0] pc_next, pc_jump, pc_one;
    logic [3:0] RF_d1, srcb; // add RF_wd back again
    //next PC logic 
    DFlipFlop ff(clk, reset, pc_ld, pc_next, pc);
    assign pc_one = pc + 1;
    assign pc_jump = (pc + constant) % 8;
    Multiplexer #(3) mux(pc_jump, pc_one, PC_sel, pc_next);
    
    //Register File logic
    RegisterFile regfile(clk, RF_we, wa, RF_wd, ra1, RF_d1, ra2, RF_d2);
    Multiplexer #(4) mux2(aluout, M_rd, reg_wr_sel, RF_wd);
    
    //ALU logic 
    Multiplexer #(4) mux3(RF_d2,{1'b0, constant}, ALU_src_sel, srcb);
    ALU alu(RF_d1, srcb, ALU_op, aluout, EQ);
    assign apc_next = pc_next;
endmodule

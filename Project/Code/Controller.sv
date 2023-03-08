`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2021 03:38:09 AM
// Design Name: 
// Module Name: Controller
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

module Controller( input logic[11:0] Instr, 
    input logic         leftButton, is_external, EQ,
    output logic        pc_ld, 
    output logic        reg_wr_sel, M_we, M_re,
    output logic        ALU_src_sel,
    output logic        RF_we,
    output logic        ALU_op,
    output logic [2:0]  ra1, ra2, wa,
    output logic [3:0]  da, 
    output logic [2:0]  constant,
    output logic PC_sel);
    
    logic [6:0] controls;
    logic [2:0] opcode;
    assign opcode = Instr[11:9];    
    
    
    always_comb  
     begin    
          pc_ld <= (~is_external) & leftButton;
          case(opcode)   
          3'b000: begin // load 
                    reg_wr_sel <= 1'b0;
                    M_we <= 1'b0;
                    M_re <= 1'b1;
                    ALU_src_sel <= 1'b0;  
                    RF_we <= 1'b1;
                    PC_sel <= 1'b0;
                    ALU_op <= 1'b0; 
                    ra1 <= 3'b000 ;
                    ra2 <= 3'b000;
                    wa <= Instr[6:4];
                    da <= Instr [3:0];
                    constant <= 3'b000;
                    end  
          3'b001: begin // store 
                    reg_wr_sel <= 1'b0;
                    M_we <= 1'b1;
                    M_re <= 1'b0;
                    ALU_src_sel <= 1'b0;  
                    RF_we <= 1'b0;
                    PC_sel <= 1'b0;
                    ALU_op <= 1'b0; 
                    ra1 <= 3'b000;
                    ra2 <= Instr[6:4];
                    wa <= 3'b000;
                    da <= Instr [3:0];
                    constant <= 3'b000;
                    end  
          3'b010: begin // sub 
                    reg_wr_sel <= 1'b1;
                    M_we <= 1'b0;
                    M_re <= 1'b0;
                    ALU_src_sel <= 1'b1;  
                    RF_we <= 1'b1;
                    PC_sel <= 1'b0;
                    ALU_op <= 1'b0; 
                    ra1 <= Instr[2:0];
                    ra2 <= Instr[5:3];
                    wa <= Instr[8:6];
                    da <= 4'b0000;
                    constant <= 3'b000; 
                    end  
          3'b101: begin // add const 
          
                    reg_wr_sel <= 1'b1;
                    M_we <= 1'b0;
                    M_re <= 1'b0;
                    ALU_src_sel <= 1'b0;  
                    RF_we <= 1'b1;
                    PC_sel <= 1'b0;
                    ALU_op <= 1'b1; 
                    ra1 <= Instr[5:3];
                    ra2 <= 3'b000;
                    wa <= Instr[8:6];
                    da <= 4'b0000;
                    constant <= Instr[2:0]; 
                   
                    end  
          3'b111: begin // jump
                    reg_wr_sel <= 1'b0;
                    M_we <= 1'b0;
                    M_re <= 1'b0;
                    ALU_src_sel <= 1'b1;  
                    RF_we <= 1'b0;
                    PC_sel <= EQ;
                    ALU_op <= 1'b0; 
                    ra1 <= Instr[2:0];
                    ra2 <= Instr[5:3];
                    wa <= 3'b000;
                    da <= 4'b0000;
                    constant <= Instr[8:6]; 
                    end
         
           default: begin  
                 
                     reg_wr_sel <= 1'b0;
                     M_we <= 1'b0;
                     M_re <= 1'b0;
                     ALU_src_sel <= 1'b0;  
                     RF_we <= 1'b0;
                     PC_sel <= 1'b0;
                     ALU_op <= 1'b0; 
                     ra1 <= 3'b000;
                     ra2 <= 3'b000;
                     wa <= 3'b000;
                     da <= 4'b0000;
                     constant <= 3'b000; 
                      
                 end  
          endcase  
           
     end  
     endmodule  

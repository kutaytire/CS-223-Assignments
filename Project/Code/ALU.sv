`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2021 02:48:50
// Design Name: 
// Module Name: ALU
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

module ALU(     
      input logic        [3:0]     srca,          //src1  
      input logic         [3:0]     srcb,          //src2  
      input logic         alu_op,     //function sel  
      output logic        [3:0]     aluout,          //result       
      output logic EQ  
   );  
 always @(*)  
 begin   
      case(alu_op)  
          1'b0: aluout = srca - srcb; // sub  
          1'b1: aluout = srca + srcb; // add  
     
          default:aluout = srca + srcb; 
      endcase  
 end  
    assign EQ = 1;  
 endmodule  
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2021 03:37:13 AM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile  
 (  
      input logic                 clk,  
      // write port  
      input logic                   RF_we,  
      input logic         [2:0]     RF_wa,  
      input logic         [3:0]    RF_wd,  
      //read port 1  
      input logic         [2:0]     RF_add1,  
      output logic         [3:0]    RF_d1,  
      //read port 2  
      input logic         [2:0]     RF_add2,  
      output logic         [3:0]    RF_d2  
 );  
      logic     [3:0]     reg_array [7:0];  
      // write port  
      //reg [2:0] i;  
      always @ (posedge clk) begin    
                if(RF_we)  
                     reg_array[RF_wa] <= RF_wd;  
                
           end   
      assign RF_d1 = reg_array[RF_add1];  
      assign RF_d2 = reg_array[RF_add2]; 
      
endmodule
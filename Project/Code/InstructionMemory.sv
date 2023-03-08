`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2021 10:44:11 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
      input logic clk,
      input logic [2:0]    pc,  
      output logic [11:0]  instruction  
    );
    
      logic [11:0] registerMem [7:0];  
      initial  
      begin  
      
      //JUMP TEST 
      /*
       registerMem[0] = 12'b000_00_000_0001; // load 1 to reg[0] 
       registerMem[1] = 12'b000_00_001_0010; // load 2 to reg[1]
       registerMem[2] = 12'b000_00_010_0011; // load 3 to reg[2] 
       registerMem[3] = 12'b111_011_010_010; // load 4 to reg[3] 
       registerMem[4] = 12'b000_00_100_0101; // load 5 to reg[4] 
       registerMem[5] = 12'b000_01_101_0110; // load 6 to reg[5] 
       registerMem[6] = 12'b000_00_110_0111; // load 7 to reg[6] 
       registerMem[7] = 12'b111_000_111_111; // load 0 to reg[7]
      */
      //Sub test 
      /*
           registerMem[0] = 12'b000_00_000_0001; // load 1 to reg[0] 
           registerMem[1] = 12'b000_00_001_0010; // load 2 to reg[1]
           registerMem[2] = 12'b000_00_010_0011; // load 3 to reg[2] 
           registerMem[3] = 12'b000_00_011_1100; // load 12 to reg[3] 
           registerMem[4] = 12'b010_100_000_001; // subtracts 1 from 2 to reg[4]
           registerMem[5] = 12'b010_101_000_010; // subtracts 1 from 3 to reg[5] 
           registerMem[6] = 12'b010_110_011_000; // subtracts 12 from 1 to reg[6] 
           registerMem[7] = 12'b010_111_011_011; // subtracts 12 from 12 to reg[7]
      */
      //Add constant test
      /*
           registerMem[0] = 12'b000_00_000_0001; // load 1 to reg[0] 
           registerMem[1] = 12'b000_00_001_0010; // load 2 to reg[1]
           registerMem[2] = 12'b000_00_010_0011; // load 3 to reg[2] 
           registerMem[3] = 12'b000_00_011_1100; // load 12 to reg[3] 
           registerMem[4] = 12'b101_100_000_011; // adds 3 to 1 to reg[4]
           registerMem[5] = 12'b101_101_001_010; // adds 2 to 2 to reg[5] 
           registerMem[6] = 12'b101_110_010_011; // adds 3 to 3 to reg[6] 
           registerMem[7] = 12'b101_111_011_110; // adds 6 to 12 to reg[7]
      */
      //Store test
      /*
           registerMem[0] = 12'b000_00_000_0001; // load 1 to reg[0] 
           registerMem[1] = 12'b000_00_001_0010; // load 2 to reg[1]
           registerMem[2] = 12'b000_00_010_0011; // load 3 to reg[2] 
           registerMem[3] = 12'b000_00_011_0100; // load 4 to reg[3] 
           registerMem[4] = 12'b001_00_000_0101; // store 1 to datamem[5] 
           registerMem[5] = 12'b001_00_001_0110; // store 2 to datamem[6] 
           registerMem[6] = 12'b001_00_010_0111; // store 3 to datamem[7] 
           registerMem[7] = 12'b001_00_011_1000; // store 4 to datamem[8]
      
      */
      
      // Load test 
      /*
       registerMem[0] = 12'b000_00_000_0001; // load 1 to reg[0] 
       registerMem[1] = 12'b000_00_001_0010; // load 2 to reg[1]
       registerMem[2] = 12'b000_00_010_0011; // load 3 to reg[2] 
       registerMem[3] = 12'b000_00_011_0100; // load 4 to reg[3] 
       registerMem[4] = 12'b000_00_100_0101; // load 5 to reg[4] 
       registerMem[5] = 12'b000_00_101_0110; // load 6 to reg[5] 
       registerMem[6] = 12'b000_00_110_0111; // load 7 to reg[6] 
       registerMem[7] = 12'b000_00_111_0000; // load 0 to reg[7]
      */
      
        registerMem[0] = 12'b000_00_000_0011; // load 3 to reg[0] 
        registerMem[1] = 12'b000_10_001_0010; // load 2 to reg[1]
        registerMem[2] = 12'b101_100_000_110; // add 6 to value in reg[0] which is 3 and load 9 to reg[4] 
        registerMem[3] = 12'b010_110_000_100; // substract reg[4] - reg[0] which is 6 and load to reg[6]
        registerMem[4] = 12'b001_01_110_0010; // store the value of reg[6] which is 6 to data[2] 
        registerMem[5] = 12'b000_01_111_0010; // load the value in data[2] which is 6 to reg[7]
        registerMem[6] = 12'b101_000_111_001; // add the value of data [2] which is 6 to 1 and load 7 to reg[0] 
        registerMem[7] = 12'b111_101_100_100;  
                 
      end   
      always_ff @( posedge clk ) 
      begin
              instruction <= registerMem[pc];
      end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2021 10:48:07 PM
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer #(parameter WIDTH = 4) (
    input  logic [WIDTH - 1:0] d1, d0,
    input  logic               s,
    output logic [WIDTH - 1:0] y
);
    assign y = s ? d1 : d0;
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2021 06:18:14
// Design Name: 
// Module Name: clockdivider
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


module clockdivider( input clk, input reset, output clk_out );
 logic[27:0] counter = {28{1'b0}};
 localparam param= 200000000;
 always@(posedge clk)
 begin
 if(reset == 1||counter == param-1)
 counter <= {28{1'b0}};
 else
 counter <= counter + 1;
 end
 assign clk_out = {counter == param-1};
endmodule
    
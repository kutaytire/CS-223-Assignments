`timescale 1ns / 1ps

module Testbench2 ();
    
    logic a, b, c;
    logic S, Cout;
    fullAdderStr dut (a, b, c, S, Cout);
    initial begin
    a = 0; b = 0; c = 0; #10;
    c = 1; #10;
    b = 1; c = 0; #10
    c = 1; #10; 
    a = 1; b = 0; c = 0; #10;
    c = 1; #10;
    b = 1; c = 0; #10
    c = 1; #10; 
    end
endmodule
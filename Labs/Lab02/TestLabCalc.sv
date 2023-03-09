`timescale 1ns / 1ps

module TestLabCalc ();
    
    logic A, B, C, D;
    logic Y, Z;
    
    LabCalculator dut (D, C, A, B, Y, Z);
    
    initial begin
    
    D = 0; C = 0; A = 0; B = 0; #10;
    B = 1; #10;
    A = 1; B = 0; #10;
    B = 1; #10;
    C = 1; A = 0; B = 0; #10;
    B = 1; #10;
    A = 1; B = 0; #10;
    B = 1; #10;
    D = 1; C = 0; A = 0; B = 0; #10;
    B = 1; #10;
    A = 1; B = 0; #10;
    B = 1; #10;
    C = 1; A = 0; B = 0; #10;
    B = 1; #10;
    A = 1; B = 0; #10;
    B = 1; #10;
    end
    
endmodule

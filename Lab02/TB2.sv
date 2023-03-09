`timescale 1ns / 1ps

module TB2();
    logic A0, B0, A1, B1, C0;
    logic S1, S2, Cout;

   TwoBitAdder dut (A0, A1, B0, B1, C0, S1, S2, Cout);

   initial begin
   A0 = 0; A1 = 0; B0 = 0; B1 = 0; C0 = 0; #10;
   C0 = 1; #10;
   B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 0; C0 = 0; #10;
   A0 = 0; B0 = 1; C0 = 1; #10;
   A0 = 1; B0 = 0; C0 = 1; #10;
   A0 = 1; B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 1; C0 = 1; #10;
   A0 = 0; B0 = 0; B1= 1; C0 = 0; #10;
   C0 = 1; #10;
   B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 0; C0 = 0; #10;
   A0 = 0; B0 = 1; C0 = 1; #10;
   A0 = 1; B0 = 0; C0 = 1; #10;
   A0 = 1; B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 1; C0 = 1; #10;
   A0 = 0; A1= 1; B0 = 0; B1= 0; C0 = 0; #10;
   C0 = 1; #10;
   B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 0; C0 = 0; #10;
   A0 = 0; B0 = 1; C0 = 1; #10;
   A0 = 1; B0 = 0; C0 = 1; #10;
   A0 = 1; B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 1; C0 = 1; #10;
   A0 = 1; B0 = 0; B1= 1; C0 = 0; #10;
   C0 = 1; #10;
   B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 0; C0 = 0; #10;
   A0 = 0; B0 = 1; C0 = 1; #10;
   A0 = 1; B0 = 0; C0 = 1; #10;
   A0 = 1; B0 = 1; C0 = 0; #10;
   A0 = 1; B0 = 1; C0 = 1; #10;
   end
endmodule

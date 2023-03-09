`timescale 1ns / 1ps

module TestbenchBFA ();
    logic X, Y, Cin;
    logic S, Cout;
    BehavioralFA dut (X, Y, Cin, S, Cout);
    
    initial begin
    	X = 0; Y = 0; Cin = 0; #10;
    	Cin = 1; #10;
    	Y = 1; Cin = 0; #10
    	Cin = 1; #10; 
    	X = 1; Y = 0; Cin = 0; #10;
    	Cin = 1; #10;
   	 Y = 1; Cin = 0; #10
    	Cin = 1; #10; 
    end    
endmodule


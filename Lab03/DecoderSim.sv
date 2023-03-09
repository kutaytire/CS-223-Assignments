`timescale 1ns / 1ps

module DecoderSim();

logic a,b;
logic d0,d1,d2,d3;

DecoderBehav dut (a,b,d0,d1,d2,d3);

initial begin
a = 0; b = 0; #10;
b = 1; #10;
a = 1; b = 0; #10;
b = 1; #10;

end
endmodule

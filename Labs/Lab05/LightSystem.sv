`timescale 1ns / 1ps

typedef enum logic [2:0] {S0,S1,S2,S3,S4,S5,S6,S7} stateType;
stateType state, nextState;

clockDivider divider(clk,reset,clkOut);

parameter green = 3'b001;
parameter yellow = 3'b011;
parameter red = 3'b111;

always_ff@(posedge clkOut, posedge reset) 

if (reset) state <= S0;
else state <= nextState;

always_comb

    case(state)

        S0: if (Ta) nextState = S0;
            else  nextState = S1;
            
        S1: nextState = S2;
        S2: nextState = S3;
        S3: nextState = S4;
        
        S4: if (Tb) nextState = S4;
            else nextState = S5;
        
        S5: nextState = S6;
        S6: nextState = S7;
        S7: nextState = S0;
        
        default: nextState = S0;
     endcase  
     
     always_comb
        case(state)
        
            S0: {La, Lb} = {green, red};
            S1: {La, Lb} = {yellow, red};
            S2: {La, Lb} = {red, red};
            S3: {La, Lb} = {red, yellow};
            S4: {La, Lb} = {red, green};
            S5: {La, Lb} = {red, yellow};
            S6: {La, Lb} = {red, red};
            S7: {La, Lb} = {yellow, red};
         endcase
        


endmodule
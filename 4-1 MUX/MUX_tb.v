`timescale 1ms / 1ms 
`include "MUX.v"
module MUX_tb; 
        reg S1,S2,E;
        reg D0=0,D1=0,D2=0,D3=0 ;
        wire Y;


    mux uut (S1,S2,E,D0,D1,D2,D3,Y);
    always begin
        D0= ~D0;
        D1= ~D0;
        D2= ~D2 & ~D1; 
        D3= ~D3 ^ D1 ; 
        #31.25;
    end

    initial begin
        //wavefrom 
        $dumpfile("MUX_tb.vcd");
        $dumpvars(0,MUX_tb);
        //Enable input 
        E=1;
        //select line veriation  
          
        S2=0;
        S1=0;

        #250;

        S2=1;
        S1=1;
        #250;

        S2=0;
        S1=1;
        #250;

        S2=1;
        S1=0;
        #250;

        $display("MUX simulated.");
        $finish;

    end

    

endmodule

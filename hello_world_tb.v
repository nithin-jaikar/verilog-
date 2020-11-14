`timescale 1ns / 1ns
`include "hello_world.v"
module hello_world_tb;

    reg a;
    reg c;
    wire b;
    basic uut(a,b,c);
        initial begin
        
        $dumpfile("hello_world_tb.vcd");
        $dumpvars(0,hello_world_tb);    
    
         
        c=1;
        a=0;
        #30;
        a=1;
        #30;
        a=0;
        #30; 
        a=1;
        #30;
        $display("DONE!!");
        end

endmodule

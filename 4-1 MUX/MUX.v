module mux (S1,S2,E,D0,D1,D2,D3,Y);
    input  S1,S2,E,D0,D1,D2,D3;
    output Y;
    
 assign  Y = (E & ~S1 & ~S2 & D0 | E & ~S1 & S2 & D1 | E & S1 & ~S2 & D2 | E & S1 & S2 & D3) ;   

endmodule

module DFF ( CK, RST, D, Q );
    input CK, RST, D;
    output Q;
    reg Q;

    always @( posedge CK )
        if( RST )
            Q <= 1'b0;
        else
            Q <= D;

endmodule

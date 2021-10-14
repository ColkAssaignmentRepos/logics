module JKFF ( CK, J, K, Q, RB, SB );
    input CK, J, K, RB, SB;
    output Q;
    reg Q;

    always @( posedge CK or negedge RB or negedge SB )
    begin
        if( RB == 1'b0 )
            Q <= 1'b0;
        else if ( SB == 1'b0 )
            Q <= 1'b1;
        else
            case( {J,K} )
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= ~Q;
            endcase
    end

endmodule

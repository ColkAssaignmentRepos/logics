module TFF ( CK, Q, RB );
    input CK, RB;
    output Q;
    reg Q;
    always @( posedge CK or negedge RB )
    begin
        if( RB == 1'b0 )
            Q <= 1'b0;
        else
            Q <= ~Q;
end
endmodule

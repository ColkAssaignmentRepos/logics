module jkff_17_6(CK, J, K, Q);
    input CK, J, K;
    output Q;
    reg Q;

    always @(posedge CK)
    begin
        case( {J,K} )
            2'b00: Q <= Q;
            2'b01: Q <= 1'b0;
            2'b10: Q <= 1'b1;
            2'b11: Q <= ~Q;
        endcase
    end

endmodule

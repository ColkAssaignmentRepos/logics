module RSFF(S, R, Q, QB);
    input S, R;
    output Q, QB;
    assign Q = ~(~S & QB);
    assign QB = ~(~R & Q);
endmodule

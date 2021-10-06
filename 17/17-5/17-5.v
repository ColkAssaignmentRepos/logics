module set_priority_rsff_17_5(S, R, Q, QB);
    input S, R;
    output Q, QB;

    assign Q = (~S) ~& (QB);
    assign QB = (Q) ~& ( (~S) ~& (R) );

endmodule

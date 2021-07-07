module kadai12_1 (
    input a, input b, input c,
    output z
);

    assign z = ( (a&b) | ~(b&~c) );

endmodule

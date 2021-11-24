module kadai22_1(sw0, sw1, led0);
    input sw0, sw1;
    output led0;
    assign led0 = sw0 & sw1;
endmodule

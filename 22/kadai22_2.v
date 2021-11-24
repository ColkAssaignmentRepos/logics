module kadai22_2(sw0, sw1, led);
    input sw0, sw1;
    output [5:0] led;

    assign led = {
        sw0 & sw1,
        sw0 | sw1,
        ~sw0,
        ~(sw0 & sw1),
        ~(sw0 | sw1),
        sw0 ^ sw1
    };

endmodule

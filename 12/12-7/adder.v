module ha(a, b, sum, co);
    input a, b;
    output sum, co;

    assign sum = a ^ b;
    assign co = a & b;

endmodule

module fa(a, b, ci, sum, co);
    input a, b, ci;
    output sum, co;
    wire h1s, h1c, h2c;

    ha h1(a, b, h1s, h1c);
    ha h2(ci, h1s, sum, h2c);

    assign co = h2c | h1c;

endmodule

module circuit07(x1, x2, x3, z);
input x1, x2, x3;
output z;
wire w1, w2, w3, w4, w5, w6;

    not(w1, x2);
    not(w2, x1);
    not(w3, x2);

    and(w4, x1, x2);
    and(w5, w1, x3);
    and(w6, w2, w3);

    or(z, w4, w5, w6);

endmodule

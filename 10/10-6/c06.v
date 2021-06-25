module circuit06(x1, x2, z);
input x1, x2;
output z;
wire w1, w2, w3, w4, w5;

    not(w1, x1);
    not(w2, x2);

    or(w3, w1, w2);

    and(w4, x1, w3);
    and(w5, x2, w3);

    or(z, w4, w5);

endmodule

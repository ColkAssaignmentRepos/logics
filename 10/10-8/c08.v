module circuit08(x1, x2, x3, z);
input x1, x2, x3;
output z;
wire w1, w2, w3;

    and(w1, x1, x2);
    and(w2, x2, x3);
    and(w3, x1, x3);

    or(z, w1, w2, w3);

endmodule

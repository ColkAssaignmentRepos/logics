module circuit01(x1, x2, x3, z);
input x1, x2, x3;
output z;
wire w1, w2;

    or a(w1, x1, x2);
    or b(w2, x1, x3);
    and c(z, w1, w2);

endmodule

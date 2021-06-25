module circuit05(x1, x2, x3, z);
input x1, x2, x3;
output z;
wire w;

    and a(w, x2, x3);
    or b(z, x1, w);

endmodule

module gate(x1, x2, z);

input x1, x2;
output z;
wire z1;

    not n(z, z1);
    and a(z1, x1, x2);

endmodule

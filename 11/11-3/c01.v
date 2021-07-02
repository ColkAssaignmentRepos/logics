module circuit01(x1, x2, x3, z );

input x1, x2, x3;
output z;

assign z = (x1|x2)&(x1|x3);

endmodule

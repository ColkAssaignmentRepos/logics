module circuit06(x1, x2, z);
input x1, x2;
output z;

assign z = ( ( (x1) & ( (~x1 | ~x2) ) ) | ( (x2) & ( (~x1 | ~x2) ) ) );

endmodule

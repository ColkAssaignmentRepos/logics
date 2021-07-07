`timescale 1ns/1ps

module c11_9(x1, x2, x3, z);
input x1, x2, x3;
output z;
wire w1, w2;

    and(w1, x1, x2);
    and(w2, ~x1, x2);

    assign #10 d = w2;
    or (z, w1, d);

endmodule

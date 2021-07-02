`timescale 1ns/1ps

module or_delay(A, B, X);
input A, B;
output X;
wire d;

    assign #10 d = B;
    or (X, A, d);

endmodule
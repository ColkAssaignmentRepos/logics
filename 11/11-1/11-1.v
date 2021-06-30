module operation_test;

reg [3:0] A, B; //4bit register

initial begin

    A = 4'b0111; B = 4'b0101;
    $display("%b", A + B);
    $display("%b", A - B);
    $display("%b", A & B );
    $display("%b", A ^ B );
    $display("%b", A && B);
    $display("%b", A << 1 );
    $display("%b", ~A );
    $display("%b", &A);
    $display("%b", A == B );
    $display("%b", { A, B } );
    $display("%b", (A <= B) ? A : B );
    // ORIGINAL ADDED
    $display("%b", A != B);
    $finish;

end

endmodule

module test_a;
reg a, b, c, d;

initial begin
    $dumpfile("test_a.vcd");
    $dumpvars(0, test_a);

    #0  {a, b, c, d} = 4'b1100;
    #10 {a, b, c, d} = 4'b0011;
    #5  a = 1'b1;
    #5  {a, b, c, d} = 4'b0101;
    #5  c = 1'b1;
    #5  $finish;
end

endmodule

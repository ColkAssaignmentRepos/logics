`timescale 1ns/1ps
module c06_test;

reg a, b;
wire c;

circuit06 gate(a, b, c);

initial begin
    $dumpfile("c06_test.vcd");
    $dumpvars(0, c06_test);
    $monitor("%t: a=%b, b=%b, c=%b",
                $time, a, b, c);
    
    #0  a = 0;
        b = 0;
    #10 a = 0;
        b = 1;
    #10 a = 1;
        b = 0;
    #10 a = 1;
        b = 1;
    #10 $finish;
end

endmodule

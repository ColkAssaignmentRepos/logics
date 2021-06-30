`timescale 1ns/1ps
module c08_test;

reg a, b, c;
wire d;

circuit08 gate(a, b, c, d);

initial begin
    $dumpfile("c08_test.vcd");
    $dumpvars(0, c08_test);
    $monitor("%t: a=%b, b=%b, c=%b, d=%b",
                $time, a, b, c, d);
    
    #0  a = 0;
        b = 0;
        c = 0;
    #10 a = 0;
        b = 0;
        c = 1;
    #10 a = 0;
        b = 1;
        c = 0;
    #10 a = 0;
        b = 1;
        c = 1;
    #10 a = 1;
        b = 0;
        c = 0;
    #10 a = 1;
        b = 0;
        c = 1;
    #10 a = 1;
        b = 1;
        c = 0;
    #10 a = 1;
        b = 1;
        c = 1;
    #10 $finish;
end

endmodule

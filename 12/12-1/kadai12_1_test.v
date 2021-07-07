`timescale 1ns/1ps
module kadai12_1_test;

reg a, b, c;
wire d;

kadai12_1 gate(a, b, c, d);

initial begin
    $dumpfile("kadai12_1.vcd");
    $dumpvars(0, kadai12_1_test);
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

`timescale 1ns/1ps

module c11_8_test;

reg a, b;
wire x;

or_delay gate(a, b, x);

initial begin
    $dumpfile("c11_8_test.vcd");
    $dumpvars(0, c11_8_test);
    $monitor("%t: a=%b, b=%b, x=%b",
                $time, a, b, x);
    
    #0  a = 1;
        b = 0;
    #10 a = 0;
        b = 1;
    #10 $finish;
end

endmodule

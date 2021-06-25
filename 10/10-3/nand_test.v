`timescale 1ns/1ps
module nand_test;

reg a, b;
wire c;

gate my_nand(a, b, c);

initial begin
    $dumpfile("nand_test.vcd");
    $dumpvars(0, nand_test);
    $monitor("%t: a=%b, b=%b, c=%b",
                $time, a, b, c);
    
    #0  a = 0;
        b = 0;
    #10 a = 1;
    #10 a = 0;
        b = 1;
    #10 a = 1;
    #10 a = 0;
        b = 0;
    #10 $finish;
end

endmodule

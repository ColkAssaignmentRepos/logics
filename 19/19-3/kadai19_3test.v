`timescale 1ns/100ps
module vend_test;
    reg ck, reset;
    reg x;
    wire z;

    kadai19_3 test_kadai19_3(ck, reset, x, z);

    always #10 ck = ~ck; // クロック
    initial begin
        $dumpfile("kadai19_3test.vcd");
        $dumpvars(0, test_kadai19_3);
        #0 ck = 0; reset = 0; x = 0;
        #2 reset = 1; // 出力を初期化
        #3 reset = 0;
        #10 x = 0; // S0 -> S0 (0/0)
        #10 x = 0; 
        #10 x = 1; // S0 -> S1 (1/1)
        #10 x = 0;
        #10 x = 0; // S1 -> S0 (0/0)
        #10 x = 0;
        #10 x = 1; // S1 -> S1 (1/1)
        #10 x = 0;
        #60 $finish;
    end
endmodule

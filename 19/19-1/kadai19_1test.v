`timescale 1ns/100ps
module vend_test;
    reg ck, res;
    reg x;
    wire z;

    vend vd(ck, res, x, z);

    always #10 ck = ~ck; // クロック
    initial begin
        $dumpfile("vend_test.vcd");
        $dumpvars(0, vend_test);
        ck = 0; res = 0; x = 0;
        #2 res = 1; // 出力を初期化
        #3 res = 0;
        #20 x = 1; // 100 円投入
        #5 x = 0;
        #15 x = 1; // 100 円投入
        #5 x = 0;
        #15 x = 1; // 100 円投入
        #5 x = 0;
        #15 x = 1; // 100 円投入
        #5 x = 0;
        #50 $finish;
    end
endmodule

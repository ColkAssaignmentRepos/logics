`timescale 1ns/1ps
module kadai_16_4_test;
    reg ck, res;
    wire [3:0] q;

    dcnt16 c16(ck, res, q);

    always #10 ck = ~ck; // クロック

    initial begin
        $dumpfile("kadai_16_4_test.vcd");
        $dumpvars(0, kadai_16_4_test);
        ck = 0; res = 0;
        #10 res = 1; // 出力を初期化
        #10 res = 0;
        #400 $finish;
    end

endmodule

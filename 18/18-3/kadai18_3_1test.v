`timescale 1ns/1ps
module shift_test;
    reg ck, d, res;
    wire [3:0] q;

    shift_1 sft(ck, d, res, q);

    always #10 ck = ~ck; // クロック
    initial begin
        $dumpfile("shift_test1.vcd");
        $dumpvars(0,shift_test);
        ck = 0; d = 0; res = 0;
        #0 res = 1; // 出力を初期化
        #0 res = 0;
        #15 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;
        #30 d = 1;
        #10 d = 0;
        #100 $finish;
    end
endmodule

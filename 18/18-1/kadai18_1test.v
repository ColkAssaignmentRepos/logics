`timescale 1ns/1ps

module cnt_test;
    reg ck, res;
    wire [3:0] q;

    counter cnt(ck, res, q);

    always #10 ck = ~ck; //クロック
    initial begin
        $dumpfile("cnt_test.vcd");
        $dumpvars(0, cnt_test);
        ck = 0; res = 0;
        #5 res = 1; // 出力を初期化
        #5 res = 0;
        #350 $finish;
    end
endmodule

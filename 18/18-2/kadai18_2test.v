`timescale 1ns/1ps
module cnt16_test;
reg ck, res;
wire q1, q2, q3, q4;

cnt16 c16(ck, res, q1, q2, q3, q4);

always #10 ck = ~ck; // クロック
    initial begin
        $dumpfile("cnt16_test.vcd");
        $dumpvars(0,cnt16_test);
        ck = 0; res = 0;
        #10 res = 1; // 出力を初期化
        #10 res = 0;
        #400 $finish;
end

endmodule

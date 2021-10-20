`timescale 1ns/100ps
module test_vend150;
    reg ck, res;
    reg c0, c1;
    wire y0, y1;

    vend150 v(ck, res, c0, c1, y0, y1);

    always #10 ck = ~ck; // クロック
        initial begin
            $dumpfile("vend150_test.vcd");$dumpvars;
            ck=0; c0=0; c1=0; res=0;
            #2 res =1;
            #3 res =0;
            c0=1; // 50 円投入
            #5 c0=0;
            #15 c0=1; // 50 円投入
            #5 c0=0;
            #15 c0=1; // 50 円投入
            #5 c0=0;
            #15 c1=1; // 100 円投入
            #5 c1=0;
            #15 c1=1; // 100 円投入
            #5 c1=0;
            #50 $finish;
    end

endmodule

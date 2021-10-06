`timescale 1ns/1ps
module RSFF_test;
    reg S, R;
    wire Q, QB;

    set_priority_rsff_17_5 ff(S, R, Q, QB);

    initial begin
        $dumpfile("RSFF_test.vcd");
        $dumpvars(0, RSFF_test);
        S = 0; R = 1; //初期リセット
        #0 R = 0; //初期状態
        #50 S = 1;
        #50 S = 0;
        #50 R = 1;
        #50 R = 0;
        #50 S = 1; R = 1;
        #50 $finish;
    end

endmodule

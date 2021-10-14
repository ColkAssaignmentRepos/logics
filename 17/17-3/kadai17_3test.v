`timescale 1ns/1ps
module JKFF_test;
    reg CK, J, K, RB, SB;
    wire Q;
    
    JKFF ff(CK, J, K, Q, RB, SB);

    always #10 CK = ~CK; //クロック 10ns ごとに反転
    initial begin
            $dumpfile("JKFF_test.vcd");
            $dumpvars(0,JKFF_test);
            CK = 0; J = 0; K = 0; SB = 1; RB = 1;
            #0 RB = 0; // Q を初期化
            #0 RB = 1;
            #40 J = 1;
            #40 K = 1;
            #80 J = 0;
            #40 $finish;
    end
endmodule

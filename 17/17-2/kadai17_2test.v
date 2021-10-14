`timescale 1ns/1ps
module DFF_test;
    reg CK, D;
    wire Q;

    DFF ff(CK, D, Q);

    always #10 CK = ~CK; //クロック 10ns ごとに反転

    initial begin
        $dumpfile("DFF_test.vcd");
        $dumpvars(0,DFF_test);
        CK = 0; D = 0;
        #0 CK = 1; CK = 0; // D 値で Q を初期化
        #40 D = 1;
        #40 D = 0;
        #40 D = 1;
        #40 D = 0;
        #40 $finish;
end
endmodule

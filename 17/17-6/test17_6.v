`timescale 1ns/1ps
module JKFF_test;
    reg CK, J, K;
    wire Q;

    jkff_17_6 ff(CK, J, K, Q);
    
    always #10 CK = ~CK; //クロック 10ns ごとに反転
    initial begin
        $dumpfile("JKFF_test.vcd");
        $dumpvars(0,JKFF_test);
        #0 CK = 0; J = 0; K = 0;
        #40 J = 1;
        #40 K = 1;
        #80 J = 0;
        #40 $finish;
end
endmodule
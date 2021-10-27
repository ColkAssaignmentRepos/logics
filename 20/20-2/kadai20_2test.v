`timescale 1ns/1ns
module DFF_test;
    reg CK, RST, D;
    wire Q;

    DFF ff(CK, RST, D, Q); //D-FF

    always begin // クロックの生成
        CK = 0;
        #5 CK = 1;
        #5;
    end

    initial begin
        $dumpfile("DFF_test.vcd");
        $dumpvars;
        RST = 1'b0; D = 1'b0;
        # 3 D = 1'b1;
        # 5 D = 1'b0;
        # 10 D = 1'b1;
        # 12 RST = 1'b1;
        # 10 RST = 1'b0;
        # 20 $finish;
    end
endmodule

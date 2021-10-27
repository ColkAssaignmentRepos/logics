`timescale 1ns/1ns
module counter_test;
    reg clk;

    always begin // クロックの生成(周期 100ns)
            clk = 1'b1;
        #50 clk = 1'b0;
        #50;
    end

    reg rst, con;
    output [3:0] cnt;

    counter c(clk, rst, con, cnt);

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_test);
        $monitor("%t:clk %b rst %b con %b cnt %b",
                 $time, clk, rst, con, cnt);
        rst = 1'b1; con = 1'b0;
        #10; // レーシング問題対策
        #100 rst = 1'b0;
        #100 rst = 1'b1;
        #100 rst = 1'b0;
        #100 con = 1'b1;
        #1500 rst = 1'b0;
        #100 rst = 1'b1;
        #500 con = 1'b0;
        #100 con = 1'b1;
        #600 con = 1'b0;
        #200 rst = 1'b0;
        #100 rst = 1'b1;
        #100 con = 1'b1;
        #500 $finish;
    end
endmodule

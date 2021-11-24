`timescale 1ns/100ps

module counter(clk, rst, con, cnt);
  input clk, rst, con;
  output reg [3:0] cnt;

  always @(posedge clk or negedge rst)
    if (!rst)   // 非同期リセット
      cnt <= 0;
    else begin
      if (con) begin  // イネーブル信号
        if (cnt <= 10) cnt <= cnt + 1;
        else cnt <= 0;
      end
    end
endmodule

module test_counter;
    parameter CYCLE = 100;
    parameter HALF_CYCLE = 50;
    parameter DELAY = 10;
    parameter STROBE = 90;

    reg clk;
    always begin    // クロックの生成
                    clk = 1'b1;
        #HALF_CYCLE clk = 1'b0;
        #HALF_CYCLE;
    end

    reg rst, con;
    output [3:0] cnt4;
    counter c(clk, rst, con, cnt4);    // カウンタの呼び出し

    // テスト入力
    initial begin
        rst = 1'b1; con = 1'b0;
        #DELAY;
        #CYCLE      rst = 1'b0;
        #CYCLE      rst = 1'b1;
        #CYCLE      con = 1'b1;
        #(15*CYCLE) rst = 1'b0;
        #CYCLE      rst = 1'b1;
        #(5*CYCLE)  con = 1'b0;
        #CYCLE      con = 1'b1;
        #(6*CYCLE)  con = 1'b0;
        #(2*CYCLE)  rst = 1'b0;
        #CYCLE      rst = 1'b1;
        #CYCLE      con = 1'b1;
        #(5*CYCLE)  $finish;
    end

    integer i;
    initial begin
        #STROBE;
        for (i=0;i<40;i=i+1) begin
            $display("%d: RST_X=%b COUNTON=%b CNT4=%h", i, rst, con, cnt4);
            #CYCLE;
        end
    end
    
endmodule

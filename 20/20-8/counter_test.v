module count_test;
reg CLK, RST, CON;
wire [1:0] CNT;

counter cnt4(.clk(CLK), .rst(RST), .con(CON), .cnt(CNT));

always begin
    CLK = 0;
    #50 CLK = 1;
    #50;
end

initial begin
    $monitor("CLK=%b, RST=%b, CON=%b, CNT=%b", CLK, RST, CON, CNT);
    $dumpfile("test.vcd");
    $dumpvars(0, cnt4);
    RST = 1'b1; CON=1'b0;
    #10; // レーシング問題回避
    #100 RST = 1'b0;
    #100 RST = 1'b1;
    #100 CON = 1'b1;
    #100 RST = 1'b0;
    #100 $finish;
end
endmodule

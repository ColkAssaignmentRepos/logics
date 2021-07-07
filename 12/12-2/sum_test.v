module sum_test;
    reg [7:0] A, B;

    function [7:0] sum;
        input [7:0] a, b;
        sum = a + b;
    endfunction

    initial begin
        A = 8'b0111_1111;   // ここの値を変えて動作確認
        B = 8'b0000_0001;   // 同上

        $display("%b", sum(A, B));
    end
endmodule

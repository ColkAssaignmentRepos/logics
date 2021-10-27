module counter(clk, rst, con, cnt);
    input clk, rst, con;
    output reg [3:0] cnt;

    always @(posedge clk)
        if (!rst) // リセット
            cnt <= 0;
        else begin
            if (con) begin // イネーブル信号
                if (cnt <= 10) cnt <= cnt + 1;
                else cnt <= 0;
        end
    end

endmodule

module counter(clk, rst, con, cnt);
    input clk, rst, con;
    output reg [1:0] cnt;

    always @(posedge clk)
    if (!rst) // リセット
        cnt <= 0;
    else begin
        if (con) begin
            if (cnt < 3) cnt <= cnt + 1;
            else cnt <= 0;
        end
    end
endmodule

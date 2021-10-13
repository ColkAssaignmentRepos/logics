// ダウンカウンタ (リセット機能付き)
module dcnt16 ( ck, res, q );
    input ck, res;
    output [3:0] q;
    reg [3:0] q;

    always @(posedge ck or posedge res)
    begin
        if ( res == 1'b1 )
            q <= 4'hF;
        else
            q <= q - 4'b1;
    end
endmodule

// T-FF の記述部 (リセット機能付き)
module TFF ( ck, res, q );
    input ck, res;
    output q;
    reg q;

    always @(negedge ck or posedge res)
    begin
        if ( res == 1'b1 )
            q <= 1'b0;
        else
            q <= ~q;
    end
endmodule

// カウンタ (TFFモジュールの接続) の記述部
module cnt16(ck, res, q1, q2, q3, q4);
    input ck, res;
    output q1, q2, q3, q4;

    TFF ff1(ck, res, q1);
    TFF ff2(q1, res, q2);
    TFF ff3(q2, res, q3);
    TFF ff4(q4, res, q4);
endmodule

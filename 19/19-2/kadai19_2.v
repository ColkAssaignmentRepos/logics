module vend150(ck, res, c0, c1, y0, y1);
    input ck, res;
    input c0, c1;
    output y0, y1;
    reg [1:0] q;
    wire qn0, qn1;
    wire [1:0] qn;
    
    assign qn = {qn1, qn0};
    assign y1 = q[1] & c1;
    assign y0 = q[1] & c1 | q[0] & c1 | q[1] & c0;

    assign qn1 = q[0] & c0 | (~q[1]) & (~q[0]) & c1 | q[1] & (~c1) & (~c0);
    assign qn0 = (~q[1]) & (~q[0]) & c0 | q[0] & (~c1) & (~c0);

    always @(posedge ck or posedge res) begin
        if(res == 1'b1)
            q <= 2'b0;
        else
            q <= qn;
    end

endmodule

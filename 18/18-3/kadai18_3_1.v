module shift_1( ck, d, res, q );
    input ck, d, res;
    output [3:0] q;
    reg [3:0] q;

    always @( negedge ck or posedge res)
    begin
        if( res == 1'b1 )
            q <= 4'h0;
    else begin
            q[0] <= d;
            q[1] <= q[0];
            q[2] <= q[1];
            q[3] <= q[2];
        end
    end
endmodule

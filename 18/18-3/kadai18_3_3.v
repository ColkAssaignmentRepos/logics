module shift_3( ck, d, res, q );
    input ck, d, res;
    output [3:0] q;
    reg [3:0] q;

    always @( negedge ck or posedge res)
    begin
        if( res == 1'b1 )
            q <= 4'h0;
    else
        q <= { q[2:0], d };
    end
endmodule

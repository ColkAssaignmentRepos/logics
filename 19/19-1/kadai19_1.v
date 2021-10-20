module vend( ck, res, x, z );
    input ck, res;
    input x;
    output z;
    reg q;
    wire qn;

    assign z = x & q;
    assign qn = x ^ q;

    always @( posedge ck or posedge res)
        begin
            if( res == 1'b1 )
                q <= 1'b0;
            else
                q <= qn;
    end
    
endmodule

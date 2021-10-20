module kadai19_3(ck, reset, x, z);
    input ck, reset;
    input x;
    output z;

    reg q;
    wire qn;

    assign z = x & ~q;
    assign qn = x ^ q;

    always @( posedge ck or posedge reset )
        begin
            if (reset == 1'b1)
                q <= 1'b0;
            else
                q <= qn;
        end

endmodule

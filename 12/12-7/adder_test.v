module add_test;
    reg i1, i2;
    reg ci;
    wire r;
    wire co;

    fa a(i1, i2, ci, r, co);

    initial begin
        $monitor("%b + %b + (%b) = %b ...\ncarry=%b", i1, i2, ci, r, co);
        i1 = 0; i2 = 0; ci = 0;
        #10 i1 = 0; i2 = 0; ci = 1;
        #10 i1 = 0; i2 = 1; ci = 0;
        #10 i1 = 0; i2 = 1; ci = 1;
        #10 i1 = 1; i2 = 0; ci = 0;
        #10 i1 = 1; i2 = 0; ci = 1;
        #10 i1 = 1; i2 = 1; ci = 0;
        #10 i1 = 1; i2 = 1; ci = 1;
        #10 $finish;
    end
endmodule
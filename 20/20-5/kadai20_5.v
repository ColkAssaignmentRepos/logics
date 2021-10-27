module comb_3in(a,b,c,z);
    input a,b,c;
    output z;
    assign z = (a & b)|~(b & ~c);
endmodule

module comb_3in(a,b,c,z);
    input a,b,c;
    output z;
    assign z = (a & b)|~(b & ~c);
endmodule

`timescale 1ns/1ns
module comb_3in_test;
    reg in1, in2, in3;
    reg [2:0] mem[0:7]; //3bitの要素を8個持つ配列のレジスタ宣言
    wire out;
    integer i;

    comb_3in co(in1, in2, in3, out);

    initial begin
        $readmemb("input.txt", mem);
        $monitor("%t: a=%b b=%b c=%b y=%b", $time, in1, in2, in3, out);
        for( i=0; i<8; i=i+1 )
        begin
            {in1, in2, in3} = mem[i];
            #100;
        end
        $finish;
    end
endmodule
`timescale 1ns/1ns
module comb_3in_test;
    reg in1,in2,in3;
    wire out;
    integer i;

    comb_3in co(in1, in2, in3, out);

    initial begin
        $monitor("%t: a=%b b=%b c=%b y=%b",
                 $time, in1, in2, in3, out);

        for (i = 0; i < 8; i = i + 1) begin
            {in1, in2, in3} = i;
            #10;
        end

    end
endmodule

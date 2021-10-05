`timescale 1ns/1ns
module test16_1;
    reg a,b,c;
    wire z;

    m16_1 f( a, b, c, z );

    initial begin
        $dumpfile("test16_1.vcd");
        $dumpvars(0, test16_1);
        $monitor("%t: a = %b, b = %b, c = %b, z = %b", $time, a, b, c, z);
        a=0; b=0; c=0;
        #10 c=1;
        #10 c=0; b=1;
        #10 c=1;
        #10 c=0; b=0; a=1; 
        #10 c=1;
        #10 c=0; b=1;
        #10 c=1;
        #10 $finish;
    end

endmodule
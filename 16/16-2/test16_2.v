`timescale 1ns/1ns
module test16_2;
    reg [2:0] D;
    reg [1:0] S;
    wire [2:0] Y0,Y1,Y2,Y3;

    demux_16_2 f(D,S,Y0,Y1,Y2,Y3);

    initial begin
        D = 3'b111;
        S = 2'b00;
        $display("D = %b", D);
        $monitor("S=%b, Y0=%b, Y1=%b, Y2=%b, Y3=%b",S,Y0,Y1,Y2,Y3);
        #10 S = 2'b01;
        #10 S = 2'b10;
        #10 S = 2'b11;
        $finish;
    end
endmodule
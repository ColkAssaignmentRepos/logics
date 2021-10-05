module demux_16_2(D0, S, Y0, Y1, Y2, Y3);
    input [2:0] D0;
    input [1:0] S;
    output [2:0] Y0;
    output [2:0] Y1;
    output [2:0] Y2;
    output [2:0] Y3;

    assign Y0 = (S == 2'b00) ? D0 : 3'bxx;
    assign Y1 = (S == 2'b01) ? D0 : 3'bxx;
    assign Y2 = (S == 2'b10) ? D0 : 3'bxx;
    assign Y3 = (S == 2'b11) ? D0 : 3'bxx;

endmodule

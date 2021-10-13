module DFF ( CK, D, Q );
    input CK, D;
    output Q;
    reg Q;

    always @( negedge CK )
        Q <= D;

endmodule


module prregister_18(ck, d1, d2, d3, d4, q1, q2, q3, q4);
    input ck;
    input d1;
    input d2;
    input d3;
    input d4;
    output q1;
    output q2;
    output q3;
    output q4;

    DFF dff1(ck, d1, q1);
    DFF dff2(ck, d2, q2);
    DFF dff3(ck, d3, q3);
    DFF dff4(ck, q4, q4);

endmodule

module sregister_18(ck, d, q1, q2, q3, q4);
    input ck;
    input d;
    output q1;
    output q2;
    output q3;
    output q4;

    DFF d1(ck, d, q1);
    DFF d2(ck, q1, q2);
    DFF d3(ck, q2, q3);
    DFF d4(ck, q3, q4);

endmodule

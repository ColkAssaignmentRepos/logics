module m16_1(A, B, C, Y);
    input A;
    input B;
    input C;
    output Y;

    // 加法標準形及びベイチ図によれば、最簡形は AC+A!B+!BC+!AB!C
    assign Y = ((A & C) | (A & ~B) | (~B & C) | (~A & B & ~C));
endmodule

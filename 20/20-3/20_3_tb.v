module count_test;
reg in1, in2;
wire out;

m21 m(out, in1, in2);

initial begin
    $monitor("%t: in1: %b, in2: %b, out: %b", $time, in1, in2, out);
    #0  in1 = 1'b0; in2 = 1'b0;
    #10 in1 = 1'b0; in2 = 1'b1;
    #10 in1 = 1'b1; in2 = 1'b0;
    #10 in1 = 1'b1; in2 = 1'b1;
    #10 $finish;
end

endmodule

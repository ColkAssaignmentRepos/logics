module count_test;
reg in1, in2;
wire out;
integer I;



initial begin
    $monitor("%t: in1: %b, in2: %b, out: %b", $time, in1, in2, out);
    for (I = 0; I < 4; I = I + 1) begin
        {in1, in2} = I;
        #10;
    end
    $finish;
end

endmodule

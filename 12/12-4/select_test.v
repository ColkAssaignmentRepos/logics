module select_test;
    reg [7:0] A, B;

    function [7:0] select;
        input s;
        input [7:0] in0, in1;
        begin
            if ( s == 1'b0 ) select = in0;
            else select = in1;
        end
    endfunction

    initial begin
        A = 8'b1111_1111; B = 8'b0000_0001;
        $display("select=0 %b", select( 1'b0, A, B ) );
        $display("select=1 %b", select( 1'b1, A, B ) );
    end
endmodule

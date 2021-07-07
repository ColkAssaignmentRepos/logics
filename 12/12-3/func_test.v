module func_test;
    reg A, B, C;    // 関数への入力

    function circuit;   // 戻り値が1ビットのときは<ビット幅>は省略
        input a, b, c;
        circuit = ( (a&b) | ~(b&~c) );
    endfunction

    initial begin
        A = 1; B = 0; C = 1;
        $display("A=%b, B=%b, C=%b, Z=%b", A,B,C, circuit( A, B, C ) );
    end
endmodule

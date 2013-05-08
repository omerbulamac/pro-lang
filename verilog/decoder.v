module decoder (A, B, D);

input A , B ;
output [3:0] D ;

// ilklendirmeler
// ----------------
// assign A = 1'b0;
// assign B = 1'b1;

// D'deki ikilik tabanda 01 indisli yer yani 2. indis 1 gerisi 0
// 0010 ciktisi almaliyiz.

assign D[0] = ( {A,B} == 2'b00 ) ;
assign D[1] = ( {A,B} == 2'b01 ) ;
assign D[2] = ( {A,B} == 2'b10 ) ;
assign D[3] = ( {A,B} == 2'b11 ) ;

endmodule
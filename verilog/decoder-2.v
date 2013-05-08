module decoder (A, B, D);

input A , B ;
output [3:0] D ;

// ilklendirmeler
// ----------------
// assign A = 1'b0;
// assign B = 1'b1;

// D'deki ikilik tabanda 01 indisli yer yani 2. indis 1 gerisi 0
// 0010 ciktisi almaliyiz.

reg [3:0] D ;
always @ ( A or B )
case ( { A , B } )
2'b00 : D = 4'b0001 ;
2'b01 : D = 4'b0010 ;
2'b10 : D = 4'b0100 ;
2'b11 : D = 4'b1000 ;
endcase

endmodule
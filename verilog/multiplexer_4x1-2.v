module mult_NxN_simple (A, B, C, D, S, Y);

input A , B , C , D ;

input [1:0] S ;


assign A = 1'b0;
assign B = 1'b1;
assign C = 1'b0;
assign D = 1'b1;

assign S = 2'b10; // c'yi seciyoruz.

output Y ;

reg Y ;
always @ ( A or B or C or D or S )
case ( S )
0 : Y = A ;
1 : Y = B ;
2 : Y = C ;
3 : Y = D ;
endcase

endmodule
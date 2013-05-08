module encoder (E, A, B);

input [3:0] E ;
output A , B ;

// ilklendirmeler
// ----------------
// assign E = 4'b1000;

// E'nin 3. indisi 1 yani A ve B ikilik tabanda 3'u gosterecek
// yani {A B} = 11 olacak.

reg A , B ;
always @ ( E )
casex ( E )
4'b0001 : {A,B} = 2'b00 ;
4'b0010 : {A,B} = 2'b01 ;
4'b0100 : {A,B} = 2'b10 ;
4'b1000 : {A,B} = 2'b11 ;
default : {A,B} = 2'bxx ;
endcase

endmodule
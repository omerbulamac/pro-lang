module simple_sreg ( inp , out , ck , rn ) ;

parameter N = 4;

input inp, ck, rn ;
output [N-1:0] out ;
reg [N-1:0] out ;
wire [N-1:0] nst ;

// her zaman girdiyi kütüğün msbitini (sol) bir bit kaydır
assign nst = { inp , out[N-1:1] } ; // {} = concatenation
// hafızayı tanımla (sonraki durum ile şimdiki durum arasındaki iletişim)

always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else out <= nst ;

endmodule


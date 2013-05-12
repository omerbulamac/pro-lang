module simple_reg ( load , inp , out , ck , rn ) ;

parameter N = 4;

input load, ck, rn ;
input [N-1:0] inp ;
output [N-1:0] out ;

reg [N-1:0] out ; // şimdiki durum her zaman çıktıya eşit olur
wire [N-1:0] nst ;

// load=1 ise load kütüğünü inp ile yükle. Aksi halde birşsey yapma
assign nst = load ? inp : out ;
// hafızayı tanımla (sonraki durum ile çıktı)
always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else out <= nst ;
endmodule



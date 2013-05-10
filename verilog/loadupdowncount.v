module loadupdowncount ( load , val , up , cnt , ck , rn ) ;

parameter N = 4;

input load , up, ck, rn;
input [N-1:0] val ;
output [N-1:0] cnt ;
reg [N-1:0] pst ;
wire [N-1:0] nst ;

//load=1 iken sayaca val yükle. Aksi halde sayacı artır veya azalt up=1/0 durumuna göre)
assign nst = load ? val : ( up ? ( pst + 1 ) : ( pst - 1 ) ) ;

// çıktı şimdiki duruma eşit olur
assign cnt = pst ;

// hafızayı tanımnla ( sonraki durum ve şimdiki durum arasındaki geçiş)
always @ ( posedge ck or negedge rn )
if ( !rn ) pst <= 0 ;
else pst <= nst ;
endmodule
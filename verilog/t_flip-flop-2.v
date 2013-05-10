module tff ( t , q , ck , rn ) ;

input t, ck, rn;
output q ;

reg pst ;
wire nst ;

// sonraki durumu input ve şimdiki durum ile tanımla
assign nst = t ? ~ pst : pst ;

// çıktıyı input ve şimdiki durum cinsinden tanımla
assign q = pst ;

// hafızayı tanımla (sonraki durum ve şimdiki durum arasındaki geçiş)
always @ ( posedge ck or negedge rn )
if ( !rn ) pst <= 0 ;
else pst <= nst ;

endmodule

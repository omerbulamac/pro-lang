module tff ( t , q , ck , rn ) ;

input t, ck, rn;
output q ;

reg pst ;
wire nst ;

assign nst = t ? ~ pst : pst ;
assign q = pst ;

always @ ( posedge ck or negedge rn )
if ( !rn ) pst <= 0 ;
else pst <= nst ;

endmodule

module upcount ( cnt , ck , rn ) ;

parameter N = 4;
input ck, rn;
output [N-1:0] cnt ;
reg [N-1:0] pst ;
wire [N-1:0] nst ;

assign nst = pst + 1 ;
assign cnt = pst ;

always @ ( posedge ck or negedge rn )
if ( !rn ) pst <= 0 ;
else pst <= nst ;
endmodule
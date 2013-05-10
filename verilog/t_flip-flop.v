module t_ff ( T, CK, RN, Q);
 
input T , CK , RN ;
output Q ;

reg Q ;

always @ ( posedge CK or negedge RN )
if ( !RN ) Q <= 0 ;
else if ( T ) Q <= ~ Q ;

endmodule
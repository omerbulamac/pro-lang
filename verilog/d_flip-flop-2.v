module d_ff ( D, CK, RN, Q);
 
input D , CK , RN ;
output Q ;
reg Q ;

always @ ( posedge CK or negedge RN )
if ( !RN ) Q <= 0 ;
else Q <= D ;

// CK sinyali yukselen kenardayken veya RN alcalan kenardayken bloktaki kodlarý isle
// CK yukselen kenari sayesinde bloða girdiyse eger if dongusune takýlmadan D neyse cikisa onu aktaracak
// ama RN alcalan kenari sayesinde girdiyse donguye if dongusundeki kod parcasi islenecek ve cikisa sifir
// verilecek.

endmodule
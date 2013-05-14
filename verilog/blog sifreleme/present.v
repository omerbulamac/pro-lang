//top level

module  present  ( start, ptext, key, CK, RN, ready, ctext );

input   start;
input   [63:0]  ptext;  
input   [79:0]  key; 
input   CK; 
input   RN;

wire	act, last;
wire	[79:0] krnd;
wire	[4:0] rc;

output  ready;
output  [63:0] ctext; 


control  u_control  (
  .start ( start ),
  .ready ( ready ),
  .last ( last ),
  .act ( act ),
  .CK ( CK ),
  .RN ( RN ),
  .rc ( rc )
  ) ;

present_state  u_state  (
  .start ( start ),
  .act ( act ),
  .last ( last ),
  .ptext ( ptext ),
  .krnd ( krnd ),
  .CK ( CK ),
  .RN ( RN ),
  .ctext ( ctext )
) ;

present_key  u_key  (
  .start ( start ),
  .act( act ),
  .key ( key ),
  .rc ( rc ),
  .CK ( CK ),
  .RN ( RN ),
  .krnd ( krnd )
) ;

endmodule

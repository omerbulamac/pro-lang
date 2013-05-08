module FA (A, B, Ci, Co, S);

input A , B, Ci ;
output Co , S ;

// ilklendirmeler
// ----------------
// assign A  = 1'b1;
// assign B  = 1'b1;
// assign Ci = 1'b0;

reg [1:0] sum ;
always @ ( A or B or Ci )
sum = A + B + Ci ;
assign { Co , S } = sum ;

endmodule
module FA (A, B, Ci, Co, S);

input A , B, Ci ;
output Co , S ;

// ilklendirmeler
// ----------------
// assign A  = 1'b1;
// assign B  = 1'b1;
// assign Ci = 1'b0;

assign { Co , S } = A + B + Ci ;

endmodule
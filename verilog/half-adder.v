module HA (A, B, Co, S);

input A , B ;
output Co , S ;

// ilklendirmeler
// ----------------
// assign A = 1'b0;
// assign B = 1'b1;

assign { Co , S } = A + B ;

endmodule
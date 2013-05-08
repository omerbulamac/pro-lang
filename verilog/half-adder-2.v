module HA (A, B, Co, S);

input A , B ;
output Co , S ;

// ilklendirmeler
// ----------------
// assign A = 1'b0;
// assign B = 1'b1;

reg [1:0] sum ;
always @ ( A or B )
sum = A + B ;
assign { Co , S } = sum ;

endmodule
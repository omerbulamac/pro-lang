//////////////////////////////////////////////////
// sbox module
//
module  sub_byte ( a , y ) ;


input   [3:0]  a ;  // 4-bit input A

output  [3:0]  y ;  // 4-bit output Y

reg [3:0]  y ;  // 4-bit output Y

always @(a)
case(a)
0: y = 4'hc;
1: y = 4'h5;
2: y = 4'h6;
3: y = 4'hb;
4: y = 4'h9;
5: y = 4'h0;
6: y = 4'ha;
7: y = 4'hd;
8: y = 4'h3;
9: y = 4'he;
10: y = 4'hf;
11: y = 4'h8;
12: y = 4'h4;
13: y = 4'h7;
14: y = 4'h1;
15: y = 4'h2;
endcase

endmodule

/////////
//  sboxkeylayer module
//
module  sboxkeylayer ( a , y ) ;


input   [3:0]  a ;  // 4-bit input A

output  [3:0]  y ;  // 4-bit output Y

reg [3:0] y;

//assign	b = a;

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
4'ha: y = 4'hf;
4'hb: y = 4'h8;
4'hc: y = 4'h4;
4'hd: y = 4'h7;
4'he: y = 4'h1;
4'hf: y = 4'h2;
endcase

//assign	y = b;

endmodule

/////////
//  sboxlayer-player module
//
module  sboxlayer ( a , y ) ;


input   [63:0]  a ;  // 64-bit input A

output  [63:0]  y ;  // 64-bit output Y

wire	[3:0] ba [15:0]; 
wire	[3:0] by [15:0]; 
wire	[63:0] b;

genvar i;


// generate
// for ( i = 0; i < 16; i = i+1 ) begin : slayer1
	// assign ba[i] = a[i*4: (i+1)*4-1];
// end //slayer1
// endgenerate


//Split input 
assign  ba[0]   =  a[3:0] ;
assign  ba[1]   =  a[7:4] ;
assign  ba[2]   =  a[11:8] ;
assign  ba[3]   =  a[15:12] ;
assign  ba[4]   =  a[19:16] ;
assign  ba[5]   =  a[23:20] ;
assign  ba[6]   =  a[27:24] ;
assign  ba[7]   =  a[31:28] ;
assign  ba[8]   =  a[35:32] ;
assign  ba[9]   =  a[39:36] ;
assign  ba[10]  =  a[43:40] ;
assign  ba[11]  =  a[47:44] ;
assign  ba[12]  =  a[51:48] ;
assign  ba[13]  =  a[55:52] ;
assign  ba[14]  =  a[59:56] ;
assign  ba[15]  =  a[63:60] ; 

// generate
// for ( i = 0; i < 16; i = i+1 ) begin : gensboxlayer
	// sboxkeylayer aa( .a(ba[i]), .y(by[i]) );
// end //gensboxlayer
// endgenerate

sboxkeylayer m00 ( .a( ba [0] ), .y( by[0] ) );
sboxkeylayer m01 ( .a( ba [1] ), .y( by[1] ) );
sboxkeylayer m02 ( .a( ba [2] ), .y( by[2] ) );
sboxkeylayer m03 ( .a( ba [3] ), .y( by[3] ) );
sboxkeylayer m04 ( .a( ba [4] ), .y( by[4] ) );
sboxkeylayer m05 ( .a( ba [5] ), .y( by[5] ) );
sboxkeylayer m06 ( .a( ba [6] ), .y( by[6] ) );
sboxkeylayer m07 ( .a( ba [7] ), .y( by[7] ) );
sboxkeylayer m08 ( .a( ba [8] ), .y( by[8] ) );
sboxkeylayer m09 ( .a( ba [9] ), .y( by[9] ) );
sboxkeylayer m10 ( .a( ba [10] ), .y( by[10] ) );
sboxkeylayer m11 ( .a( ba [11] ), .y( by[11] ) );
sboxkeylayer m12 ( .a( ba [12] ), .y( by[12] ) );
sboxkeylayer m13 ( .a( ba [13] ), .y( by[13] ) );
sboxkeylayer m14 ( .a( ba [14] ), .y( by[14] ) );
sboxkeylayer m15 ( .a( ba [15] ), .y( by[15] ) );


assign  b  =  { by[0]  , by[1]  , by[2]  , by[3]  ,
                by[4]  , by[5]  , by[6]  , by[7]  ,
                by[8]  , by[9]  , by[10] , by[11] ,
                by[12] , by[13] , by[14] , by[15] } ;


generate
for ( i = 0; i < 63; i = i+1 ) begin : player
	assign	y[i] = b[ ( i * 16 ) % 63 ];
end //player
endgenerate

assign	y[63] = b[63];

endmodule

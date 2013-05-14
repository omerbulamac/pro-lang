module  present_key  ( start, act, key, rc, CK, RN, krnd ) ;
	
	input   start;
	input   CK, RN, act;
	input   [79:0] key;  // Key input
	input	[4:0] rc;
	
	output	[79:0] krnd;
	
	wire	[3:0] swo;
	wire	[4:0] rwo;
	wire	[79:0] rinp, keytemp;
	wire 	[79:0] temp1;

	
	assign	rinp = start ? key : ( act ? krnd : keytemp);
	dff # (.n(80)) u_reg( .D(rinp), .Q(keytemp), .CK(CK), .RN(RN) );
	
	
	assign	temp1 = {keytemp[18:0], keytemp[79:19]};
	
	sboxkeylayer aa( .a(temp1[79:76]), .y(swo) );
	
	assign	krnd = {swo, temp1[75:20], ( temp1[19:15] ^ rc ), temp1[14:0] };
		
	// genvar  i ;
	// generate
		// for  ( i  =  0 ;  i  <  79 ;  i  =  i + 1 )  begin  :  pre1
			// assign  krnd[i]  =  keytemp[(i+19) % 80] ;
		// end  // pre1
	// endgenerate
	
	// assign krnd = {keytemp[18:0], keytemp[79:19]};
		
	// sboxkeylayer aa( .a(krnd[79:76]), .y(swo));
	
	//assign	krnd[79:76] = swo;
	// assign	rwo = krnd[19:15] ^ rc;
	
	// assign	krnd[19:15] = rwo;
	
//	assign krnd
//	assign	krnd = keytemp;
	
endmodule

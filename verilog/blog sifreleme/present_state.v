module  present_state  ( start, act, last, ptext, krnd, CK, RN, ctext ) ;
	
	input   start;
	input   CK, RN, act;
	input   [63:0]  ptext;
	input	[79:0]	krnd;
	input	last;
		
	output	[63:0]	ctext;
	
	wire	[63:0] snext, pout, kin, sin, tout, krnd1;
		
	assign	snext = start ? ptext : ( act ? tout : sin);
	dff # (.n(64)) asd_reg( .D(snext), .Q(sin), .CK(CK), .RN(RN) );
	
	assign	krnd1 = krnd[79:16];
	
	assign	kin = sin ^ krnd1;
		
	sboxlayer aa( .a(kin), .y(pout) );
	
	assign	tout = last ? pout ^ krnd1 : pout;
	
	assign	ctext = sin;
	
endmodule


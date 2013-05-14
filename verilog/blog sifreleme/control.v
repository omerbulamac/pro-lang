module control ( start, ready, last, act, CK, RN, rc );
	
	input   start;
	input   CK, RN;
	
	output	last;
	output	ready;
	output	act;
	output	[0:4] rc;
	
	wire	actn;
	wire	[0:4] cntn, cnt;	// counter
	
	
		assign	actn = start ? 1 : ( ( ( cnt == 5'b11111 ) && act ) ? 0 : act );	//run as long as
		dff		#( .n(1) ) n_act ( .D(actn), .Q(act), .CK(CK), .RN(RN) );
		
		assign	cntn = start ? 0 : ( act ? ( cnt+1 ) : cnt );	// start to run
		dff		#( .n(5) ) n_cnt ( .D(cntn), .Q(cnt), .CK(CK), .RN(RN) );
		
		assign	last = act && ( cnt == 5'b11111 ); 	//last
		
		dff		#( .n(1) ) n_rdy ( .D(last), .Q(ready), .CK(CK), .RN(RN) ); 	//ready
		
		// assign	rc = start ? 0 : cntn;
		// dff		#( .n(5) ) n_rc ( .D(rc), .Q(cntn), .CK(CK), .RN(RN));
		
		assign	rc = cnt;
		
endmodule

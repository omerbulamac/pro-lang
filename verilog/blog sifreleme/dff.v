module dff ( D, Q, CK, RN );
	
	parameter n=4;
	input   [n-1:0] D;
	input   CK , RN ;
	output  [n-1:0] Q;
	reg 	[n-1:0] Q;
	
	always @( posedge CK or negedge RN )
		if (!RN) Q <= #1 0;
		else	 Q <= #1 D;

endmodule

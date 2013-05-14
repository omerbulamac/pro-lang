module control_tb;
	
	parameter	per = 32;
	
	reg			start;
	reg			CK, RN;
	
	wire		last;
	wire		ready;
	wire		act;
	wire		[4:0] rc;
	
	
	initial		RN <= 0; // RN 
	initial		#( per/2 ) RN <= 1;
	
	initial 	CK <= 1; // CK
	always	#( per/2 ) CK <= ~CK;
	
	initial
			begin
				start <= #1 0;
				#( 2 *per );
				start <= #1 1;
				#( per ); //per kadar bekle
				start <= #1 0;
				#( 34*per ); // 32 + 2, 34*per sure sonunda sonlandir
				$stop;
			end

	control dut ( .start( start ), .ready( ready ), .last( last ), .act( act ), .CK( CK ), .RN( RN ), .rc( rc ) );	// device under test
endmodule

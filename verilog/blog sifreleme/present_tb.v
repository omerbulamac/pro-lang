//////////////////////////////////////////////////
`timescale  1 ns / 1 ns
//////////////////////////////////////////////////
// Testbench for AES-128 module
//
module  present_tb ;


parameter  per  =  32 ;  // CloCK period for 100 MHz

// ptextuts declared as "registers"
reg   start ;
reg   [63:0]  ptext ;  // Data ptextut
reg   [79:0]  key ;  // Key ptextut
reg   CK ; // Rising edge cloCK
reg   RN ; // Active low reset

// ctextputs declared as "nets"
wire	ready ;
wire	[4:0] cnt;
wire	[63:0]  ctext ;  // Data ctextput

// InteRNal variables for simulation control
integer  i ;


// Instantiate device under test (DUT)
present dut  (
  .start ( start ) ,
  .ptext   ( ptext   ) ,
  .key   ( key   ) ,
  .CK    ( CK    ) ,
  .RN    ( RN    ) ,
  .ready ( ready ) ,
  .ctext   ( ctext )
) ;

// Define reset
initial
  begin
    RN  <=  1'b0 ;  // Initially reset is "0".
    #(per/2) ;      // After (per/2) nanoseconds
    RN  <=  1'b1 ;  // reset becomes "1" (inactive)
  end

// Define cloCK
initial  CK  <=  1'b1 ;  // Initially cloCK is "1"
always  #(per/2)  // Every (per/2) ns, cloCK is toggled,
  CK  <=  ~ CK ;  // resulting in a periodic square wave

// Other stimulus
//
initial  // Use "initial" to define waveforms
  begin  // starting at zero time.
    // Initialize everything first
    start  <= #1  1'b0 ;
    ptext    <= #1  64'd0 ;
    key    <= #1  80'd0 ;
    // Wait a few periods. Change ptextuts and send start
    #(3*per) ;  // Wait for 3 periods of time
    ptext    <= #1  64'h0000000000000000 ;
    key    <= #1  	80'h00000000000000000000 ;
    start  <= #1  1'b1 ;  // Start pulled up
    #(per) ;           // After one period of time
    start  <= #1  1'b0 ;  // start is pulled down -> a single pulse
    // Wait until ready becomes "1"
    wait ( ready ) ;
    #(3*per) ;  // CheCK to see if ctextput is correct
    // Wait a few periods. Change ptextuts and send start
    #(3*per) ;  // Wait for 3 periods of time
    ptext    <= #1  64'hffffffffffffffff ;
    key    <= #1  	80'hffffffffffffffffffff ;
    start  <= #1  1'b1 ;  // Start pulled up
    #(per) ;           // After one period of time
    start  <= #1  1'b0 ;  // start is pulled down -> a single pulse
    // Wait until ready becomes "1"
    wait ( ready ) ;
    #(3*per) ;  // CheCK to see if ctextput is correct
     $stop ;
  end

endmodule

module d_ff ( d, clk, q, q_bar);
 
input d ,clk;
output q, q_bar;
 
wire d ,clk;
reg q, q_bar;

always @ (posedge clk) // clk yukselen kenar oldugunda bu bloktaki kodlar isleniyor.
begin
q <= d;
q_bar <= !d;
end

// clk yukselen kenar oldugu anda d degeri ne ise cikisa(q) onu aktar.

endmodule
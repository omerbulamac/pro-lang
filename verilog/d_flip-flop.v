module d_ff ( d, clk, q, q_bar);
 
input d ,clk;
output q, q_bar;
 
wire d ,clk;
reg q, q_bar;
 
// assign d = 1'b1;
 
always @ (posedge clk)
begin
q <= clk;
q_bar <= ! clk;
end
 
endmodule

// force clk 0 0 ns, 1 10 ns -repeat 20 ns
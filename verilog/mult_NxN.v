module mult_NxN (a, b, y);

parameter N = 4;

input [N-1:0] a;
input [N-1:0] b;

output[2*N-1:0] y;

wire [N-1:0] m [0:N-1];
wire [N:0] p [0:N-1];

genvar i;
generate
for(i=0; i<N; i=i+1)
begin:mults
assign m[i] = a[i] ? b : 0;
end
endgenerate

assign p[0] = { 1'b0, m[0] };

genvar j;
generate
for(j=0; j<N; j=j+1)
begin : pmults
assign y[j-1] = p[j-1][0];
assign p[j] = m[j] + p[j-1][N:1];
end
endgenerate

assign y[2*N-1:N-1] = p[N-1];

endmodule
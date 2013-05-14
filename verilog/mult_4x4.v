module mult_4x4 (a, b, y);

input [3:0] a;
input [3:0] b;

output[7:0] y;

wire [3:0] m [0:3];
wire [4:0] p [0:3];

assign m[0] = a[0] ? b : 0;
assign m[1] = a[1] ? b : 0;
assign m[2] = a[2] ? b : 0;
assign m[3] = a[3] ? b : 0;


assign p[0] = { 1'b0, m[0] };

assign y[0] = p[0][0];
assign p[1] = m[1] + p[0][4:1];

assign y[1] = p[1][0];
assign p[2] = m[2] + p[1][4:1];

assign y[2] = p[2][0];
assign p[3] = m[3] + p[2][4:1];

assign y[7:3] = p[3];

endmodule
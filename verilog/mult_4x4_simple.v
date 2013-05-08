module mult_4x4_simple (a, b, y);

parameter N = 4;

input [N-1:0] a;
input [N-1:0] b;

// assign a = 4'b0100;
// assign b = 4'b0010;

output [2*N-1:0] y;

assign y = a * b;

endmodule
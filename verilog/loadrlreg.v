module loadrlreg ( load , dir , pinp , linp , rinp , out , ck , rn ) ;

parameter N = 4;

input load , dir, ck, rn ;
input [N-1:0] pinp ; // load için paralel girdi
input linp , rinp ; // girdilerin 1-bit sağa sla kaydırılmış hali
output [N-1:0] out ;

reg [N-1:0] out ;
wire [N-1:0] nst ;

// kütüğü load=1 iken pinp ile yükle. Aksi halde dir=1 ise sağa kaydır, aksi haldesola kaydır.
assign nst = load ? pinp : (
dir ? { linp , out[N-1:1] } :
{ out[N-2:0] , rinp } ) ;
// hafızayı tanımla (sonraki durum ile şimdiki durum arasındaki iletişim)

always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else out <= nst ;
endmodule

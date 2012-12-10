#include <16F877.h>
#fuses HS,NOWDT,NOPROTECT,NOLVP
#use delay(clock=4000000)
int t=0;


void main( )
{ 
   byte X;
   setup_ccp1(CCP_PWM); // CCP1 PWM moduna ayarlanýyor
   setup_timer_2(T2_DIV_BY_16, 255, 16); // Analog sinyali 255 parçaya bölüyor.
   setup_port_a(ALL_ANALOG); // A portunun hepsini analog girdi yaptýk
   setup_adc(adc_clock_internal); 
   
   
   while( TRUE )
   {
   
   set_adc_channel( 0 ); // Pic'in RA0 bacaðýndan analog giriþ al
   delay_us(20);
   x=read_adc(); // Aldýðýn giriþi x deðiþkenine ata
   
   if (x>128)        //  Eðer 255 parçaya bölünen analog sinyal 128 den büyükse b0 numaralý pini dijital 1 yap          
   output_high(pin_d0);
   
   else              // Deðilse dijital 0 yap
   output_low(pin_d0);
   
   
   }
}

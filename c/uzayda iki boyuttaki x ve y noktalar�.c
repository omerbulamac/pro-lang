#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>

int kenar_x(int, int, int, int );
int kenar_y(int, int, int, int );

int main() {
    
     struct point {
     int x;
     int y;
     };
     
     struct dikdortgen {
            struct point nokta1;
            struct point nokta2;
     }d1,d2;
     
     
     printf("birinci dikdortgen\n------------------\n");

     printf("\n1. noktasi için x degeri: ");
     scanf("%d",&d1.nokta1.x);
     printf("\n1. noktasi için y degeri: ");
     scanf("%d",&d1.nokta1.y);     

     printf("\n2. noktasi için x degeri: ");
     scanf("%d",&d1.nokta2.x);
     printf("\n2. noktasi için y degeri: ");
     scanf("%d",&d1.nokta2.y);     
     
     printf("\n\n1ikinci dikdortgen\n------------------\n");

     printf("\n1. noktasi için x degeri: ");
     scanf("%d",&d2.nokta1.x);
     printf("\n1. noktasi için y degeri: ");
     scanf("%d",&d2.nokta1.y);     

     printf("\n2. noktasi için x degeri: ");
     scanf("%d",&d2.nokta2.x);
     printf("\n2. noktasi için y degeri: ");
     scanf("%d",&d2.nokta2.y);     
  
//  x için   
//---------------------------------------------------------------------------------
     int kucuk_k1,kucuk_k2,buyuk_k1,buyuk_k2;     
     
     if(d1.nokta1.x < d1.nokta2.x)
     {
         kucuk_k1 = d1.nokta1.x;
         buyuk_k1 = d1.nokta2.x;
     }
     
     else
     {
         kucuk_k1 = d1.nokta2.x;
         buyuk_k1 = d1.nokta1.x;
     }
     
     if(d2.nokta1.x < d2.nokta2.x) 
     {
         kucuk_k2 = d2.nokta1.x;
         buyuk_k2 = d2.nokta2.x;
     }
     
     else
     {
         kucuk_k2 = d2.nokta2.x;
         buyuk_k2 = d2.nokta1.x;
     }
         

//  y için   
//---------------------------------------------------------------------------------
     int kucuk_t1,kucuk_t2,buyuk_t1,buyuk_t2;     
     
     if(d1.nokta1.y < d1.nokta2.y)
     {
         kucuk_t1 = d1.nokta1.y;
         buyuk_t1 = d1.nokta2.y;
     }
     
     else
     {
         kucuk_t1 = d1.nokta2.y;
         buyuk_t1 = d1.nokta1.y;
     }
     
     if(d2.nokta1.y < d2.nokta2.y) 
     {
         kucuk_t2 = d2.nokta1.y;
         buyuk_t2 = d2.nokta2.y;
     }
     
     else
     {
         kucuk_t2 = d2.nokta2.y;
         buyuk_t2 = d2.nokta1.y;
     }
         
     if((kucuk_k1 > kucuk_k2 && kucuk_k1 <  buyuk_k2) || (kucuk_k2 > kucuk_k1 && kucuk_k2 < buyuk_k1) ) {
         printf("\nkesisiyor\n");
         
//alan
//-----------------------------------------------------------------------------------------
                                                                                           
     int alan_x, alan_y;
     alan_x = kenar_x(kucuk_k1, kucuk_k2, buyuk_k1, buyuk_k2);
     alan_y = kenar_y(kucuk_t1, kucuk_t2, buyuk_t1, buyuk_t2);     
     
     printf("kesisim bolgesinin alani: %d", alan_x * alan_y);
     }
     
     else
         printf("\nkesismiyor\n");
    
    getchar();
 return 0;   
}

// kesişimin x uzunluğu
//-------------------------------------------------------------------
int kenar_x(int kucuk_k1, int kucuk_k2, int buyuk_k1, int buyuk_k2) {
    
    int alan_x;
 if(kucuk_k1 > kucuk_k2 && kucuk_k1 <  buyuk_k2)
              alan_x = buyuk_k2 - kucuk_k1;
              
          if(kucuk_k2 > kucuk_k1 && kucuk_k2 < buyuk_k1)
               alan_x = buyuk_k1 - kucuk_k2;
              
              
     if((kucuk_k1 > kucuk_k2 && buyuk_k1 < buyuk_k2) || (kucuk_k2 > kucuk_k1 && buyuk_k2 < buyuk_k1)) {
                  if(kucuk_k1 > kucuk_k2 && buyuk_k1 < buyuk_k2)
                      alan_x = buyuk_k1 - kucuk_k1;
                       
                  if(kucuk_k2 > kucuk_k1 && buyuk_k2 < buyuk_k1)
                      alan_x = buyuk_k2 - kucuk_k2;
     
     }   
    return alan_x;
    
}

// kesişimin y uzunluğu
//-------------------------------------------------------------------

int kenar_y(int kucuk_t1, int kucuk_t2, int buyuk_t1, int buyuk_t2) {
    
    int alan_y;
 if(kucuk_t1 > kucuk_t2 && kucuk_t1 <  buyuk_t2)
              alan_y = buyuk_t2 - kucuk_t1;
              
          if(kucuk_t2 > kucuk_t1 && kucuk_t2 < buyuk_t1)
               alan_y = buyuk_t1 - kucuk_t2;
              
              
     if((kucuk_t1 > kucuk_t2 && buyuk_t1 < buyuk_t2) || (kucuk_t2 > kucuk_t1 && buyuk_t2 < buyuk_t1)) {
                  if(kucuk_t1 > kucuk_t2 && buyuk_t1 < buyuk_t2)
                      alan_y = buyuk_t1 - kucuk_t1;
                       
                  if(kucuk_t2 > kucuk_t1 && buyuk_t2 < buyuk_t1)
                      alan_y = buyuk_t2 - kucuk_t2;
     
     }   
    return alan_y;
    
}

// c e h a r s 
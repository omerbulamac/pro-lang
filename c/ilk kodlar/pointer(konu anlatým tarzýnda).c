#include <stdio.h>

int main() {
		int k = 1;    // k değişken ---> k int türünden bir değişken ve değeri 1
		int *t = &k;   //t değişken ---> t GÖSTERICI TÜRÜNDEN BIR DEĞIŞKEN ve değeri k nın adresi --->
		
		

		printf("değişkenin yani k nın değeri pointersız gösterim     %d\n",k);
		printf("değişkeninin yani k nın  değeri pointerlı gösterim   %d\n",*t);   //*t ---> bu POINTERIN IÇINDEKI ADRESTE TUTULAN DEĞIŞKENIN DEĞERI DEMEKTIR
		printf("pointerin içindeki adreste tutulan değişkenin değeri %d\n",*t);
		printf("değişkenin adresi pointersız gösterim %d\n",&k);
		printf("değişkenin adresi pointerlı gösterim  %d\n",t);
		printf("pointerin içindeki değer              %d\n",t);
		printf("pointerin adresi                      %d\n\n\n",&t);
		
		
		int x = 3;
		t = &x;   //pointerın içindeki adresi değiştirdik
		
		printf("değişkenin yani x in değeri pointersız gösterim      %d\n",x);
		printf("değişkeninin yani x in değeri pointerlı gösterim     %d\n",*t);
		printf("pointerin içindeki adreste tutulan değişkenin değeri %d\n",*t);
		printf("değişkenin adresi pointersız gösterim %d\n",&x);
		printf("değişkenin adresi pointerlı gösterim  %d\n",t);
		printf("pointerin içindeki değer              %d\n",t);
		printf("pointerin adresi                      %d\n\n\n",&t);
		
		
		*t = 5;   //pointerın içindeki adres sabit pointerın içindeki adrein SAHIBI OLAN değişkenin değerini değiştirdik
		
		printf("değişkenin yani x in değeri pointersız gösterim      %d\n",x);
		printf("değişkeninin yani x in değeri pointerlı gösterim     %d\n",*t);   
		printf("pointerin içindeki adreste tutulan değişkenin değeri %d\n",*t);
		printf("değişkenin adresi pointersız gösterim %d\n",&x);
		printf("değişkenin adresi pointerlı gösterim  %d\n",t);
		printf("pointerin içindeki değer              %d\n",t);
		printf("pointerin adresi                      %d\n",&t);
		


		return 0;
}

/* c e h a r s */

/*
int k = 1;    derleyici k ya bir adres veriyor ve k bu adreste tutuluyor

pointer başka bir değişkenin adresini tutar ve pointer 

K E N D I   I Ç I N D E K I   A D R E S T E   T U T U L A N   D E Ğ I Ş K E N I N    D E Ğ E R I N I    G Ö S T E R I R ..... 

.............................................................................................................................
(ÖNEMLI)   .............................................yani................................................    (ÖNEMLI)
.............................................................................................................................

yani pointerın içinde bir adres var ve pointer bu adrese gidiyo bu adreste tutulan bir değişken var 
işte pointer bu değişkenin değerini gösterir.. kısaca kendi içindeki adreste tutulan değişkenin değerini gösterir

ayrıca o değere ve adese dokunmadan sadece pointer yardımıyla bu değer değiştirilebilir...
____________________________________________________________________________________________________________________

int *t = &k;     t yi pointer olarak tanımladık  ve içine k nın adresini attık 
pointer adres tutar ve kendi içindeki adreste tutulan değişkenin değerini gösterir demiştikya işte onu böyle gösteriyor ----->  (*t)

(*t) bu 1 e eşittir    

*t ---> bu POINTERIN IÇINDEKI ADRESTE TUTULAN DEĞIŞKENIN DEĞERI DEMEKTIR


*/

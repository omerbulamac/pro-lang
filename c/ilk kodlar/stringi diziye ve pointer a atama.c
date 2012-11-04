#include <stdio.h>

int main() {
	
	char dizi1[] = "yonca";   /*stringi bir diziye atadık... dizi1 mantığı şöyle çalışır... pc yonca dizisini belleğe yerleştirir 
	yonca dizisinin BAŞLANGıÇ ADRESINI dizi1 nin içine atar yani dizi1, içinde yonca dizgisinin başlangıç adresinin tutan bir pointerdır... */
	
	printf("stringin 1. ve 2. karakteri:          %c,%c\n",dizi1[0],dizi1[1]);    
	printf("stringin 1. ve 2. karakteri(2.yol):   %c,%c\n",*dizi1,*(dizi1 + 1));    
	printf("stringin 1. ve 2. karakterinin ASCII kodu:          %d,%d\n",dizi1[0],dizi1[1]); 
	printf("stringin 1. ve 2. karakterinin ASCII kodu(2.yol):   %d,%d\n",*dizi1,*(dizi1 + 1)); 
	
	printf("dizi1 in içindeki adres:   %d\n",dizi1);
	printf("dizi1[1] in içindeki adres:   %d\n",dizi1 + 1);
	printf("dizi1 in içindeki adreste tutulan değişkenin değeri (pointer ın gösterdiği yer):%c\n",*dizi1);
	printf("dizi1[1] in içindeki adreste tutulan değişkenin değeri (pointer ın gösterdiği yer):%c\n",*(dizi1 + 1));
	
	dizi1[0] = 'g';
	printf("\ndizi2 : %s\n\n\n",dizi1);

	
	char *dizi2 = "yonca";    /*stringi bir pointer a atadık... dizi2 mantığı şöyle çalışır... pc yonca dizisini belleğe yerleştirir 
	yonca dizisinin BAŞLANGıÇ ADRESINI dizi2 nin içine atar yani dizi2 içinde yonca dizgisinin başlangıç adresinin tutan bir pointer dır...

	
	*/
	printf("stringin 1. ve 2. karakteri(2.yol):   %c,%c\n",dizi2[0],dizi2[1]);
	printf("stringin 1. ve 2. karakteri:          %c,%c\n",*dizi2,*(dizi2 + 1));
	printf("stringin 1. ve 2. karakterinin ASCII kodu(2.yol):   %d,%d\n",dizi2[0],dizi2[1]);
	printf("stringin 1. ve 2. karakterinin ASCII kodu:          %d,%d\n",*dizi2,*(dizi2 + 1));
	
	
	printf("dizi2 in içindeki adres:   %d\n",dizi2);
	printf("dizi2 + 1 in içindeki adres:   %d\n",dizi2 + 1);
	printf("dizi2 in içindeki adreste tutulan değişkenin değeri (pointer ın gösterdiği yer):%c\n",*dizi2);
	printf("dizi1[1] in içindeki adreste tutulan değişkenin değeri (pointer ın gösterdiği yer):%c\n\n",*(dizi2 + 1));
	
	
	*dizi2 = 'g';
	printf("\n\ndizi2 : %s\n\n",dizi1);

	
	return 0;
}

/* c e h a r s */
    /*2010*/  

/*

	dizi2[0] = 'g';
	printf("dizi2 : %s\n",dizi2);


	*dizi2 = 'g';
	printf("dizi2 : %s\n",dizi2);

bu iki kodda da segmementation fault hatası verir...1
	*/



/* kısaca stringi diziyede atasak pointera da atasak atadığımız değişken ponter gibi davranıyor... Ve pointer gibi davranan değişken,
içine stringin başlangıç adresini alıyor...
*/



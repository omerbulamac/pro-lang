#include <stdio.h>

int main() {
	char strdizi[] = "bilgisayar"; // stringi bir diziye atadık  
// char *strdizi = "bilgisayar";     böylede olur... böyle yaparsak stringi doğrudan bir göstericiye atamış oluruz   

/* derleyici üstteki satıra geldiğinde önce stringi bellekte uygun bir yere yerleştircek
ve bu yerin başlangıç adresini strdizi değişkenine atayacak...*/

	printf("dizinin başlangıç adresi: ---> %d \n\n",strdizi);   // (strdizi)  --------->  dizinin BAŞLANGıÇ ADRESIDIR     1079274578   gibi        
	printf("dizinin başlangıç adresinin 1 fazlası: ---> %d \n\n",strdizi + 1);  
	
	printf("dizinin başlangıç adresinin tuttuğu değerdeki değişkenin ASCII karşılığı ---> %d \n\n",*(strdizi));  // *(strdizi) --------->  dizinin başlangıç adresinin tuttuğu değerdir   'b'  gibi
	printf("dizinin başlangıç adresinden bir sonraki adresin tuttuğu değerin ASCII karşılığı ---> %d \n\n",*(strdizi + 1)) ;
	
	printf("dizinin başlangıç adresinin tuttuğu değerdeki değişkenin ASCII karşılığının 1 fazlası(bir üsttkiyle karıştırma) --->  %d \n\n",*(strdizi) + 1) ;
		
	printf("dizinin başlangıç adresinin tuttuğu değerdeki değişken ---> %c \n\n",*(strdizi));  // *(strdizi) --------->  dizinin başlangıç adresinin tuttuğu değerdir   'b'  gibi
	printf("dizinin başlangıç adresinden bir sonraki adresin tuttuğu değerdeki değişken ---> %c \n\n",*(strdizi + 1)) ;
	
	printf("dizinin başlangıç adresinin tuttuğu değerdeki değişkenin ASCII olarak bir fazlasının karakter hali(bir üsttkiyle karıştırma) ---> %c \n\n",*(strdizi) + 1) ;
		
	char strchar = 'a';
	
	printf("karekterin ASCII karşılığı %d\n",strchar);	
	printf("karekterin kendisi %c\n",strchar);	
	
	// printf("karekterin kendisi %d\n",*(strchar));	bu kodda hata verir çünkü strchar ADRES DEĞIL... strdizi DIZI olduğu için dizinin 
	// başlangıç adresini tutuyordu ve
	// printf("karekterin kendisi %d\n",*(strdizi)); deyince adresin gösterdiği değişkendeki değeri gösteriyordu ama
	// strchar ADRES OLMADIĞI IÇIN göstercek bir yer gösteremiyor...
		
		
	return 0;
}

/* c e h a r s */
    /*2010*/  


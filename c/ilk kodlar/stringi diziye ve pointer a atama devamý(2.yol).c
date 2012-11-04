#include <stdio.h>
#include <string.h>


int main()
{
char * dizi5 = "istambul";
printf("dizi5 eski deger : %s\n", dizi5);


char tmp[9];
strcpy(tmp,dizi5);  //dizi5 i tmp ye kopyalıyor...
tmp[4] = 'n';
dizi5 = tmp;

printf("dizi5 yeni deger : %s\n", dizi5);   //pointer atanmış dizi içinden bir harf değiştirmiş olduk...
return 0; 
}

/* c e h a r s */

#include <stdio.h>


int main()
{
char * dizi5 = "istambul";
printf("dizi5 eski deger : %s\n", dizi5);

/*
1)-----diziye atanmış stringin içinden bir karakteri değiştirme-----
char dizi2[] = "istambul";   dizi2 = 'n';

2)-----pointera atanmış stringin içinden bir karakteri değiştirme----- 
char *dizi5 = "istambul"
dizi5[4] = 'n'   veya   *(dizi5 + 4) = 'n'   bunlarda sedmentation fault hatası verir...
nasıl yapılacağı aşşağıda
*/

char dizi2[] = "istambul";
dizi5 = dizi2;
dizi2[4] = 'n';

printf("dizi5 yeni deger : %s\n", dizi5);   //pointer atanmış dizi içinden bir harf değiştirmiş olduk...
return 0; 
}

/* c e h a r s */

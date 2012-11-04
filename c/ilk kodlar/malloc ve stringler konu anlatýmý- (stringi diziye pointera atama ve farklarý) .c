#include <stdio.h>

int main() {
	/* ÖNEMLIIIIIIIIIIIIIIIIIIIIIII
	char t1[10];  bellekte 10 baytlık yer açar ve verilerimizi direk atabiliriz yani t1 in gösterdiği bellekteki yerler bellidir
	char *t1;    olursa bellekte bir yer göstermez yani böyle yazarsak mallocla bellekten yer almak zorundayız ve bu aldığımız yer 
	pointerın bellekte gösterdiği yer olacak... ayrıntılar aşşağıda...
	*/
	
	char t1[10]; // bu static tir   ve bellekte kaplayacağı yer bellidir pek kullanışlı bir yöntem değildir  
	*t1 = 'c';
    *(t1 + 1) = 'e';
    *(t1 + 2) = 'h';
    *(t1 + 3) = 'a';
    *(t1 + 4) = 'r';
    *(t1 + 5) = 's';
    *(t1 + 6) = 't';
    *(t1 + 7) = 'k';
	
	printf("%c\n",t1[0]);
	printf("%c\n",t1[1]);
	printf("%c\n",t1[2]);
	printf("%c\n",t1[3]);
	printf("%c\n",t1[4]);
	printf("%c\n",t1[5]);
	printf("%c\n",t1[6]);
	printf("%c\n\n",t1[7]);
	
	
	
	
    char *p1;   /* bu dinamik tir ve bu pointer olduğu için şuanda bu pointer bellekte herhangibir yeri göstermiyor 
	mallocla bellekten yer alacaz ve pointer bu aldığımız yeri gösterecek */
  
    p1  = (char * ) malloc(sizeof(char));     // yığından bellek tahsis ettik 
    
    *p1 = 'c';
    *(p1 + 1) = 'e';
    *(p1 + 2) = 'h';
    *(p1 + 3) = 'a';
    *(p1 + 4) = 'r';
    *(p1 + 5) = 's';
    *(p1 + 6) = 't';
    *(p1 + 7) = 'k';
	printf("%c\n",*p1);       // printf("%c\n",p1[0]);
	printf("%c\n",*(p1 + 1)); // printf("%c\n",p1[1]);   ...   böylede olur
	printf("%c\n",*(p1 + 2));
	printf("%c\n",*(p1 + 3));
	printf("%c\n",*(p1 + 4));
	printf("%c\n",*(p1 + 5));
	printf("%c\n",*(p1 + 6));
	printf("%c\n",*(p1 + 7));
}

/* c e h a r s */
    /*2010*/  

/*

     int k = 5;      
     int *t;   bu kodun altına *t = 6; dersek çalışmaz çünkü biz diyoruzki pointerın gösterdiği yere 6 yı koy
     pointer var ama bellekte herhangibir yer göstermiyor... pointer yer göstermezzse biz girdiğimiz verileri nereye koyacaz...
     o yüzden ilk önce pointera bellekten göstermesi için bir yer söylemeliyiz
     t = &k    şuanda pointer bellekte k nın olduğu yeri gösteriyor YANI ARTIK HEM POINTER VAR HEMDE GÖSTERDIĞI BIR BELLEK ALANI VAR
     şimdi  *t = 6    t nın gösterdiği yeri (yani k yı) 6 yap demiş oluruz...
	
		
	pointer dizilerindede aynı mantık geçerli 
	int *p1;    bu koddan sonra  *p1 = 'c' dersek p1 pointerı bellekte herhangibir yer göstermediği için hata alırız o yüzden ilk önce 
	malocla bellekten yer ayırırız.. BU AYIRDIĞIMIZ YER P1 POINTERININ BELLEKTE GÖSTERDIĞI YER OLACAK

	DIKKAT ET
	bunu yapabilirsin... üsttekiyle bunu karıştırma...

	int *p1;
	p1 = "cehars"     böyle olur çünkü burada *p1 le felan uğraşmıyoruz.. yani p1 pointerının gösterdiği yerle felan uğraşmıyoruz..
	BÖYLE YAPıNCA PROGRAM OTOMATIKMEN P1 i  BELLEKTE HERHANGIBIR YERE  YERLEŞTIRIYOR 
	
	 
*/


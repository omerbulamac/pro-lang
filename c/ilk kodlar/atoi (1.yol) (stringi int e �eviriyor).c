#include <stdio.h>
#include <string.h>
#include <ctype.h>

int atoi(char s[]) {
	int a,n = 0;
	
	for (a = 0; a < strlen(s); a++) 
		if (isdigit(s[a]))
				n = n * 10 + (s[a] - 48);
	return n;

}	
		
int main() {
	printf("%d \n",atoi("12ab4h57"));
	return 0;
}

/* c e h a r s */
    /*2010*/  

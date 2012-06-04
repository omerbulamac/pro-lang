#include <stdio.h>
#include <string.h>

int main() {
	char x[] = "153";
	int i = strlen(x);
	int t = 1;
	int k = 0;
	
	while (i > 0) {
		i -- ;
		k = k + t*(x[i] - 48);
		t = t * 10;
}
	printf("%d",k);
return 0;
}

/* c e h a r s */

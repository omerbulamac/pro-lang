#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

#define M 3
#define N 3
   	
int A [3][3] = { {1,1,1}, {2,2,2}, {3,3,3} };
int B [3][3] = { {1,1,1}, {2,2,2}, {3,3,3} };
int C [3][3];

struct v
{
	int i; 
  	int j;
}*data, param;   
   	
void *hesapla(void *param)
{
   	data = (struct v *)param; 
   	int satir = data->i;
   	int sutun = data->j;
 
   	C[satir][sutun] = (A[satir][0]*B[0][sutun]) + (A[satir][1]*B[1][sutun]);
   	pthread_exit(0);
}

int main() {
   	
   	pthread_t thread[3][3];	
   	int i,j;
   	
	for (i=0;i<M;i++){
   		for(j=0;j<N;j++){
   			struct v *data = (struct v *) malloc(sizeof(struct v)); 
   			data->i = i;
   			data->j = j;
   			pthread_create(&thread[i][j], NULL, hesapla,(void*) data);
   		}
   	}

   	for (i=0;i<M;i++){
   		for(j=0;j<N;j++){	
   			pthread_join( thread[i][j],NULL);
   		}
   	}
  	
   	
   	for (i=0;i<M;i++){
   		for(j=0;j<N;j++){	
   			printf("%4d ",C[i][j]);
  		}
   		printf("\n");
   	}
   	
   	return 0;
}

// cehars

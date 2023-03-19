#include<stdio.h>
#include <stdlib.h>

int main()
{
	int *a, *b, i;
	
	a = (int *)malloc(10*sizeof(int));
	b = (int *)malloc(10*sizeof(int));
	for(i=0; i<10; i++)
	{
		a[i] = 3;
		b[i] = 6;
	}
	for(i=0; i<10; i++)
	{
		printf("allocated %d %d\n",a[i],b[i]);
	}
	free(a);
	free(b);
	for(i=0; i<10; i++)
	{
		printf("released %d %d\n",a[i],b[i]);
	}
	return 0;
}

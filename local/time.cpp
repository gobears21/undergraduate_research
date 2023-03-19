#include <stdio.h>
#include <sys/time.h>

int main()
{
	struct timeval start,end;
	gettimeofday( &start, NULL);
	int a,b,c;
	a=1;
	  
	gettimeofday( &end, NULL);
	printf("%ld:%ld\n",start.tv_usec,start.tv_sec);
	printf("%ld:%ld",end.tv_usec,end.tv_sec);
	return 0;
	
}

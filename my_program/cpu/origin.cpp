//compile:      /opt/gcc-8.2.0/bin/g++ -std=c++17 -O3 -fopenmp origin.cpp -o origin.out

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <iostream>


double get_time()
{
  struct timeval tv;

  gettimeofday(&tv, NULL);

  return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(int argc, char *argv[])
{
  	int i;
  	long long input_size;
  	double start_time, end_time, total_time = 0;
  	double s = 3.0;
  	double *a, *b;

  	if(argc < 1)
	{
    	printf("USAGE: ./a.out <ARRAY SIZE>\n");
    	exit(1);
  	}
  
  	input_size = atoi(argv[1]);

    a = (double *)malloc(input_size*sizeof(double));
    b = (double *)malloc(input_size*sizeof(double));
    
    if(a == NULL || b == NULL)
	{
      printf("Allocation Error!\n");
      exit(1);
    }
    //initial
    for(i=0; i<input_size; i++)
    {
      a[i] = 1.0;
      b[i] = 2.0;
    }    
    start_time = get_time();
    
    // main loop
#pragma omp parallel for
    for(i=0; i<input_size; i++)
    {
      b[i] += a[i];
    }   
    end_time = get_time();
    total_time += (end_time - start_time);
    
    free(a);
    free(b);
 
	std::cout << a << ";" << b;  // address of a and b
  	printf(";%d;%lf;%lf\n",input_size,total_time,2*input_size*sizeof(double)/total_time*1.0e-9);   // input array size, time used, bandwidth in GB/s

}

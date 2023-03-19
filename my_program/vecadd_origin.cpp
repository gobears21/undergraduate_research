#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <iostream>
#include "../include/CL/sycl.hpp"


using namespace std;
using namespace cl::sycl;

double get_time()
{
  struct timeval tv;

  gettimeofday(&tv, NULL);

  return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(int argc, char *argv[])
{
	long long input_size;
	double *a,*b,start_time,end_time,time_spend=0;
	int i;
	
	input_size = atoi(argv[1]);
	a=(double *)malloc(sizeof(double)*input_size);
	b=(double *)malloc(sizeof(double)*input_size);	
	
	//initial a and b
	for(i=0;i<input_size;i++)
	{
		a[i]=3.1415926;
		b[i]=3.1415926;
	}
	
	start_time = get_time();
	// calculate
	  for(i=0;i<input_size;i++)
	  {
		  a[i] += b[i];
		  //cout << a[i] << endl;
	  }
  }
	end_time=get_time();
	time_spend=end_time-start_time;
	cout << a << ";" << b;
	printf(";%d;%lf;%lf\n",input_size,time_spend,2*input_size*sizeof(double)/time_spend*1.0e-9);
}




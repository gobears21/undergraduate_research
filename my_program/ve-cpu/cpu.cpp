//compile:  /opt/gcc-8.2.0/bin/g++ -std=c++17 -O3 -fopenmp sycl.cpp -o sycl.out -I /home/gobears21/neoSYCL/include/ -lpthread

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <iostream>
#include <CL/sycl.hpp>


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
	long unsigned int input_size;
	double start_time,end_time,time_spend=0;
	int i;
	
	input_size = atoi(argv[1]);
	double *data1, *data2;   // vec a,b,c
	data1=(double *)malloc(sizeof(double)*input_size);
	data2=(double *)malloc(sizeof(double)*input_size);
	//initial
  	for(i=0;i<input_size;i++)
  	{
    	data1[i]=3.14;
    	data2[i]=3.14;
  	}
    start_time = get_time();
    {           // By sticking all the SYCL work in a {} block, we ensure all SYCL tasks must complete before exiting the block, because the destructor of resultBuf will wait.
        queue one;    // Create a queue to enqueue work to
        range<1>r1{input_size};
        range<1>r2{input_size};
        
        buffer<double, 1> resultBufOne{data1, r1};   // Wrap our data variable in a buffer
        buffer<double, 1> resultBufTwo{data2, r2};   // Wrap our data variable in a buffer
        //initial
        

        one.submit   // Create a command_group to issue commands to the queue
        (
           [&](handler &cgh) 
           {          
            auto a = resultBufOne.get_access<access::mode::read_write>(cgh);   // request access to the buffer
            auto b = resultBufTwo.get_access<access::mode::read_write>(cgh);   // request access to the buffer
                   	
            cgh.parallel_for<class adding>
            (
              range<1>{input_size}, [=](id<1> idx) 
              {
                b[idx] += a[idx];
              }
            ); 
                                  
          }
        );     // End of our commands for this queue
        
        one.wait();    
    }     
   	end_time = get_time(); 
    free(data1);
    free(data2);
   	time_spend+=end_time-start_time;
    cout << data1 << ";" << data2;  // address of data2 and data2
   	printf(";%d;%lf;%lf\n",input_size,time_spend,2*input_size*sizeof(double)/time_spend*1.0e-9); // input array size, time used, bandwidth in GB/s
    return 0;
}




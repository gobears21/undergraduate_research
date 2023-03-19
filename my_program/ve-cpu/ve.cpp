//  /opt/gcc-8.2.0/bin/g++ -std=c++17 -DBUILD_VE ve.cpp -o ve.out -I /home/gobears21/my_program/neoSYCL/include/  -I /opt/nec/ve/veos/include -lpthread -L /opt/nec/ve/veos/lib64 -Wl,-rpath=/opt/nec/ve/veos/lib64 -lveo


#include <CL/sycl.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <iostream>
#include <unistd.h>

using namespace cl::sycl;
using namespace std;

//REGISTER_KERNEL(vector_add);  // kernel name  //code generator??
//REGISTER_KERNEL(print_out);
// ¾²Ì¬ÎÄ¼þ .o .so ¶¯Ì¬Á´½Ó¿â ¾²Ì¬Á´½Ó¿â 

double get_time()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(int argc, char *argv[]) 
{
	long unsigned int input_size;   
	double *vec_a, *vec_b;  // vector a, vector b
	int i;
	double start_time,end_time,time_spend;

	vec_a = (double *)malloc(sizeof(double)*input_size);
	vec_b = (double *)malloc(sizeof(double)*input_size);
	input_size = atoi(argv[1]);
    
    
    for(i=0;i<input_size;i++)
    {
    	vec_a[i]=3.1415;
    	vec_b[i]=3.1415;
	}
	// sycl start
    //ve_queue ve_q;
    range<1>a_size(input_size);
    range<1>b_size(input_size);
    buffer<double, 1>result_buf_One(vec_a,a_size);
    buffer<double, 1>result_buf_Two(vec_b,b_size);
    
    start_time=get_time();
	{           // By sticking all the SYCL work in a {} block, we ensure all SYCL tasks must complete before exiting the block, because the destructor of resultBuf will wait.
        ve_queue one;    // Create a queue to enqueue work to
        range<1>r1{input_size};
        range<1>r2{input_size};
        
        buffer<double, 1> resultBufOne{vec_a, r1};   // Wrap our data variable in a buffer
        buffer<double, 1> resultBufTwo{vec_b, r2};   // Wrap our data variable in a buffer
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
                vec_b += vec_a;
              }
            ); 
                                  
          }
        );     // End of our commands for this queue
        
        one.wait();    
    }     
	end_time=get_time();
     
     /************************************************************************  test line **************************************************
     ve_q.submit([&](handler &cgh) {     		
        		cgh.parallel_for<class print_out>(
					  range<1>{input_size}, [=](id<1> idx) {
                		
             }); 	
        	});
 
    ve_q.submit([&](handler &cgh) {          
        		auto a = result_buf_One.get_access<access::mode::read_write>(cgh);
        		auto b = result_buf_Two.get_access<access::mode::read_write>(cgh);
        		cgh.parallel_for<class vector_add>(
					  range<1>{input_size}, [=](id<1> idx) {
                		b[idx] += a[idx];   
             }); 	
        	}); 	
 
 
 ************************************************************************  test line **************************************************/
 
	free(vec_a);
	free(vec_b);
	time_spend = (end_time-start_time);
    cout << vec_a << ";" << vec_b;  // address of vector a and vector b
    
   	printf(";%d;%lf;%lf\n",input_size,time_spend,2*input_size*sizeof(double)/time_spend*1.0e-9); // input array size, time used, bandwidth in GB/s
    return 0;

}

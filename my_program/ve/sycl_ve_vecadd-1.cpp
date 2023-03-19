//compile:  /opt/gcc-8.2.0/bin/g++ -std=c++17 -DBUILD_VE sycl_ve_vecadd-1.cpp -o sycl_ve_vecadd-1.out -I /home/gobears21/my_program/neoSYCL/include/ -I /opt/nec/ve/veos/include -lpthread -L /opt/nec/ve/veos/lib64 -Wl,-rpath=/opt/nec/ve/veos/lib64 -lveo
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

//REGISTER_KERNEL(vector_copy);  // kernel name  //code generator??
//REGISTER_KERNEL(vector_add);
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
    ve_queue ve_q;
    range<1>a_size(input_size);
    range<1>b_size(input_size);
    buffer<double, 1>result_buf_One(vec_a,a_size);
    buffer<double, 1>result_buf_Two(vec_b,b_size);
    
    start_time=get_time();
    ve_q.submit
    (
		[&](handler &cgh) 
           {          
        		auto a = result_buf_One.get_access<access::mode::read_write>(cgh);
        		auto b = result_buf_Two.get_access<access::mode::read_write>(cgh);
        		cgh.parallel_for<class adding>
				(
					range<1>{input_size}, [=](id<1> idx) 
              		{
                		b[idx] += a[idx];
              		}
              	); 
              	
        	}		
	);
	end_time=get_time();
	free(vec_a);
	free(vec_b);
	time_spend+=end_time-start_time;
    cout << vec_a << ";" << vec_b;  // address of data2 and data2
   	printf(";%d;%lf;%lf\n",input_size,time_spend,2*input_size*sizeof(double)/time_spend*1.0e-9); // input array size, time used, bandwidth in GB/s
    return 0;

    
    
    
/************************** temp ********************************    
    for(int i = 0; i < 10; ++i) 
	{
        A[i] = i;
    }

    queue cpu_q;

    range<1> r_a(10);
    buffer<int, 1> buffer_a(A, r_a);

    range<1> r_b(10);
    buffer<int, 1> buffer_b(B, r_b);

    cpu_q.submit
	(
		[&](handler &cgh) 
		{
        	auto accessor_a = buffer_a.get_access<access::mode::read_write>(cgh);
        	auto accessor_b = buffer_b.get_access<access::mode::read_write>(cgh);

        	cgh.parallel_for<class vector_copy>
			(
				range<1>{10}, [=](id<1> idx) 
				{
            		accessor_b[idx] = accessor_a[idx];
        		}
			); 

    	}
	);
    cpu_q.wait();

    cout << "A:\n";
    for(int i = 0; i < 10; ++i) {
        cout << A[i] << "   ";
    }
    cout << "\nB:\n";
    for(int i = 0; i < 10; ++i) {
        cout << B[i] << "   ";
    }
    cout << endl;

    ve_queue ve_q;
    int C[10];

    range<1> r_c(10);
    buffer<int, 1> buffer_c(C, r_c);

    ve_q.submit
	(
		[&](handler &cgh) 
		{
        	auto accessor_a = buffer_a.get_access<access::mode::read_write>(cgh);
        	auto accessor_b = buffer_b.get_access<access::mode::read_write>(cgh);
        	auto accessor_c = buffer_c.get_access<access::mode::read_write>(cgh);

        	cgh.parallel_for<class vector_add>
			(
				range<1>{10}, [=](id<1> idx) 
				{	
            		accessor_c[idx] = accessor_b[idx] + accessor_a[idx];
        		}
			); 

    	}
	);   
    ve_q.wait();

    cout << "C:\n";
    for(int i = 0; i < 10; ++i) {
        cout << C[i] << "   ";
    }
    cout << endl;
    
    ************************** temp ********************************/
}

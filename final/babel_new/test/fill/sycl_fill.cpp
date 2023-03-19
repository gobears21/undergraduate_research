#include <CL/sycl.hpp>
#include <iostream>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>

using namespace cl::sycl;
using namespace std;

REGISTER_KERNEL(fill);


int main(int argc, char* argv[]) {
    long unsigned int input_size;
    double *vec_a, *vec_b; // vector a, vector b
    int i;

    nec::VEProc proc;
    nec::VEContext ctx;

    input_size = atoi(argv[1]);
    // allocation on VH
    vec_a = (double*)malloc(sizeof(double) * input_size);
    vec_b = (double*)malloc(sizeof(double) * input_size);  


    for (i = 0; i < input_size; i++) 
    {
        vec_a[i] = 0.01;
        vec_b[i] = 0.01;
    }
    // sycl start
    ve_queue ve_q;

    range<1> a_size(input_size);
    range<1> b_size(input_size);
    buffer<double, 1> result_buf_One(vec_a, a_size);
    buffer<double, 1> result_buf_Two(vec_b, b_size);

    {
        ve_q.submit([&](handler& cgh) {
            auto a = result_buf_One.get_access<access::mode::read_write>(cgh);
            auto b = result_buf_Two.get_access<access::mode::read_write>(cgh);

            cgh.parallel_for<class fill>(range<1>{input_size}, [=](id<1> idx) {
                a[idx] = 3.1415;
                b[idx] = 3.1415;
            });
        });
    }
    ve_q.wait();

    
    free(vec_a);
    free(vec_b);
    return 0;
}

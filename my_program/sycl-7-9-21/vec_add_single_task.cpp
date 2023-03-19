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

REGISTER_KERNEL(vector_add);

double get_time() {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(int argc, char* argv[]) {
    long unsigned int input_size;
    double *vec_a, *vec_b; // vector a, vector b
    int i;
    double start_time, end_time, time_spend;

    nec::VEProc proc;
    nec::VEContext ctx;

    input_size = atoi(argv[1]);
    // allocation on VH
    vec_a = (double*)malloc(sizeof(double) * input_size);
    vec_b = (double*)malloc(sizeof(double) * input_size);

    for (i = 0; i < input_size; i++) {
        vec_a[i] = 3.1415;
        vec_b[i] = 3.1415;
    }
    // sycl start
    ve_queue ve_q;

    range<1> a_size(input_size);
    range<1> b_size(input_size);
    buffer<double, 1> result_buf_One(vec_a, a_size);
    buffer<double, 1> result_buf_Two(vec_b, b_size);

    start_time = get_time();
    {
        ve_q.submit([&](handler& cgh) {
            auto a = result_buf_One.get_access<access::mode::read_write>(cgh);
            auto b = result_buf_Two.get_access<access::mode::read_write>(cgh);

            cgh.parallel_for<class vector_add>(range<1>{input_size}, [=](id<1> idx) {
                a[idx] += b[idx];
            });
        });
    }
    ve_q.wait();
    end_time = get_time();


/****
    for(int i = 0; i < input_size; ++i) {
        cout << vec_a[i] << "   " << vec_b[i] << endl;
    }
    
    ***/

    time_spend = end_time - start_time;
    cout << vec_a << ";" << vec_b; // address of vector a and vector b
    printf(";%d;%lf;%lf\n", input_size, time_spend, 2 * input_size * sizeof(double) / time_spend *1.0e-9); // input array size, time used, bandwidth in GB/s
    free(vec_a);
    free(vec_b);
    return 0;
}
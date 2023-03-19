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

REGISTER_KERNEL(triad_kernel);


int main(int argc, char* argv[]) {
    long unsigned int input_size;
    double *vec_a, *vec_b, *vec_c; // vector a, vector b
    int i;
    double start_time, end_time, time_spend;

    nec::VEProc proc;
    nec::VEContext ctx;

    input_size = atoi(argv[1]);
    // allocation on VH
    vec_a = (double*)malloc(sizeof(double) * input_size);
    vec_b = (double*)malloc(sizeof(double) * input_size);
    vec_c = (double*)malloc(sizeof(double) * input_size);   

    for (i = 0; i < input_size; i++) 
    {
        vec_a[i] = 3.1415;
        vec_b[i] = 6.283;
        vec_c[i] = 9.146;
    }
    // sycl start
    ve_queue ve_q;

    range<1> a_size(input_size);
    range<1> b_size(input_size);
    range<1> c_size(input_size);
    buffer<double, 1> result_buf_One(vec_a, a_size);
    buffer<double, 1> result_buf_Two(vec_b, b_size);
    buffer<double, 1> result_buf_Three(vec_c, c_size);

    //start_time = get_time();
    {
        ve_q.submit([&](handler& cgh) {
            auto a = result_buf_One.get_access<access::mode::read_write>(cgh);
            auto b = result_buf_Two.get_access<access::mode::read_write>(cgh);
            auto c = result_buf_Three.get_access<access::mode::read_write>(cgh);

            cgh.parallel_for<class triad_kernel>(range<1>{input_size}, [=](id<1> idx) {
                a[idx] = 0.03 * b[idx] + c[idx];
            });
        });
    }
    ve_q.wait();

    
    
/***************************
void SYCLStream<T>::triad() {
  buffer<T> buf_a(a, range<1>(array_size));
  buffer<T> buf_b(b, range<1>(array_size));
  buffer<T> buf_c(c, range<1>(array_size));

  queue.submit([&](handler &cgh) {
    auto ka = buf_a.template get_access<access::mode::write>(cgh);
    auto kb = buf_b.template get_access<access::mode::read>(cgh);
    auto kc = buf_c.template get_access<access::mode::read>(cgh);
    cgh.parallel_for<class triad_kernel>(range<1>(array_size), [=](const id<1> &i) {
      ka[i] = kb[i] + 0.4 * kc[i];
    });
  });
  queue.wait();
}

***********************/
    free(vec_a);
    free(vec_b);
    return 0;
}

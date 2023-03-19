#include <CL/sycl.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

using namespace cl::sycl;

REGISTER_KERNEL(vector_add);



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
        vec_a[i] = 3.14;
        vec_b[i] = 6.28;
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

            cgh.parallel_for<class vector_add>(range<1>{input_size}, [=](id<1> idx) {
                a[idx] += b[idx];
            });
        });
    }
    ve_q.wait();

    for(int i = 0; i < input_size; ++i) {
    }

    time_spend = end_time - start_time;
    free(vec_a);
    free(vec_b);
    return 0;
}
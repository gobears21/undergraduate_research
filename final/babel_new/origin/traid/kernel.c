// /opt/nec/ve/bin/ncc -c -o kernel.o kernel.c
// /opt/nec/ve/bin/mk_veorun_static -o kernel kernel.o
// to check the function name, find the sycl library

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>



void P12triad_kernel(double *A, double *B, double *C, size_t size) 
{
    //printf("hello world\n");

    for (size_t i = 0; i < size; ++i)
      {
        A[i] = 0.03 * B[i] + C[i];
        //fprintf(stderr,"%lf\n", A[i]);
    }
}



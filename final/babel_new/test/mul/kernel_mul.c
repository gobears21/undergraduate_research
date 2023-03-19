// /opt/nec/ve/bin/ncc -c -o kernel.o kernel.c
// /opt/nec/ve/bin/mk_veorun_static -o kernel kernel.o
// to check the function name, find the sycl library

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>



void P10mul_kernel(double *A, double *B, size_t size) 
{
   // printf("hello world\n");

    for (size_t i = 0; i < size; ++i)
      {
        B[i] = 0.03 * A[i] ;
        //printf("%lf\n",B[i]);
    }
}




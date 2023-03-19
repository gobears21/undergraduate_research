// /opt/nec/ve/bin/ncc -c -o kernel.o kernel.c
// /opt/nec/ve/bin/mk_veorun_static -o kernel kernel.o
// to check the function name, find the sycl library

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>



void P4fill(double *A, double *B, size_t size) 
{
    //printf("hello world\n");

    for (size_t i = 0; i < size; ++i)
      {
        A[i] = 3.1415;
        B[i] = 3.1415;
        //fprintf(stderr, "%lf %lf\n", A[i], B[i]);
      }
}


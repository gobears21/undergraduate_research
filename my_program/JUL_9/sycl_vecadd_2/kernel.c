// /opt/nec/ve/bin/ncc -c -o kernel.o kernel.c
// /opt/nec/ve/bin/mk_veorun_static -o kernel kernel.o
// to check the function name, find the sycl library

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>



void P10vector_add(double *A, double *B, size_t size) 
{
    //printf("vector_add from vector engine function vector add \n");

    for (size_t i = 0; i < size; ++i)
      {
        B[i] += A[i] ;
    }

    //printf("%ld;%lf;%lf\n",size,time_spend, 2 * size * sizeof(double) / time_spend *1.0e-9);
}




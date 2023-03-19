// /opt/nec/ve/bin/ncc -c -o kernel.o kernel.c
// /opt/nec/ve/bin/mk_veorun_static -o kernel kernel.o
// to check the function name, find the sycl library

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>



void P10vector_add(double *a, double *b, size_t size) 
{
    //printf("hello wold from VE **********************************\n");
    for (size_t i = 0; i < size; ++i)
      {
        //a[i] += 1.0;
        //b[i] -= 1.0;
        b[i] += a[i] ;
    }
}





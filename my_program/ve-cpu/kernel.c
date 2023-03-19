// /opt/nec/ve/bin/ncc -c -o kernel.o kernel.c
// /opt/nec/ve/bin/mk_veorun_static -o kernel kernel.o

#include <stdio.h>
#include <stdlib.h>

void P10vector_add(double *A, double *B, size_t size) 
{
    //printf("vector_add from vector engine function vector add \n");
    
    for (size_t i = 0; i < size; ++i)
	  {
        B[i] += A[i] ;
    }
}


void P9print_out(size_t size) 
{
    for (size_t i=0; i < size; i++)
    {
      printf("loop No. %d\n",i);
    } 
    //printf("vector_add from vector engine print_out \n");
}


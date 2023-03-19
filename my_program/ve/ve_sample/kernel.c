#include <stdio.h>
#include <stdlib.h>

void P10vector_add(int *A, int *B, int *C, size_t size) 
{
    printf("ve:vector_add from kernal C:\n");

    for (size_t i = 0; i < size; ++i) 
    {
        C[i] = A[i] + B[i];
        printf("%d  ", C[i]);
    }
    printf("\n");
}

void P8ve_print(size_t size) 
{    
    for (size_t i=0; i < size; i++)
    {
      printf("bbb\n");
    } 
    printf("\n");
}

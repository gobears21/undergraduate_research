#include <stdio.h>
#include <stdlib.h>

void P10vector_add(int *A, int *B, int *C, size_t size) {  // P10 ??   // size_t 是sample里面的 rang值 
    printf("ve:vector_add C:\n");

    for (size_t i = 0; i < size; ++i) {
        C[i] = A[i] + B[i];
        printf("%d  ", C[i]);
    }
    printf("\n");
}

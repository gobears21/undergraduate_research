#include <stdio.h>
#include <stdint.h>

uint64_t vector_add(double* vector_a, double* vector_b, int size)
{  
  //printf("hello world from VE \n");
  for(int i = 0; i < size; i++){
      vector_b[i] += vector_a[i];
      //vector_a[i] = vector_a[i] - 1.0;   
  }
  return 0;
}




#include <stdio.h>
#include <stdint.h>

void vector_add(double* vector_a, double* vector_b, int size)
{  
  for(int i = 0; i < size; i++){
      vector_b[i] = vector_b[i] + 1;
      vector_a[i] = vector_a[i] - 1;
      
  }
}




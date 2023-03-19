#include <stdio.h>
#include <stdint.h>

void test_alloc(double* vector_a, double* vector_b, int size){
  for(int i = 0; i < size; i++){
      vector_a[i] = i + 1; 
      vector_b[i] = 0 ;
  }
  printf("address of a and b are %p %p",vector_a, vector_b);
}

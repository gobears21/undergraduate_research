#include <stdio.h>
#include <stdint.h>

void test_alloc(double* vector_a, double* vector_b, int size){
  
  for(int i = 0; i < size; i++){
      vector_a[i] = vector_a[i] + 1; 
      vector_b[i] = vector_b[i] - 1 ;
  }
  //printf("address of a and b are %p %p",vector_a, vector_b);
}

void initial(double* vector_a, double* vector_b, int size){
  
  //initial
  for(int i = 0; i < size; i++){
      vector_a[i] = 3.14; 
      vector_b[i] = 6.28;
  }
  
  //printf("address of a and b are %p %p",vector_a, vector_b);
}

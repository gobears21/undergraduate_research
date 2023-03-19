#include <stdio.h>
#include <stdint.h>

void test_alloc(int* array, int size){
  for(int i = 0; i < size; i++){
      array[i] = i + 1; 
  }
}

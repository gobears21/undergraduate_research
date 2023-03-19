#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <iostream>

#ifndef ITRMAX
#define ITRMAX 1
#endif

double get_time()
{
  struct timeval tv;

  gettimeofday(&tv, NULL);

  return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(int argc, char *argv[]){
  int i, itr;
  long long N;
  double srt_time, end_time, total_time = 0;
  double s = 3.0;
  double *a, *b;

  if(argc < 1){
    printf("USAGE: ./a.out <ARRAY SIZE>\n");
    exit(1);
  }
  
  N = atoi(argv[1]);

  for(itr=0; itr<ITRMAX; itr++){
    a = (double *)malloc(N*sizeof(double));
    b = (double *)malloc(N*sizeof(double));
    
    if(a == NULL || b == NULL){
      printf("Allocation Error!\n");
      exit(1);
    }
    
    std::cout << a << ";" << b; //modified by wang on June 5
    /************ wang Jun 5 ************
    std::cout << "a : " << a << std::endl;
    std::cout << "b : " << b << std::endl;
    ************ wang Jun 5 ************/
    
    // initialize
#pragma omp parallel for
    for(i=0; i<N; i++){
      a[i] = 1.0;
      b[i] = 2.0;
    }
    
    srt_time = get_time();
    
    // main loop
#pragma omp parallel for
    for(i=0; i<N; i++){
      b[i] += a[i];
    }
    
    end_time = get_time();
    total_time += (end_time - srt_time);
    
    free(a);
    free(b);
  }

  printf(";%d;%lf;%lf\n",N,total_time,2*N*sizeof(double)*ITRMAX/total_time*1.0e-9);  // modified by Wang on June 5, 21
  /************ wang Jun 5 ************
  printf("Array Size : %d\n", N);
  printf("Elapsed Time [sec] : %lf\n", total_time);
  printf("Sustained Memory Bandwidth [GB/s] : %lf\n", 2*N*sizeof(double)*ITRMAX/total_time*1.0e-9);
  ************ wang Jun 5 ************/
  

}

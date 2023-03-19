#include<stdio.h>
#include<iostream>
int main()
{
  int a[100];
  for(int i=0; i<100; i++)
  {
    a[i] = 6;
    std::cout << a[i] << std::endl;
  }
  return 0;
}
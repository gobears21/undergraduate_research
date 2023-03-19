#include<stdio.h>
#include<stdlib.h>
//#include<iostream>

int main()
{
	long start, end, step, resolution, output, i;
  FILE *fp;
  start = 160*160*160;
  end = 250*250*250;
  resolution = 1000;
  step = (long) ((end - start)/resolution);
  output = start;
  fp = fopen("160-250.out", "a");
  for (i = 1; i <= resolution; i ++)
  {
    output += step;
    fprintf(fp, "%ld\n", output);
  }
  fclose(fp);
	return 0;

}

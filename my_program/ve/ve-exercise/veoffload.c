//  /opt/nec/ve/bin/ncc -c -o veoffload.o veoffload.c
//  /opt/nec/ve/bin/mk_veorun_static -o veoffload veoffload.o


#include <stdio.h>
#include <stdint.h>


uint64_t hello()
{
  printf("Hello, world\n");
  return 0;
}

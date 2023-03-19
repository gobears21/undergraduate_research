#!/bin/bash

/opt/nec/ve/bin/ncc -fpic -shared -o kernel.so kernel.c
gcc -std=c++11 offload.c -o offload.out -I/opt/nec/ve/veos/include -L/opt/nec/ve/veos/lib64 -Wl,-rpath=/opt/nec/ve/veos/lib64 -lveo

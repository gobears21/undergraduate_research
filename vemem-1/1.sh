#!/bin/bash

/opt/nec/ve/bin/ncc -fpic -shared -o kernel.so kernel.c
gcc -std=c99 1.c -o 1.out  -I/opt/nec/ve/veos/include -L/opt/nec/ve/veos/lib64 -Wl,-rpath=/opt/nec/ve/veos/lib64 -lveo

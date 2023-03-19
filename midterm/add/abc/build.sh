#!/bin/bash

/opt/nec/ve/bin/ncc -fpic -shared kernel.c -o kernel.so 

NEO_SYCL=/home/gobears21/midterm/SYCL_modified/include/

VEO_HEADER_PATH=/opt/nec/ve/veos/include
VEO_LIB_PATH=/opt/nec/ve/veos/lib64
/opt/gcc-8.2.0/bin/g++ -std=c++17 -DBUILD_VE -g sycl_abc.cpp -o sycl_abc.out -I$NEO_SYCL  -I$VEO_HEADER_PATH -lpthread -L$VEO_LIB_PATH -Wl,-rpath=$VEO_LIB_PATH -lveo


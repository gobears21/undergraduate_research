#!/bin/bash

/opt/nec/ve/bin/ncc -fpic -shared -o kernel.so kernel.c

NEO_SYCL=/home/gobears21/final/origin/include/

VEO_HEADER_PATH=/opt/nec/ve/veos/include
VEO_LIB_PATH=/opt/nec/ve/veos/lib64
/opt/gcc-8.2.0/bin/g++ -std=c++17 -DBUILD_VE sycl_copy.cpp -o sycl_copy.out -I$NEO_SYCL  -I$VEO_HEADER_PATH -lpthread -L$VEO_LIB_PATH -Wl,-rpath=$VEO_LIB_PATH -lveo




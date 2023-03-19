#!/bin/bash

/opt/nec/ve/bin/ncc -fpic -shared -o kernel.so kernel.c

NEO_SYCL_ORIGIN=/home/gobears21/final/origin/include/
NEO_SYCL_MODIFIED=/home/gobears21/final/modified/include/

VEO_HEADER_PATH=/opt/nec/ve/veos/include
VEO_LIB_PATH=/opt/nec/ve/veos/lib64


/opt/gcc-8.2.0/bin/g++ -std=c++17 -DBUILD_VE sycl_copy.cpp -o sycl_copy_origin.out -I$NEO_SYCL_ORIGIN  -I$VEO_HEADER_PATH -lpthread -L$VEO_LIB_PATH -Wl,-rpath=$VEO_LIB_PATH -lveo
/opt/gcc-8.2.0/bin/g++ -std=c++17 -DBUILD_VE sycl_copy.cpp -o sycl_copy_modified.out -I$NEO_SYCL_MODIFIED  -I$VEO_HEADER_PATH -lpthread -L$VEO_LIB_PATH -Wl,-rpath=$VEO_LIB_PATH -lveo




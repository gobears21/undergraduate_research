#!/bin/bash

/opt/nec/ve/bin/ncc -fpic -shared -o kernel.so kernel.c

NEO_SYCL=/home/gp.sc.cc.tohoku.ac.jp/lijiahao/VE-Workspace/neoSYCL/include

VEO_HEADER_PATH=/opt/nec/ve/veos/include
VEO_LIB_PATH=/opt/nec/ve/veos/lib64
g++ -std=c++17 -DBUILD_VE sample.cpp -o sample -I$NEO_SYCL  -I$VEO_HEADER_PATH -lpthread -L$VEO_LIB_PATH -Wl,-rpath=$VEO_LIB_PATH -lveo


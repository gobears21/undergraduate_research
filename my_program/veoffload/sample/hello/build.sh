#!/bin/bash
/opt/nec/ve/bin/ncc -fpic -shared -o libvehello.so libvehello.c

gcc -o hello hello.c -I/opt/nec/ve/veos/include -L/opt/nec/ve/veos/lib64 -Wl,-rpath=/opt/nec/ve/veos/lib64 -lveo
#!/bin/bash

start=160*160*160
end=250*250*250
resolution=1000;
step_size=$(((end-start)/resolution))


array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./1.out $array_size >> result_1.out
done




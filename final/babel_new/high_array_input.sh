#!/bin/bash


start=1
end=800*800*800
resolution=15000;
step_size=$(((end-start)/resolution))


array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./print_input_number.out $array_size >> input_number_1_800-15000.out
done

#!/bin/bash


start=600*600*600
end=650*650*650
resolution=1500;
step_size=$(((end-start)/resolution))


array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./print_input_number.out $array_size >> input_number_600_650-1500.out
done

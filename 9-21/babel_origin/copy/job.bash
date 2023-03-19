#!/bin/bash
#SBATCH --partition aurora --nodelist=aurora8
#SBATCH --gres=ve:8
#SBATCH --exclusive

export OMP_NUM_THREADS=1
export VE_PROGINF=DETAIL

start=600*600*600
end=650*650*650
resolution=1500;
step_size=$(((end-start)/resolution))



array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./sycl_copy.out $array_size >> result_copy_original.out
done



















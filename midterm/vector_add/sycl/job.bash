#!/bin/bash
#SBATCH --partition aurora --nodelist=aurora8
#SBATCH --gres=ve:8
#SBATCH --exclusive

export OMP_NUM_THREADS=1
export VE_PROGINF=DETAIL

start=1
end=600*600*600 
resolution=3000;
step_size=$(((end-start)/resolution))

#array_size=$start
#for i in `seq 1 $resolution`
#do
#    array_size=$((array_size+step_size))
#    ./a.out $array_size >> test_1.out
#done


array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./sycl_add.out $array_size >> result_1_600-3000.out
done

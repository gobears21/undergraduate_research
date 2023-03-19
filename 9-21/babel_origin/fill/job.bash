#!/bin/bash
#SBATCH --partition aurora --nodelist=aurora8
#SBATCH --gres=ve:8
#SBATCH --exclusive

export OMP_NUM_THREADS=1
export VE_PROGINF=DETAIL

start=160*160*160
end=250*250*250
resolution=1000;
step_size=$(((end-start)/resolution))

#array_size=$start
#for i in `seq 1 $resolution`
#do
#    array_size=$((array_size+step_size))
#    ./origin.out $array_size >> orgin_result.out
#done

array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./fill.out $array_size >> result_fill_origin.out
done

#!/bin/bash
#SBATCH --partition aurora --nodelist=aurora8
#SBATCH --gres=ve:8
#SBATCH --exclusive

export OMP_NUM_THREADS=1
export VE_PROGINF=DETAIL

start=1
end=750*750*750
resolution=15000;
step_size=$(((end-start)/resolution))


array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./super_mix.out $array_size >> mix_modified_1-750_15000.out
done

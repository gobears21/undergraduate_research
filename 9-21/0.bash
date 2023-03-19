#!/bin/bash
#SBATCH --partition aurora --nodelist=aurora8
#SBATCH --gres=ve:8
#SBATCH --exclusive

export OMP_NUM_THREADS=1
export VE_PROGINF=DETAIL

start=1
end=200*200*200 
resolution=1000;
step_size=$(((end-start)/resolution))


#modified
#copy
#./modified/copy/build.sh
array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./modified/copy/sycl_copy.out $array_size >> result_copy_modified.out
done

echo "modified is done"


#fill
#./modified/fill/build.sh
array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./modified/fill/fill.out $array_size >> result_fill_modified.out
done

echo "fill is done"

#mul
#./modified/mul/build.sh
array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./modified/mul/sycl_mul.out $array_size >> result_mul_modified.out
done

echo "mul is done"

#traid
#./modified/traid/build.sh
array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./modified/traid/sycl_traid.out $array_size >> result_traid_modified.out
done

echo "traid is done"

#super_mix
#./modified/super_mix/build.sh
array_size=$start
for i in `seq 1 $resolution`
do
    array_size=$((array_size+step_size))
    ./modified/super_mix/super_mix.out $array_size >> result_mix_modified.out
done

echo "all done"


















#!/bin/bash
LD="alc"
sz1=10
sz2=180
tgp=$(($sz2*$sz2*$sz2))

export PARALLEL=8
export OMP_NUM_THREADS=${PARALLEL}

for n in {1..10}
do
        for d in cflux cflux_wif vflux
        do
                cp /dev/null ../logs/${d}.log.$n
                ../${d}/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}.log.$n
                cp /dev/null ../logs/${d}-1d.log.$n
                ../${d}-1d/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}-1d.log.$n
        done
        for d in muscl cfacev #rhsc rhsv rhs
        do
                cp /dev/null ../logs/${d}.log.$n
                ../${d}/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}.log.$n
                cp /dev/null ../logs/${d}-1d.log.$n
                ../${d}-1d/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}-1d.log.$n
                cp /dev/null ../logs/${d}-1d_omp.log.$n
		../${d}-1d_omp/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}-1d_omp.log.$n
        done
        #cp /dev/null ../logs/rhs-1d_omp_marge.log.$n
        #../rhs-1d_omp_marge/${LD} ${tgp} ${sz1} ${sz2} > ../logs/rhs-1d_omp_marge.log.$n
done

# followings are original script

# module load compiler/intel-16.0.3
# module load impi

# mpdboot -n 1

# #############################################

# mpip=2
# LD="alc"
# sz1=10
# sz2=180
# tgp=$(($sz2*$sz2*$sz2))

# export PARALLEL=32
# export OMP_NUM_THREADS=${PARALLEL}

# for n in {1..10}
# do
#         for d in cflux cflux_wif vflux
#         do
#                 cp /dev/null ../logs/${d}.log.$n
#                 mpiexec -n 2 numactl -m 1 ../${d}/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}.log.$n
#                 cp /dev/null ../logs/${d}-1d.log.$n
#                 mpiexec -n 2 numactl -m 1 ../${d}-1d/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}-1d.log.$n
#         done
#         for d in muscl cfacev rhsc rhsv rhs
#         do
#                 cp /dev/null ../logs/${d}.log.$n
#                 mpiexec -n 2 numactl -m 1 ../${d}/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}.log.$n
#                 cp /dev/null ../logs/${d}-1d.log.$n
#                 mpiexec -n 2 numactl -m 1 ../${d}-1d/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}-1d.log.$n
#                 cp /dev/null ../logs/${d}-1d_omp.log.$n
#                 mpiexec -n 2 numactl -m 1 ../${d}-1d_omp/${LD} ${tgp} ${sz1} ${sz2} > ../logs/${d}-1d_omp.log.$n
#         done
#         cp /dev/null ../logs/rhs-1d_omp_marge.log.$n
#         mpiexec -n 2 numactl -m 1 ../rhs-1d_omp_marge/${LD} ${tgp} ${sz1} ${sz2} > ../logs/rhs-1d_omp_marge.log.$n
# done

# #############################################

# mpdallexit

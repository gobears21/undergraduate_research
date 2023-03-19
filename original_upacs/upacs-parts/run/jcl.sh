#!/bin/sh

for DIR in cflux vflux cflux_wif
do

/opt/JX/bin/jxsub <<_JOB
#JX --bizcode CMP06
#JX --usecode GE
#JX -L "rscunit=MA"
#JX -L "node=1:mesh"
#JX -L "node-mem=29184Mi"
#JX -L "elapse=05:00:00"
#JX --mpi proc=2
#JX -N up-$DIR
#JX -S

export XOS_MMM_L_ARENA_FREE=2
export FLIB_FASTOMP=TRUE

export LD="alc"

export sz1=10
export sz2=180
tgp=\$((\$sz2*\$sz2*\$sz2))

export PARALLEL=16
export OMP_NUM_THREADS=\${PARALLEL}

#for n in {1..10}
for n in {1..3}
do
	mpiexec -n 2 -of ../logs/${DIR}.log.\$n ../${DIR}/\${LD} \${tgp} \${sz1} \${sz2}
	mpiexec -n 2 -of ../logs/${DIR}-1d.log.\$n ../${DIR}-1d/\${LD} \${tgp} \${sz1} \${sz2}
done

_JOB

done

for DIR in muscl cfacev rhsc rhsv rhs
do

/opt/JX/bin/jxsub <<_JOB
#JX --bizcode CMP06
#JX --usecode GE
#JX -L "rscunit=MA"
#JX -L "node=1:mesh"
#JX -L "node-mem=29184Mi"
#JX -L "elapse=05:00:00"
#JX --mpi proc=2
#JX -N up-$DIR
#JX -S

export XOS_MMM_L_ARENA_FREE=2
export FLIB_FASTOMP=TRUE

export LD="alc"

export sz1=10
export sz2=180
tgp=\$((\$sz2*\$sz2*\$sz2))

export PARALLEL=16
export OMP_NUM_THREADS=\${PARALLEL}

#for n in {1..10}
for n in {1..3}
do
	mpiexec -n 2 -of ../logs/${DIR}.log.\$n ../${DIR}/\${LD} \${tgp} \${sz1} \${sz2}
	mpiexec -n 2 -of ../logs/${DIR}-1d.log.\$n ../${DIR}-1d/\${LD} \${tgp} \${sz1} \${sz2}
	mpiexec -n 2 -of ../logs/${DIR}-1d_omp.log.\$n ../${DIR}-1d_omp/\${LD} \${tgp} \${sz1} \${sz2}
done

_JOB

done

exit 


/opt/JX/bin/jxsub <<_JOB
#JX --bizcode CMP06
#JX --usecode GE
#JX -L "rscunit=MA"
#JX -L "node=1:mesh"
#JX -L "node-mem=29184Mi"
#JX -L "elapse=05:00:00"
#JX --mpi proc=2
#JX -N up-marge
#JX -S

export XOS_MMM_L_ARENA_FREE=2
export FLIB_FASTOMP=TRUE

export LD="alc"

export sz1=10
export sz2=180
tgp=\$((\$sz2*\$sz2*\$sz2))

export PARALLEL=16
export OMP_NUM_THREADS=\${PARALLEL}

#for n in {1..10}
for n in {1..3}
do
	mpiexec -n 2 -of ../logs/rhs-1d_omp_marge.log.\$n ../rhs-1d_omp_marge/\${LD} \${tgp} \${sz1} \${sz2}
done

_JOB

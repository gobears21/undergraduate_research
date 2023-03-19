#!/bin/bash
#SBATCH --partition aurora --nodelist=aurora8
#SBATCH --gres=ve:1
#SBATCH --exclusive

export OMP_NUM_THREADS=1
export VE_PROGINF=DETAIL

srt=1
end=200*200*200
res=1000;
str=$(((end-srt)/res))

#echo '---'
#for j in {1..5}
#do

arr=$srt
for i in `seq 1 $res`
do
    arr=$((arr+str))
    ./a.out $arr
done

#    echo '---'
#done

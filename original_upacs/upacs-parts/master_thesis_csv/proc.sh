#!/bin/bash

for ker in cfacev cflux vflux muscl
do
    date > ${ker}_summary.txt
    for i in `seq 1 10`
    do
	cat ../master_thesis_logs/${ker}-1d.log.${i} >> ${ker}_summary.txt
    done
    python3 to_csv.py ${ker}_summary.txt > ${ker}.csv
done

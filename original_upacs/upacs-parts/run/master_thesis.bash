#!/bin/bash
#SBATCH --partition aurora
#SBATCH --gres=ve:1
#SBATCH --exclusive
#comment SBATCH -o output_filename.txt -J job_name

rpm -q veos
./run

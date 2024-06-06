#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks-per-node 24
#SBATCH -t 12:00:00
#SBATCH -A ncaa
#SBATCH -o NCAA.output.%j
#SBATCH -e NCAA.err.%j
#SBATCH -J NCAA
#SBATCH --export ALL
##SBATCH --mail-type=FAIL,END
#SBATCH --mail-user richard.overstreet@pnnl.gov
#SBATCH --partition=smp7

source /people/over129/software/nwchem-7.0.2_bm/src/reo_build_nwchem2bm.sh

mpiexec -n 40 /people/over129/software/nwchem-7.0.2_bm/bin/LINUX64/nwchem ncaa.nw > ncaa.out

Chargemol_09_26_2017_linux_parallel

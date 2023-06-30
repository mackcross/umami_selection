#!/bin/sh
#$ -N paup_TAS1R1
#$ -e /Users/mackcross/paup_TAS1R1.err
#$ -o /Users/mackcross/paup_TAS1R1.out
#$ -M mackenzie-cross@uiowa.edu
#$ -m abe

cd /Users/mackcross/

module load stack/2020.1
stack/2022.1-base_arch
module load r/4.1.3_gcc-9.4.0

Rscript final_argon_iterative_phylogeny_TAS1R1.R

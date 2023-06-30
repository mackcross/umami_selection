#!/bin/sh
#$ -N paup_TAS1R3
#$ -e /Users/mackcross/paup_TAS1R3.err
#$ -o /Users/mackcross/paup_TAS1R3.out
#$ -M mackenzie-cross@uiowa.edu
#$ -m abe

cd /Users/mackcross/

module load stack/2022.1
module load r/4.1.3_gcc-9.4.0

Rscript final_argon_iterative_phylogeny_TAS1R3.R

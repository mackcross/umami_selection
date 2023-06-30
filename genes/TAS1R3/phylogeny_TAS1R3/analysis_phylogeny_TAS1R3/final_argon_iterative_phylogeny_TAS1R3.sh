#!/bin/sh
#$ -N name
#$ -e /Users/mackcross/example.err
#$ -o /Users/mackcross/example.out
#$ -M mackenzie-cross@uiowa.edu
#$ -m abe

cd /Users/mackcross/

module load stack/2021.1

Rscript final_argon_iterative_phylogeny_TAS1R3.R

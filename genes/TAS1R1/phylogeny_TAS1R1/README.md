# TAS1R1 Maximum Likelihood Phylogeny 

## ALIGNMENT PREPARATION
I saved copies of the alignments "trimmed_dna_aligned_combined_TAS1R1.fa" and "selected_removal_dna_aligned_combined_TAS1R1.fa" as nexus files which were stored in the ~/TAS1R1/phylogeny/ directory for PAUP input. I removed any symbols which were not underscores from the sequence names, as PAUP does not accept these symbols. 

## MODEL TEST
Using Wilgenbeusch and Swofford's publication "Inferring Evolutionary Trees with PAUP*" as a guide, I tested the trimmed alignment under different models in PAUP. I ran a likelihood ratio test in the R script to compare the log-likelihoods of models, and found the HKY85+G (nst=2 tratio=estimate basefreq=empirical rates=gamma shape=estimate pinvar=0.0) to be best supported. The alignment, settings, output and R script used for this model test can be found in the directory ~/phylogeny_TAS1R1/model_test_TAS1R1/. 

## GENERATION OF PHYLOGENY
I wrote an R script to iteratively run the PAUP analyses for both TAS1R1 and TAS1R3 alignments (found in ~/umami_selection/genes/scripts/argon_iterative_phylogeny.R). The alignments found in ~/phylogeny_TAS1R1/analysis_phylogeny_TAS1R1/ were ran on the University of Iowa computing cluster (ARGON). I copied the output files from this process into this directory, pairing the output with its respective alignment. 
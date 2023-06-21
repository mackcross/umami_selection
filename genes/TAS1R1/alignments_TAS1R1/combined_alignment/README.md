# INTRODUCTION	
This folder describes adjustments made to improve the quality of the combined alignment which contains both Ensembl and NCBI data. 


# ORIGINAL ALIGNMENT
This alignment contains the combined Ensembl and NCBI data. In the previous NCBI alignment (...TAS1R1/alignments/expanded/aligned/TAS1R1_dna_aligned_extended.fa), the NCBI data had been cleaned through 1) removing all DNA prior to the start codon and all DNA following the in-frame stop codon and 2) removing all introns, as determined through comparison against the amino acid transcript. The NCBI DNA alignment was combined with the Ensembl DNA alignment (...TAS1R1/alignments/ensembl/aligned/TAS1R1_dna_aligned_ensembl.fa) to form this alignment. 

This alignment can be found in ...TAS1R1/alignments/combined_alignment/original_alignment/TAS1R1_dna_aligned_combined.fa.  


# TRIMMED ALIGNMENT
As the nature of subsequent PAML analyses is comparative, I chose to remove any segments of DNA which were not represented by at least 10 species. The following adjustments were made to the alignment (the locations referenced can be observed in the "TAS1R1_amino_aligned_combined.fa" file):  

1. Otolemur garnettii and Nycticebus coucang contained sequences prior to the start codon shared across primates. As these sequences were not represented by more than 10 primates, they were removed. 
2. Nycticebus coucang, Prolemur simus and Lemur catta sequences contained DNA beyond the last codon of other primates at 842. As these sequences were not represented by more than 10 primates, they were removed.

This alignment can be found in ...TAS1R1/alignments/combined_alignment/trimmed_alignments/trimmed_TAS1R1_dna_aligned_combined.fa. 


# SELECTED REMOVAL ALIGNMENT
I removed all sequences that have gaps from this alignment. The following species sequences were removed: 1) Chlorocebus sabaeus, 2) Trachypithecus francoisi, and 3) Nomascus leucogenys.

This alignment can be found in ...TAS1R1/alignments/combined_alignment/selected_removal_alignments/selected_removal_TAS1R1_dna_aligned_combined.fa.
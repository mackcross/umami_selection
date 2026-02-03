# INTRODUCTION	
This folder describes adjustments made to improve the quality of the combined alignment which contains both Ensembl and NCBI data. 


# ORIGINAL ALIGNMENT
This alignment contains the combined Ensembl and NCBI data. In the previous NCBI alignment (...TAS1R3/alignments/expanded/aligned/TAS1R3_dna_aligned_extended.fa), the NCBI data had been cleaned through removing all DNA prior to the start codon and all DNA following the in-frame stop codon. Importantly, that NCBI data still contained introns. The NCBI DNA alignment was combined with the Ensembl DNA alignment (...TAS1R3/alignments/ensembl/aligned/TAS1R3_dna_aligned_ensembl.fa) to form the alignment found in ...TAS1R3/alignments/combined_alignment/original_alignments/TAS1R3_dna_aligned_combined.fa. 


# TRIMMED ALIGNMENT
I improved the previous alignment by removing the introns from the NCBI sequences. Introns were determined through comparison against the amino acid transcript. After cleaning the alignment to include only exon data, I noted numerous insertions. As the nature of subsequent PAML analyses is comparative, I chose to remove any segments of DNA which were not represented by at least 10 species. The following adjustments were made to the alignment (the locations referenced can be observed in the "TAS1R3_amino_aligned_combined.fa" file):  

1. Macaca thibetana, Macaca fascicularis, Cercocebus atys, Papio anubis, and Trachypithecus francoisi contained DNA prior to the start codon of other primates. As these sequences were not represented by more than 10 primates, they were removed. 
2. Based on the amino acid transcript, Symphalangus syndactylus and Nomascus leucogenys had several alternative amino acid sequences ("MQKRRDLRGMCAWRWGPLPATTVVWTERGCHSAESSWTPPQPGLWELHVVPAKAADCSMGRENRLGLHGPQGRAPS") and ("MQRRRDLRGMCAWRWGPLPATTVAWTERGCNSAESSWTPPQPGLWELHMVPAKAADCSMGRENRLGLHGPQGRAPS") respectively which appeared to be inconsistent with other amino acids as well as the DNA. These sequences were removed from the amino acid file as they did not seem to appear in the DNA file. 
3. Rhinopithecus bieti had insertions at 120, 489, and 508 that were removed. 
4. Microcebus muriensis had an insertion at 553 that was removed.  
5. Prolemur simus had insertions at 605 and 609 that were removed. 


# ALTERED ALIGNMENT
In the final stages of the alignment, it was noted that two species sequences were not consistent with the amino acid transcript by one base. The following adjustments were made to the alignment (the locations referenced can be observed in the "trimmed_TAS1R3_dna_aligned_combined.fa" file).: 

1. There appeared to be a G that was accidentally added to the Cebus imitator sequence at 1814 which seems most likely due to a sequencing error. This insertions causes a frameshift which makes the DNA incompatible with the amino acid transcript. Therefore, I deleted the G at 1814 to make the DNA consistent with the amino acid transcript in accordance with the file "trimmed_TAS1R3_amino_aligned_combined.fa". 
2. In the Trachypithecus francoisi sequence, there is a missing base at 2109 that causes a frameshift which makes the DNA incompatible with the amino acid transcript. Based on the amino acid transcript, it appears that this is an unclear codon with a missing base. I inserted a question mark at 2109 which bring the DNA into proper reading frame consistent with the amino acid transcript. 


# SELECTED REMOVAL ALIGNMENT
I removed Rhinopithecus bieti as this sequence had substantial gaps. Additionally, I removed all species DNA after 2496 in the file "selected_removal_TAS1R3_dna_aligned_combined.fa" to see if deleting this region would change results, as this region is very divergent between sequences. 

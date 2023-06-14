# INTRODUCTION	
This folder describes adjustments made to improve the quality of the alignment. 

# ORIGINAL ALIGNMENT
This alignment contains the combined Ensembl data and the NCBI. The NCBI data contained DNA prior to the start codons and DNA after the stop codon, as well as introns. The NCBI data in this alignment had been trimmed to include only DNA starting at start codon and ending at the stop codon based on the amino acid transcript but still included introns. 

# TRIMMED ALIGNMENT
I improved the previous alignment by also removing intronic data through referencing the amino acid sequence data and removing any DNA not represented by amino acids. After cleaning the alignment to include only exon data, I noted numerous insertions.

As the nature of subsequent PAML analyses is comparative, I chose to remove any segments of DNA which were not represented by at least 10 species. The following adjustments were made to the alignment (the locations referenced can be observed in the "TAS1R3_amino_aligned_combined.fa" file):  

1. Macaca thibetana, Macaca fascicularis, Cercocebus atys, Papio anubis, and Trachypithecus francoisi contained DNA prior to the start codon of other primates. As these sequences were not represented by more than 10 primates, they were removed. 

2. Based on the amino acid transcript, Symphalangus syndactylus and Nomascus leucogenys had several alternative amino acid sequences ("MQKRRDLRGMCAWRWGPLPATTVVWTERGCHSAESSWTPPQPGLWELHVVPAKAADCSMGRENRLGLHGPQGRAPS") and ("MQRRRDLRGMCAWRWGPLPATTVAWTERGCNSAESSWTPPQPGLWELHMVPAKAADCSMGRENRLGLHGPQGRAPS") respectively which appeared to be inconsistent with other amino acids as well as the DNA. These sequences were removed from the amino acid file as they did not seem to appear in the DNA file. 

3. Rhinopithecus bieti had insertions at 120, 489, and 508 that were removed. 

4. Microcebus muriensis had an insertion at 553 that was removed.  

5. Prolemur simus had insertions at 605 and 609 that were removed. 
 
# ALTERED ALIGNMENT
In the final stages of the alignment, it was noted that two species sequences were not consistent with the amino acid transcript by one base. The following adjustments were made to the alignment (the locations referenced can be observed in the "trimmed_TAS1R3_dna_aligned_combined.fa" file).: 

1. There appeared to be a G that was accidentally added to the Cebus imitator sequence at 1814 which seems most likely due to a sequencing error. This insertions causes a frameshift which makes the DNA incompatible with the amino acid transcript. Therefore, I deleted the G at 1814 to make the DNA consistent with the amino acid transcript in accordance with the file "trimmed_TAS1R3_amino_aligned_combined.fa". 

2. There is a missing base at 2111 that causes a frameshift which makes the DNA incompatible with the amino acid transcript. I inserted as a space at 2111 which bring the DNA into proper reading frame consistent with the amino acid transcript. 

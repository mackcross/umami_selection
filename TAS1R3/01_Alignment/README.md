On 8/22/25, I downloaded the TAS1R1 orthologues for all primates and rodents / related species in Ensembl. For some reason, tree shrews were categorized within "rodents / related species" despite being more closely related to primates than rodents. Therefore, I deleted all species in rodents / related species aside from tree shrews, as I wanted the tree shrew to serve as the outgroup. 

On 8/27/25, I used the human TAS1R3 orthologues as input into BlastN, and I searched for orthologues in Primates, Dermoptera and Scandentia. I identified species not currently represented in the Ensembl dataset, and downloaded sequences. I focused on sequences which were labeled "PREDICTED... mRNA", which are sequences that are computationally annotated from genomic data. Given that these are mostly non-model organisms without robust experimental validation, this type of data is adequate. I only considered species with a query cover of 97-100%. The Downloaded NCBI data can be found in TAS1R3/01_Alignment/Downloaded_Data/seqdump.text. 

I merged data from Ensembl and NCBI into a combined alignment file named "TAS1R3_DNA_alignment.fa". Firstly, throughout this process, I renamed the Ensembl and NCBI sequence names to the species binomial nomenclature for ease in downstream analysis. However, in order to document the name changes, I created a separate file named "TAS1R3_renamed_sequences.md" where I pasted the original Ensembl and NCBI names for each of the sequences and their new name for my analysis, which can serve as a key. Secondly, many of the NCBI sequences contained nucleotides prior to the start codon or after the end codon, which I manually removed using NCBI's CDS annotation as a guide. 

After these initial data cleaning steps were completed, I then reviewed the alignment to make further improvements. Specifically, I made the following changes: 

1) 4 species--Cercocebus atys, Papio anubis, Trachypithecus francoisi, and Cynocephalus volans--had start sequences preceding the second start codon which had shared homology with the other species. Although these beginning insertions contain an ATG and may be transcribed, given that there was only 4, I choose to remove them because they lacked strong comparative value. I removed the following sequences.  
- Cercocebus_atys - "ATGAGGCCCCACTCGGCAGCCACCTTGCCGTGCCTGCTGGAAGCGGCCTCTGCC"
- Papio anubis - "ATGAGGCCCCACTCGGCAGCCACCTTGCTGTGCCTGCTGGAAGCGGCCTCTGCC"
- Trachypithecus francoisi - "ATGGCAAGGGTTTTGCTAAACAAATCCTCTGCCCGCTCCCCGCCCGCGCTCTCTCCACGTGAGGCCCCACTCAGGGCAGCCACCTTGCTGGAAGCTGCCTCTGCC"
- Cynocephalus volans - "ATGGCAGCTGGGGATGGTGAGGGTTTTGCTAAACAAATCCTCTGCCCCTCCCCCTGGACTCACTATATCTTGGGCTGCCTCCTGGTACACCCACTTCACACCCTGTGCAAGCGATCACCTGCC"

2) Microcebus murinus contained a leucine insertion "CTC" starting at position 1438 to 1440, which I removed. 

3) Prolemur sinus contained an proline-tryptophan-tryptophan insertion "CCGTGGTGG" starting at position 1601 to 1609, which I removed. 


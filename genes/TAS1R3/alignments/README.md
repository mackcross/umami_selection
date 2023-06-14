# INTRODUCTION
## ENSEMBL DATA 
The human TAS1R3 gene (ENSG00000169962; Ensembl Version ENSG00000169962.5) was viewed on 06/07/23 on 
ensembl.org. All primate orthologous sequences were downloaded (19 total sequences). Both DNA and amino acid sequences were downloaded in FASTA file format. They were saved in the "ensembl" directory. The raw data files are exactly as downloaded, while the aligned files were modified by 1) renaming DNA sequence names to aid in clarity and 2) starting the process of aligning sequences. There is a checksum file with values for raw data and aligned data. 

## NCBI DATA
On 06/06/23, the human TAS1R3 DNA sequence obtained from Ensembl (ENSG00000169962; Ensembl Version ENSG00000169962.5) was input into NCBI's BlastN to find similar sequences. The standard databases nucleotide collection was searched for only highly similar sequences (megablast). All primate sequences not included in the Ensembl data and the flying tree shrew (Galeopterus variegatus) were downloaded (14 total sequences). 

The DNA and amino acid sequences were individually downloaded for all species and saved in the "expanded" directory. I combined all individual DNA and amino acid sequences into raw data files called "TAS1R3_dna_raw_extended.fa" and "TAS1R3_amino_raw_extended.fa" respectively. The NCBI raw data contained introns and DNA beyond the start and stop codons. The aligned files called "TAS1R3_dna_aligned_extended.fa" and "TAS1R3_amino_aligned_extended.fa" were modified by 1) renaming DNA sequence names to aid in clarity, 2) starting the process of aligning sequences and 3) using amino acid transcript as reference for trimming DNA to start and stop codons. There is a checksum file with values for raw data and aligned data. 

## COMBINED ALIGNMENT
The ensembl and NCBI data were combined into a master alignment stored in the "combined_alignment" directory. The details of this alignment can be found in the directory's README.md file. 
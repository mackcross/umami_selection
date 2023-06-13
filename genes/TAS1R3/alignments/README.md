# INTRODUCTION
## Ensembl Data
The human TAS1R3 gene (ENSG00000169962; Ensembl Version ENSG00000169962.5) was viewed on 06/07/23 on 
ensembl.org. All primate orthologous sequences were downloaded (19 total sequences). Both DNA and amino acid sequences were downloaded in FASTA file format. They were saved in the "ensembl" directory. There is a checksum file with values for raw data and values generated for the aligned data. The raw data files are exactly as downloaded, while the aligned files were modified by 1) starting the process of aligning sequences and 2) renaming sequence names to aid in clarity of species. 

## NCBI DATA
On 06/06/23, the human TAS1R3 DNA sequence obtained from Ensembl (ENSG00000169962; Ensembl Version ENSG00000169962.5) was input into NCBI's BlastN to find similar sequences. The standard databases nucleotide collection was searched for only highly similar sequences (megablast). All primate sequences not included in the Ensembl data and the flying tree shrew (Galeopterus variegatus) were downloaded (15 total sequences). The DNA and amino acid sequences were individually downloaded for all species and saved in the "expanded" directory. The raw data files are exactly as downloaded, while the aligned files were modified by starting the process of aligning sequences. I combined all DNA and amino acid sequences into the raw data files called "TAS1R3_dna_raw_extended" and "TAS1R3_amino_raw_extended" respectively. There is a checksum file with values for raw data and values generated for the aligned data. 

## Combined Alignment
The ensembl and NCBI data were combined into a master alignment stored in the "combined_alignment" directory. The NCBI data contained introns and contained DNA beyond the start and stop codons. 

"TAS1R3_dna_aligned_combined" and "TAS1R3_amino_aligned_combined" were the intial alignments after combining the ensembl and NCBI data. This data was cleaned in the combined files. The combined files were modified by 1) using amino acid transcript as reference for trimming DNA to include on protein coding regions, 2) aligning sequences and 3) renaming sequence names to aid in clarity of species. 

Eight sequences has DNA segements preceding the ATG codon at position 2155. As the nature of PAML analyses is comparative, I made the decision to remove these preceding sequences. The files "cleaned_TAS1R3_dna_aligned_combined" and "cleaned_TAS1R3_amino_aligned_combined" were generated following this deletion and aligned. 
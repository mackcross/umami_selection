# PAML Trimmed Alignment Run
This collection of alignments contains two sequences which contain a 
frameshift indel. It is likely this was introduced via sequencing as 
neither sequences has a total number of bases which is divisble by three. 
While the other alignments fix this problem, this alignment was not 
modified in this way. As a result, whenever PAML ran for each of the 
trimmed alignments, the following error messages occured: 

---
stop codon TAG in seq. #   5 
(Sape_tufted_capuchin_NW_0224370671484539489669), nucleotide site 1858
stop codon TGA in seq. #  20 
(Tfra_leaf_monkey_NW_0226814571c121435076121430104), nucleotide site 2122
 2 columns are converted into ??? because of stop codons
Press Enter to continue

---

I did allow this to continue, as the other alignments (altered and 
selected removal) fix this issue so both sequences are in-frame. 

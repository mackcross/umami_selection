# PAML PREPARATION
## Sequence File Modification
The sequence files were saved from Nexus to Phylip.

The Nycticebus coutang sequence for TAS1R1 contained a stop codon at position 2512, which resulted in an error message in PAML. This stop codon and the bases following it were deleted, which were 12 total deleted bases including the stop codon.   

## ML Tree Modification
I copied the maximum likelihood tree and modified the formatting into a txt file consistent with PAML example files. 

The tree was labeled with foreground branches for each of the respective alternative hypotheses. There's incomplete lineage sorting, resulting in the gorilla sequence clustering with Pan then Homo. Both Homo and Pan species were listed as foreground species in the hominini test. 

## PAML Program
I edited the PAML (paml-4.10.7-macosx-X86_64.tgz) source code from MAXNSONS 3 to MAXNSONS 10 in order to accommodate for the polytomies in the ML for TAS1R1.
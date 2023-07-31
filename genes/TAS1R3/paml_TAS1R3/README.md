# PAML PREPARATION
## Sequence File Modification
The sequence files were saved from Nexus to Phylip.

## ML Tree Modification
The tree was labeled with foreground branches for each of the respective alternative hypotheses. 

## PAML Program
I edited the PAML (paml-4.10.7-macosx-X86_64.tgz) source code from MAXNSONS 3 to MAXNSONS 10 in order to accommodate for the polytomies in the ML for TAS1R1. While there were not polytomies in the ML tree for TAS1R3, the TAS1R3 was run on the modified PAML program. 

Error 1: Bad option 'O' in first line of seqfile
This was fixed by switching the file from Legacy Mac (CR) to Windows (CRLF). 
# This is an iterative script to generate PAUP phylogenies 
# on University of Iowa's Computing Cluster. Note that 
# the directories provided are created from the Argon 
# directory--not this project directory 

paup_command <- "./paup4a168_ubuntu64"
files <- c("trimmed_dna_aligned_combined_TAS1R1.nex",
           "trimmed_dna_aligned_combined_TAS1R3.nex",
           "altered_dna_aligned_combined_TAS1R3.nex",
           "selected_removal_dna_aligned_combined_TAS1R1.nex",
           "selected_removal_dna_aligned_combined_TAS1R3.nex")

for (file in files) {
  system2(command = paup_command, args = c("-n", "-f", file))
}

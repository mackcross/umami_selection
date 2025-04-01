# This is an iterative script to generate PAUP phylogenies 
# on University of Iowa's Computing Cluster. Note that 
# the directories provided are created from the Argon 
# directory--not this project directory 

paup_directory <- "~/Documents/sw"
paup_directory <- path.expand(paup_directory)
setwd(paup_directory)

paup_command <- "./paup4a168_osx"
file_paths <- c("~/Desktop/model_test_trimmed_dna_aligned_combined_TAS1R1.nex",
                "~/Desktop/model_test_trimmed_dna_aligned_combined_TAS1R3.nex")

for (file_path in file_paths) {
  system2(command = paup_command, args = c("-n", "-f", file_path))
}

# This is an iterative script to generate PAML results on University of Iowa's Computing Cluster. Note that 
# the directories provided are created from the Argon directory--not this project directory 

# After putting PAML software into path environment, this will start codeml in any directory
hyphy_command <- "/Users/mackcross/Documents/sw/hyphy/hyphy"

directories <- c("hyphy_selected_removal_alignments_TAS1R1/",
                 "hyphy_trimmed_alignments_TAS1R1/")

for (directory in directories) {
  setwd(directory)
  system2(command = hyphy_command)
}


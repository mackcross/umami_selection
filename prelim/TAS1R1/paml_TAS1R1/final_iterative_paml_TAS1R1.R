# After putting PAML software into path environment, this will start codeml in any directory
paml_command <- "/Users/mackcross/Documents/sw/paml-4.10.7/bin/codeml"
primary_directory <- getwd()

directories <- c("../paml_TAS1R1/paml_selected_removal_alignments_TAS1R1/paml_alt_apes_selected_removal_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_selected_removal_alignments_TAS1R1/paml_alt_homininae_selected_removal_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_selected_removal_alignments_TAS1R1/paml_alt_hominini_selected_removal_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_selected_removal_alignments_TAS1R1/paml_alt_homo_selected_removal_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_selected_removal_alignments_TAS1R1/paml_null_selected_removal_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_trimmed_alignments_TAS1R1/paml_alt_apes_trimmed_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_trimmed_alignments_TAS1R1/paml_alt_homininae_trimmed_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_trimmed_alignments_TAS1R1/paml_alt_hominini_trimmed_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_trimmed_alignments_TAS1R1/paml_alt_homo_trimmed_alignments_TAS1R1/",
                 "../paml_TAS1R1/paml_trimmed_alignments_TAS1R1/paml_null_trimmed_alignments_TAS1R1/")

for (directory in directories) {
  setwd(directory)
  system2(command = paml_command)
  setwd(primary_directory)
}



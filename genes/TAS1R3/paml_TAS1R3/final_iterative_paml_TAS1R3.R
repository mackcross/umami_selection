# After putting PAML software into path environment, this will start codeml in any directory
paml_command <- "/Users/mackcross/Documents/sw/paml-4.10.7/bin/codeml"
primary_directory <- getwd()

directories <- c("../paml_TAS1R3/paml_altered_alignments_TAS1R3/paml_alt_apes_altered_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_altered_alignments_TAS1R3/paml_alt_homininae_altered_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_altered_alignments_TAS1R3/paml_alt_hominini_altered_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_altered_alignments_TAS1R3/paml_alt_homo_altered_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_altered_alignments_TAS1R3/paml_null_altered_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_selected_removal_alignments_TAS1R3/paml_alt_apes_selected_removal_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_selected_removal_alignments_TAS1R3/paml_alt_homininae_selected_removal_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_selected_removal_alignments_TAS1R3/paml_alt_hominini_selected_removal_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_selected_removal_alignments_TAS1R3/paml_alt_homo_selected_removal_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_selected_removal_alignments_TAS1R3/paml_null_selected_removal_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_trimmed_alignments_TAS1R3/paml_alt_apes_trimmed_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_trimmed_alignments_TAS1R3/paml_alt_homininae_trimmed_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_trimmed_alignments_TAS1R3/paml_alt_hominini_trimmed_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_trimmed_alignments_TAS1R3/paml_alt_homo_trimmed_alignments_TAS1R3/",
                 "../paml_TAS1R3/paml_trimmed_alignments_TAS1R3/paml_null_trimmed_alignments_TAS1R3/")

for (directory in directories) {
  setwd(directory)
  system2(command = paml_command)
  setwd(primary_directory)
}


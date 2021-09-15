#-#-#-#-#-#-#-#-#-#-#-#-#-#
# 010. Workspace----------
#
# Loading required packages and setting the workspace
#-#-#-#-#-#-#-#-#-#-#-#-#-#

# loading the "pacman" package for loading (p_load) packages and installing them,
## if they are not already installed
require(pacman)

# set the working directory in RStudio to the current file location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# loading required packages for using RStudio to analyze DNA
p_load(rDNA, statnet, GGally, ggnet, network, sna, ggplot2, dplyr)

# loading dna
dna_init()

# connection to DNA-file
conn <- dna_connection("dna_example_UKIraqWar2003.dna", verbose = FALSE)

# read and save node attributes 
organization <- dna_getAttributes(conn, variable = "organization")
person <- dna_getAttributes(conn, variable = "person")
concept <- dna_getAttributes(conn, variable = "concept")
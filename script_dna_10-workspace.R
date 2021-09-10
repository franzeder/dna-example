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
p_load(rDNA)


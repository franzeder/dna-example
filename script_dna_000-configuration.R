#-#-#-#-#-#-#-#-#-#-#-#-#-#
# 000. Configuration----------
#
# Installing required packages
#-#-#-#-#-#-#-#-#-#-#-#-#-#

# Please have a cose look at:
##' @book{Leifeld2019,
##'         address = {\url{https://github.com/leifeld/dna/releases/download/v2.0-beta.24/dna-manual.pdf}},
##'         author = {Leifeld, Philip and Gruber, Johannes and Bossner, Felix Rolf},
##'         publisher = {Github},
##'         title = {Discourse Network Analyzer Manual},
##'         year = {2019}}
## for all the details on the required packages to run DNA and rDNA. Use RStudio
## for replicating these scripts.


install.packages("rJava")

# package needed for installing R packages from Github
install.packages("remotes")

# installing rDNA package
remotes::install_github("leifeld/dna/rDNA@*release",
                        INSTALL_opts = "--no-multiarch")

# installing ggnet2 package
devtools::install_github("briatte/ggnet")

# package for loading R packages and installing them, if they are not already installed
install.packages("pacman")

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
p_load(rDNA, statnet, GGally, ggnet, network, sna, ggplot2)

# loading dna
dna_init()

# connection to DNA-file
conn <- dna_connection("dna_example_UKIraqWar2003.dna", verbose = FALSE)



source("script_dna_010-workspace.R")

# Affiliation network in 2002
## person x concept, substract-method and normalization, including duplicates
affil_2002 <- dna_network(conn,
                          networkType = "twomode",
                          statementType = "DNA Statement",
                          variable1 = "person",
                          variable2 = "concept",
                          qualifier = "agreement",
                          qualifierAggregation = "subtract",
                          normalization = "prominence",
                          duplicates = "include",
                          stop.date = "01.01.2003",
                          verbose = TRUE)

organization <- dna_getAttributes(conn, variable = "organization")
person <- dna_getAttributes(conn, variable = "person")
concept <- dna_getAttributes(conn, variable = "concept")

df <- t(affil_2002)

nw_2002 <- network(affil_2002, bipartite = TRUE)

colors <- as.character(t(affil_2002))
colors <- colors[colors != "0"]
colors[colors < 0] <- "red"
colors[colors != "red"] <- "#31a354"
set.edge.attribute(nw_2002, "color", colors)

ggnet2(nw_2002, size = "degree", alpha = 0.5,
       #edge.color = get.edge.attribute(nw_2002, "color"),
       size.min = 10,
       label = TRUE, legend.position = "none")

plot(nw_2002,
     edge.col = get.edge.attribute(nw_2002, "color"),
     vertex.col = c(rep("white", nrow(affil_2002)),
                    rep("black", ncol(affil_2002))),
     displaylabels = TRUE,
     label.cex = 0.5
)


# Affiliation network in 2003
## person x concept, substract-method and normalization, including duplicates
affil_2003 <- dna_network(conn,
                          networkType = "twomode",
                          statementType = "DNA Statement",
                          variable1 = "person",
                          variable2 = "concept",
                          qualifier = "agreement",
                          qualifierAggregation = "subtract",
                          normalization = "prominence",
                          duplicates = "include",
                          start.date = "01.01.2003",
                          verbose = TRUE)

nw_2003 <- network(affil_2003, bipartite = TRUE)

colors <- as.character(t(affil_2003))
colors <- colors[colors != "0"]
colors[colors < 0] <- "red"
colors[colors != "red"] <- "#31a354"
set.edge.attribute(nw_2003, "color", colors)

dev.new(width = 1280, height = 800, unit = "px")
plot(nw_2003,
     edge.col = get.edge.attribute(nw_2003, "color"),
     vertex.col = c(rep("white", nrow(affil_2003)),
                    rep("black", ncol(affil_2003))),
     displaylabels = TRUE,
     label.cex = 0.5
)

p_load(intergraph, network, igraph)
g <- asIgraph(nw_2003)



source("script_dna_010-workspace.R")

p_load(statnet)

# Overall congruence network
## person x concept, congruence-method, including duplicates
congruence <- dna_network(conn,
                          networkType = "onemode",
                          statementType = "DNA Statement",
                          variable1 = "person",
                          variable2 = "concept",
                          qualifier = "agreement",
                          qualifierAggregation = "congruence",
                          duplicates = "include")

nw <- network(congruence)
plot(nw,
     displaylabels = TRUE,
     label.cex = 0.5,
     usearrows = FALSE,
     edge.col = "gray"
)

# 2002 congruence network
## person x concept, congruence-method, including duplicates
congruence_2002 <- dna_network(conn,
                               networkType = "onemode",
                               statementType = "DNA Statement",
                               variable1 = "person",
                               variable2 = "concept",
                               qualifier = "agreement",
                               qualifierAggregation = "congruence",
                               stop.date = "31.12.2002",
                               duplicates = "include")

nw <- network(congruence_2002)
plot(nw,
     displaylabels = TRUE,
     label.cex = 0.5,
     usearrows = FALSE,
     edge.col = "gray"
)

# 2003 congruence network
## person x concept, congruence-method, including duplicates
congruence_2003 <- dna_network(conn,
                               networkType = "onemode",
                               statementType = "DNA Statement",
                               variable1 = "person",
                               variable2 = "concept",
                               qualifier = "agreement",
                               qualifierAggregation = "congruence",
                               start.date = "01.01.2003",
                               duplicates = "include")

nw <- network(congruence_2003)
plot(nw,
     displaylabels = TRUE,
     label.cex = 0.5,
     usearrows = FALSE,
     edge.col = "gray"
)

# barplot of concept agreement/disagreement
dna_barplot(conn,
            of = "concept",
            fontSize = 10,
            stop.date = "31.12.2002")

dna_barplot(conn,
            of = "concept",
            fontSize = 10,
            start.date = "01.01.2003")

concepts <- dna_getStatements(conn, 1)
concepts <- unique(concepts$concept)
concepts_war <- concepts[-9]

dna_barplot(conn,
            of = "organization",
            fontSize = 10,
            excludeValues = list("concept" = concepts_war))



source("script_dna_010-workspace.R")

p_load(statnet)

clust <- dna_cluster(conn)

clust <- dna_cluster(conn, duplicates = "include")
plot(clust)

dna_plotDendro(clust)

clust_centroid <- dna_cluster(conn,
                              clust.method = "centroid",
                              cutree.k = 2)
clust_edbe <- dna_cluster(conn,
                          clust.method = "edge_betweenness",
                          cutree.k = 2)
clust_leei <- dna_cluster(conn,
                          clust.method = "leading_eigen",
                          cutree.k = 2)

clust_walktrap <- dna_cluster(conn,
                              clust.method = "walktrap",
                              cutree.k = 2)

dna_plotDendro(clust_centroid, show_legend = FALSE, truncate = 25) +
        ggtitle("centroid")
dna_plotDendro(clust_edbe, show_legend = FALSE, truncate = 25)+
        ggtitle("edge_betweenness")
dna_plotDendro(clust_leei, show_legend = FALSE, truncate = 25)+
        ggtitle("leading_eigen")
dna_plotDendro(clust_walktrap, show_legend = FALSE, truncate = 25)+
        ggtitle("walktrap")

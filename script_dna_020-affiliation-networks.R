source("script_dna_010-workspace.R")

p_load(statnet)

# Overall affiliation network
## person x concept, substract-method and normalization, including duplicates
affil <- dna_network(conn,
                     networkType = "twomode",
                     statementType = "DNA Statement",
                     variable1 = "person",
                     variable2 = "concept",
                     qualifier = "agreement",
                     qualifierAggregation = "subtract",
                     normalization = "prominence",
                     duplicates = "include",
                     verbose = TRUE)

nw <- network(affil, bipartite = TRUE)

colors <- as.character(t(affil))
colors <- colors[colors != "0"]
colors[colors < 0] <- "red"
colors[colors != "red"] <- "#31a354"
set.edge.attribute(nw, "color", colors)
plot(nw,
     edge.col = get.edge.attribute(nw, "color"),
     vertex.col = c(rep("white", nrow(affil)),
                    rep("black", ncol(affil))),
     displaylabels = TRUE,
     label.cex = 0.5
)

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
                     stop.date = "31.12.2002",
                     verbose = TRUE)

nw <- network(affil_2002, bipartite = TRUE)

colors <- as.character(t(affil_2002))
colors <- colors[colors != "0"]
colors[colors < 0] <- "red"
colors[colors != "red"] <- "#31a354"
set.edge.attribute(nw, "color", colors)
plot(nw,
     edge.col = get.edge.attribute(nw, "color"),
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

nw <- network(affil_2003, bipartite = TRUE)

colors <- as.character(t(affil_2003))
colors <- colors[colors != "0"]
colors[colors < 0] <- "red"
colors[colors != "red"] <- "#31a354"
set.edge.attribute(nw, "color", colors)
plot(nw,
     edge.col = get.edge.attribute(nw, "color"),
     vertex.col = c(rep("white", nrow(affil_2003)),
                    rep("black", ncol(affil_2003))),
     displaylabels = TRUE,
     label.cex = 0.5
)


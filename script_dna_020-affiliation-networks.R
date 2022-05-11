source("script_dna_010-workspace.R")
concepts_2002 <- dna_barplot(conn, 
                             of = "concept", fontSize = 10, 
                             stop.date = "01.01.2003")
concepts_2003 <- dna_barplot(conn, 
                             of = "concept", fontSize = 10, 
                             start.date = "01.01.2003")

pdf(file = "fig_barplot_concepts_2002.pdf",
    width = 5,
    height = 6)
concepts_2002
dev.off()

pdf(file = "fig_barplot_concepts_2003.pdf",
    width = 5,
    height = 6)
concepts_2003
dev.off()

set.seed(19030023)

selection_person <- person %>% filter(frequency >9)
selection_person$value
exclusion_person <- person %>% filter(frequency < 10)

selection_concept <- c(1, 11, 12, 13)
concept$value[selection_concept]
exclusion_concept <- concept$value[-selection_concept]


# Affiliation network
## person x concept, substract-method and normalization, including duplicates
affil <- dna_network(conn,
                          networkType = "twomode",
                          statementType = "DNA Statement",
                          variable1 = "person",
                          variable2 = "concept",
                          qualifier = "agreement",
                          qualifierAggregation = "subtract",
                          normalization = "prominence",
                          duplicates = "document",
                          verbose = TRUE,
                     excludeValues = list(person = exclusion_person$value,
                                          concept = exclusion_concept))

x <- t(affil)
y <- selection_person %>% filter(value %in% colnames(x))

nw <- network(affil, bipartite = TRUE)

colors <- as.character(t(affil))
colors <- colors[colors != "0"]
colors[colors < 0] <- "gray85"
colors[colors != "gray85"] <- "black"
set.edge.attribute(nw, "color", colors)

pdf(file = "fig_network_affiliation.pdf",
    width = 8,
    height = 8)
plot(nw,
     edge.col = get.edge.attribute(nw, "color"),
     vertex.col = c(y$color,
                    rep("white", ncol(affil))),
     displaylabels = TRUE,
     label.cex = 0.5,
)
dev.off()



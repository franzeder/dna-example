source("script_dna_010-workspace.R")

set.seed(19030023)

selection_concept <- c(1, 11, 12, 13)
concept$value[selection_concept]
exclusion_concept <- concept$value[-selection_concept]

selection_person <- person %>% filter(frequency >5)
selection_person$value
exclusion_person <- person %>% filter(frequency < 6)

congruence_2002 <- dna_network(conn,
                    networkType = "onemode",
                    statementType = "DNA Statement",
                    variable1 = "person",
                    variable2 = "concept",
                    qualifier = "agreement",
                    qualifierAggregation = "congruence",
                    stop.date = "01.01.2003",
                    duplicates = "week",
                    excludeValues = list(person = exclusion_person$value,
                                         concept = exclusion_concept))

nw_2002 <- network(congruence_2002)

x <- t(congruence_2002)
y <- selection_person %>% filter(value %in% row.names(x))

pdf(file = "fig_network_congruence_2002.pdf",
    width = 8,
    height = 8)
plot(nw_2002,
     edge.lwd = congruence_2002,
     displaylabels = TRUE,
     label.cex = 0.5,
     usearrows = FALSE,
     edge.col = "gray85",
     vertex.col = y$color,
     label = y$value
     )
dev.off()

congruence_2003 <- dna_network(conn,
                               networkType = "onemode",
                               statementType = "DNA Statement",
                               variable1 = "person",
                               variable2 = "concept",
                               qualifier = "agreement",
                               qualifierAggregation = "congruence",
                               start.date = "01.01.2003",
                               duplicates = "week",
                               excludeValues = list(person = exclusion_person$value,
                                                    concept = exclusion_concept))

nw_2003 <- network(congruence_2003)

x <- t(congruence_2003)
y <- selection_person %>% filter(value %in% row.names(x))

pdf(file = "fig_network_congruence_2003.pdf",
    width = 8,
    height = 8)
plot(nw_2003,
     displaylabels = TRUE,
     label.cex = 0.5,
     usearrows = FALSE,
     edge.col = "gray85",
     vertex.col = y$color,
     label = y$value
     )
dev.off()




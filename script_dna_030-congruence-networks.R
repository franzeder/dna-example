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


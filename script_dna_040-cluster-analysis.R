source("script_dna_010-workspace.R")

selection <- c(1, 11, 12, 13)
concept$value[selection]
exclusion <- concept$value[-selection]


pdf(file = "fig_cluster_congruence_2002.pdf",
    width = 8,
    height = 8)
clust_2002 <- dna_cluster(conn,
                          stop.date = "01.01.2003",
                          clust.method = "edge_betweenness",
                          duplicates = "document",
                          excludeValues = list(concept = exclusion))

dna_plotDendro(clust_2002,
               show_legend = FALSE)
dev.off()

pdf(file = "fig_cluster_congruence_2003.pdf",
    width = 8,
    height = 8)
clust_2003 <- dna_cluster(conn,
                          #excludeValues = list(concept = exclusion),
                          start.date = "01.01.2003",
                          clust.method = "edge_betweenness",
                          duplicates = "document",
                          excludeValues = list(concept = exclusion))

dna_plotDendro(clust_2003,
               show_legend = FALSE)
dev.off()



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

Reproduction files for the chapter ‘Discourse Network Analysis’
================

# Abstract

This [R Markdown](http://rmarkdown.rstudio.com) Notebook is part of the
chapter ‘Discourse Network Anylsis’ in *The Routledge Handbook of
Foreign Policy Methods* (edited by Patrick A. Mello & Falk Ostermann).
It gives readers a more detailed discussion of DNA as a the method, the
coding-scheme, allows them access to the dataset and the script used for
analysis, and shows further graphs that are not used in the chapter, due
to page-limitation.

# DNA as a Method

Methodologically, DNA proceeds in two stages and uses a combination of
qualitative content analysis and social network analysis for grasping
the statements of actors and relating them to each other (Leifeld 2013,
169). The data basis for this analysis are texts from various sources
that are openly available. In the first stage, researchers look for
actors’ statements in these texts and annotate them using a
coding-scheme (Leifeld 2018, 304). Statements must be made public by
actors to be instrumental in a discourse (Leifeld 2018, 301). Hence, we
can refer to a variety of textual data, such as newspaper articles,
parliamentary speeches or testimonies, interviews, or position papers,
to search for statements. The final decision which text formats are the
most suitable for determining political claims depends on the discursive
arena we seek to investigate.

These texts are then annotated using a category-based coding-scheme. We
can either deductively or inductively (Bauer 2000; Schreier 2014)
develop these codes or combine both approaches. Deductively generated
codes are developed top-down, inspired by theoretical assumptions
researchers seek to verify. In contrast to that, inductively generated
codes are developed during the process of coding itself. Combining both
approaches is a common and promising procedure because it allows
scholars to do both test their theoretical assumptions and ensure at the
same time, that no categories are overlooked.

This coding-scheme is then used to code statements that are the basic
units of analysis in DNA. Statements are comprised of four variables
(Leifeld 2018, 304–5): actors, concepts, agreement, and time stamps. An
actor is any person or organization that speaks in a debate. Concepts
are political claims (henceforth claims) that either support or oppose
policies, policy instruments, or certain actions in a policy process
(see also Lapesa et al. (2020), 144). Agreement refers to the extent of
agreement or opposition of an actor towards a claim This variable can
either be dichotomous (i.e., agree – 1 or disagree – 0) or lie within a
certain range (e.g., from -5 to +5). Time stamp is a temporal variable
that specifies the date and time of a statement and allows the
construction of dynamic networks. So, for example, the statement of
Prime Minister Tony Blair ‘if Saddam \[Hussein, FE\] continues to fail
to co-operate, force should be used,’ is coded as follows: ‘T Blair’ (=
actor), ‘Cabinet’ (= organization), ‘22 – war’ (= claim), ‘yes’ (=
agreement), ‘18 March 2002’ (= time stamp).

Unlike Foucauldian discourse analysis that ultimately seeks to unveil
power relations, the overall aim of the second stage of DNA is to
transform the generated data (i.e., the sum of coded statements) into a
two-mode network (a bipartite graph), also known as an affiliation
network of actors (or organizations) and claims (for the mathematical
details of this transformation, see Leifeld, Gruber, and Bossner (2019))
that allows us to display the content, dynamic and drivers of political
debates. In this affiliation network (see figure 1), every actor
referring to a certain claim is displayed as an actor-node with an edge,
linking the actor to the specific claim-node. This graph then allows us
to gain insights into the content of the debate (the sum of claim-nodes)
and who carries these claims (the actor nodes) (Leifeld 2018, 306).

![Figure 1: Affiliation network with actors (a) agreeing to certain
claims (c). The edgeweights (displayed by the line width) provide
information about the extent of agreement towards
claims.](fig/fig1_affiliation-network-example.png)

In the next step, we are able to transform this two-mode affiliation
network into a one-mode congruence (or conflict) network of actors or
claims (see figure 2). This transformation assumes that networks are
“belief similarity networks of actors” (Leifeld 2013, 170) in the sense
that ‘the more concepts \[(i.e., claims), FE\] two actors agree (or both
disagree) on, the more similar they are in terms of preferences on
concepts in the discourse’ (Leifeld 2013, 174). Hence, actor congruence
networks are networks that link actors to each other by edges, whenever
these actors share the same claim by either both agreeing or both
disagreeing to it. Claim congruence networks, on the other hand, are
networks that display the edges between claims, whenever actors refer to
the same claim in the same direction (i.e., both agreeing or both
disagreeing). The same logic applies to conflict networks that display
actors or claims, where actors have different attitudes towards claims
(e.g., one actor agrees to a claim, the other one disagrees). One can of
course also combine both, concurrence and conflict networks, with the
subtraction mode, where agreements and disagreements are added up. So,
for example, when two actors agree to a claim two times, and one time
they disagree to the same claim, the overall value of agreement is +1.

![Figure 2a: Actor-congruence
network](fig/fig2a_congruence-network-example-a.png)

![Figure 2b: Claim-congruence
network](fig/fig2b_congruence-network-example-b.png)

So consequently, the more often actors refer to the same claim, the
larger the edge-weight between these actors become. Hence, the
edge-weight becomes a measurement of similarity in the discourse
(Leifeld 2013, 175). To cope with the fact that some actors in a debate
are supposed to speak more often than others (e.g., government officials
receive more space in newspaper articles than ordinary citizens), we
apply normalization (Leifeld 2013, 176; 2018, 310–13; Fisher and Leifeld
2019, 476) to control for this phenomenon by setting the mentioning of
claims by actors in relation to their overall possibilities to mention
claims in the first place.

The time stamp variable of statements is useful to display dynamic
networks (see figure 3). In this case, networks are drawn by grouping
statements into certain time periods (e.g., statements of the same day,
the same month, or the same year). “\[M\]odelling the development of
political debates as dynamic networks may enable us to identify
recurring mechanisms that drive the development of political debates”
(Haunss et al. 2020, 326). Hence, dynamic networks are essential tools
to understand the continuity and change of policies.

![Figure 3a: Dynamic affiliation network at
t\~0](fig/fig3a_dynamic-network-example-a.png)

![Figure 3b: Dynamic affiliation network at
t\~1](fig/fig3a_dynamic-network-example-a.png)

Finally, we can refer to various network measurements to better describe
the characteristics of the overall discourse network and the discourse
coalitions within it. Three of these measurements are especially helpful
in the context of DNA: density, centrality, and various community
detection algorithms. First, density describes the fraction of the
maximum number of possible edges between nodes that is present in a
network. By doing so, density gives an impression how connected nodes in
a network really are (Newman 2010, 134–35). The value for density ranges
between 0 (there are no edges in a network, so that not a single node is
linked to at least one other node) and 1 (the maximum number of edges is
present because every node is connected to every other node). Thereby,
density gives us information about the degree of interaction in a
network. The higher the number of nodes and edges between these nodes in
a network is, the more likely it is that a variety of claims and a
greater number of actors support these claims in a debate.

Second, centrality measures give answers to the question which nodes are
most important in a network, either because they have the most links to
other nodes (degree centrality), are connected to other important nodes
(eigenvector centrality), are closely linked to other nodes in terms of
distance (closeness centrality), or because they are strategically
situated between other nodes (betweenness centrality) and thereby have a
high social capital and hence power (Newman 2010, 168–93). These
measurements allow us to detect the central carriers of a debate. These
are the nodes that link different groups to each other and contribute to
the establishment of a solid majority for the continuity or the change
of an existing policy.

Third, community detection algorithms like modularity-maximization,
hierarchical clustering, or betweenness-approaches, are concepts that
group nodes into clusters or communities of like-minded nodes, because
they share a higher number of similarities than other nodes (Newman
2010, 357–58 and 371-391). These approaches, therefore, are the
preferred measurements to group actors into discourse coalitions and to
make them visible (see, for example, figure 4).

    (a) Network at t0   (b) Network at 1

Figure 4: Dynamic actor congruence network

To summarize this section, DNA proceeds in two steps. First, the
statements of actors are coded using qualitative content analysis and a
deductively and/or inductively developed coding-scheme. Second, these
statements are then used to build affiliation- and congruence-networks
that allow us to gain more insights into the content, dynamic, and
structure of the debate over time. By applying different sorts of
network measurements, we are able to describe the characteristics of,
and to detect powerful nodes in the network.

<!-- This is an [R Markdown](http://rmarkdown.rstudio.com) Notebook. When you execute code within the notebook, the results appear beneath the code.  -->
<!-- Try executing this chunk by clicking the *Run* button within the chunk or by placing your cursor inside it and pressing *Cmd+Shift+Enter*.  -->
<!-- ```{r} -->
<!-- plot(cars) -->
<!-- ``` -->
<!-- Add a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Cmd+Option+I*. -->
<!-- When you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Cmd+Shift+K* to preview the HTML file).  -->
<!-- The preview shows you a rendered HTML copy of the contents of the editor. Consequently, unlike *Knit*, *Preview* does not run any R code chunks. Instead, the output of the chunk when it was last run in the editor is displayed. -->

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Bauer2000" class="csl-entry">

Bauer, Martin W. 2000. “Classical Content Analysis: A Review.” In
*Qualitative Researching with Text, Image and Sound: A Pratical
Handbook*, edited by Martin W. Bauer and George Gaskell, 131–51. Los
Angeles, CA et al.: SAGE.

</div>

<div id="ref-Fisher2019" class="csl-entry">

Fisher, Dana R., and Philip Leifeld. 2019. “The Polycentricity of
Climate Policy Blockage.” *Climatic Change* 155 (4): 469–87.
<https://doi.org/10.1007/s10584-019-02481-y>.

</div>

<div id="ref-Haunss2020" class="csl-entry">

Haunss, Sebastian, Jonas Kuhn, Sebastian Padó, Andre Blessing, Nico
Blokker, Erenay Dayanik, and Gabriella Lapesa. 2020. “Integrating Manual
and Automatic Annotation for the Creation of Discourse Network Data
Sets.” *Politics and Governance* 8 (2): 326–39.
<https://doi.org/10.17645/pag.v8i2.2591>.

</div>

<div id="ref-Lapesa2020" class="csl-entry">

Lapesa, Gabriella, Andre Blessing, Nico Blokker, Erenay Dayanik,
Sebastian Haunss, Jonas Kuhn, and Sebastian Padó. 2020. “Analysis of
Political Debates Through Newspaper Reports: Methods and Outcomes.”
*Datenbank Spektrum* 20 (2): 143–53.
<https://doi.org/10.1007/s13222-020-00344-w>.

</div>

<div id="ref-Leifeld2013" class="csl-entry">

Leifeld, Philip. 2013. “Reconceptualizing Major Policy Change in the
Advocacy Coalition Framework: A Discourse Network Analysis of German
Pension Politics.” *The Policy Studies Journal* 41 (1): 169–98.
<https://doi.org/10.1111/psj.12007>.

</div>

<div id="ref-Leifeld2018" class="csl-entry">

———. 2018. “Discourse Network Analysis: Policy Debates as Dynamic
Networks.” In *The Oxford Handbook of Political Networks*, edited by
Jenniger Nicoll Victor, Alexander H. Montgomery, and Mark Lubell,
301–25. Oxford: Oxford University Press.

</div>

<div id="ref-Leifeld2019" class="csl-entry">

Leifeld, Philip, Johannes Gruber, and Felix Rolf Bossner. 2019.
*Discourse Network Analyzer Manual*.
<https://github.com/leifeld/dna/releases/download/v2.0-beta.24/dna-manual.pdf>:
Github.

</div>

<div id="ref-Newman2010" class="csl-entry">

Newman, M. E. J. 2010. *Networks: An Introduction*. Oxford: Oxford
University Press.

</div>

<div id="ref-Schreier2014" class="csl-entry">

Schreier, Margit. 2014. “Qualitative Content Analysis.” In *The SAGE
Handbook of Qualitative Data Analysis*, edited by Uwe Flick, 170–83.
London: SAGE.

</div>

</div>

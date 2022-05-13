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

# Data, Coding-Scheme and Coding

As discussed in the chapter, DNA proceeds in two stages and uses a
combination of qualitative content analysis and social network analysis
for grasping the statements of actors and relating them to each other
(Leifeld 2013, 169). A series of 13 debates in the British House of
Commons from 16 April 2002 trough 18 March 2003 provide the data for
analysing the reasons for the United Kingdom’s participation in the Iraq
War 2003. The dataset is available as an annotated DNA-file
[here](https://github.com/franzeder/dna-example/blob/main/dna_example_UKIraqWar2003.dna).

In the first stage, a category-based coding-scheme is needed, to
annotate this dataset. We can either deductively or inductively (Bauer
2000; Schreier 2014) develop such a scheme or combine both approaches.
Deductively generated codes are developed top-down, inspired by
theoretical assumptions researchers seek to verify. In contrast to that,
inductively generated codes are developed during the process of coding
itself. Combining both approaches is a common and promising procedure
because it allows scholars to do both test their theoretical assumptions
and ensure at the same time, that no categories are overlooked.

For this case study I combined both approaches. Following the secondary
literature (deductive approach) and a close reading of the debates
(inductive approach), I defined 22 claims and grouped these claims into
three different storylines that dominated the overall discourse. These
storyliens are (1) the nature of the Iraqi threat, (2) the policies to
address these threats, and (3) the overall goals of the UK’s policy
towards Iraq and the Middle East. In the first **threat storyline**,
decision-makers feverishly argued whether Iraq and the regime of Saddam
Hussein posed and imminent threat to the UK (Bluth 2004, 871), an
overall threat to the world (Hoggett 2005, 423), or only a threat to the
Middle East.

Furthermore, the actors disagreed whether this threat emanated from the
possible possession and use of weapons of mass destruction (WMD), Iraq’s
supposed link to international terrorism, or its ballistic missile
programme (Bluth 2004, 884; Kennedy-Pipe and Vickers 2007, 211). Another
claim that MPs raised in their contribution was the humanitarian issue
(Hoggett 2005, 418; Kennedy-Pipe and Vickers 2007, 211) and the threat
of Saddam Hussein to his own people (Bluth 2004, 884). Finally, speakers
warned of the threat to the international order if Iraq did not obey to
the United Nations (UN) Security Council resolutions (Bluth 2004, 871),
and feared the consequence of unilateralism, should the United States
decide to go alone (Bluth 2004, 875).

Based on this threat storyline, MPs introduced a second **policy-means
storyline**, presenting their policy preference to tackle these threats.
In this storyline they either proposed regime change, the use of force,
containment and deterrence, arms inspections, disarmament, sanctions,
the threat of force, diplomacy or the involvement of the United Nations
(Security Council), or a combination of these claims, to address the
challenges.

Finally, decision-makers presented in the **policy-goals storyline** the
overall aims the UK sought to achieve. That is to uphold a close
alliance with the United States \[Doig and Phythian (2005), 369;
Kennedy-Pipe2007, 209\], to reintegrate Iraq into the international
community, to democratize the country, and to stabilize the whole
region.

The final coding scheme looks as follows:

#### Threat Storyline

-   01 - imminent (i.e., Iraq/Hussein poses an imminent threat to the
    UK)
-   02 - overall (i.e., Iraq/Hussen poses a threat to the world)
-   03 - region (i.e., Iraq/Hussein poses a threat to the Middle East)
-   04 - WMD (i.e., Iraq/Hussein poses a threat because of weapons of
    mass destruction)
-   05 - terrorism (i.e., Iraq/Hussein poses a threat because of links
    to (transnational) terrorism)
-   06 - missiles (i.e., Iraq/Hussein poses a threat because of
    ballistic missiles)
-   07 - humanitarian (i.e., Iraq/Hussein poses a humanitarian threat to
    its people)
-   08 - international order (i.e., Iraq/Hussein poses a threat to the
    international order)
-   09 - unilateralism (i.e., Iraq/Hussein could further unilateral
    tendencies in the U.S.)

#### Policy-Means Storyline

-   21 - regime change (i.e., the problem can only be solved by
    toppling S. Hussein)
-   22 - war (i.e., the problem can only be solved by going to war with
    Iraq)
-   23 - containment/deterrence (i.e., containment and/or deterrence are
    useful to solve the problem)
-   24 - inspections (i.e., inspections are useful to solve the problem)
-   25 - disarmament (i.e., disarmament is useful to solve the problem)
-   26 - sanctions (i.e., sanctions are useful to solve the problem)
-   27 - all options (i.e., UK must consider all possible options (also
    war))
-   28 - negotiations (i.e., negotiations can solve the problem)
-   29 - United Nations (i.e., the United Nations can help to solve the
    problem)

#### Policy-Goals Storyline

-   31 - alliance (i.e., UK seeks to strengthen the international
    alliance)
-   32 - reintegration (i.e., UK seeks to reintegrate Iraq into the
    international community)
-   33 - democracy (i.e., UK seeks to foster democracy in Iraq)
-   34 - stabilization (i.e., UK seeks to stabilize the Middle East)

I then applied this coding scheme to code statements (i.e., claims) in
the debates. Statements are comprised of four variables (Leifeld 2018,
304–5): actors, organizations, concepts, agreement, and time stamps. An
actor is any person or entity that speaks in a debate and that belongs
to a certain organization. Concepts are political claims (henceforth
claims) that either support or oppose policies, policy instruments, or
certain actions in a policy process (see also Lapesa et al. (2020),
144). Agreement refers to the extent of agreement or opposition of an
actor towards a claim This variable can either be dichotomous (i.e.,
agree – 1 or disagree – 0) or lie within a certain range (e.g., from -5
to +5). Time stamp is a temporal variable that specifies the date and
time of a statement and allows the construction of dynamic networks.

I will demonstrate the application of the coding-scheme with the
following two claims made by Prime Minister Tony Blair in a debate on
18<sup>th</sup> March 2003.

> “Iraq continues to deny that it has any weapons of mass destruction,
> although no serious intelligence service anywhere in the world
> believes it.” (Tony Blair, 18<sup>th</sup> March 2003, c760)

In this passage, Blair argues that Iraq is definitely in possession of
weapons of mass destruction. He refers to the threat story-line and
agrees to the claim “04 - WMD.” Hence, I coded this statement as
follows: “T Blair” (**actor**), “Cabinet” (**organization**), “04 - WMD”
(**concept**), “yes” (**agreement**), “18.05.2003” (**time stamp**).

> “All we are asking for in the second resolution is the clear ultimatum
> that if Saddam continues to fail to co-operate, force should be used.”
> (Tony Blair, 18<sup>th</sup> March 2003, c767)

In this second example from the same debate, Prime Minister Blair calls
for war as means to tackle the threat posed by Saddam Hussein. Hence, I
coded this statement as follows: “T Blair” (**actor**), “Cabinet”
(**organization**), “22 - war” (**concept**), “yes” (**agreement**),
“18.05.2003” (**time stamp**).

In total, I used the 22 claims to code 1,166 statements of 161 persons
(i.e., Members of Parliament), from nine organizations (i.e., parties in
the House of Commons and the Cabinet).

# Network Analysis

After coding the dataset, we then transform the generated data (i.e.,
the sum of coded statements) into a two-mode network (a bipartite
graph), also known as an affiliation network of actors (or
organizations) and claims (for the mathematical details of this
transformation, see Leifeld, Gruber, and Bossner (2019)) that allows us
to display the content, dynamic and drivers of political debates.

# Bibliography

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Bauer2000" class="csl-entry">

Bauer, Martin W. 2000. “Classical Content Analysis: A Review.” In
*Qualitative Researching with Text, Image and Sound: A Pratical
Handbook*, edited by Martin W. Bauer and George Gaskell, 131–51. Los
Angeles, CA et al.: SAGE.

</div>

<div id="ref-Bluth2004" class="csl-entry">

Bluth, Christoph. 2004. “The British Roard to War: Blair, Bush and the
Decision to Invade Iraq.” *International Affairs* 80 (5): 871–92.
<https://doi.org/10.1111/j.1468-2346.2004.00423.x>.

</div>

<div id="ref-Doig2005" class="csl-entry">

Doig, Alan, and Mark Phythian. 2005. “The National Interest and the
Politics of Threat Exaggeration: The Blair Government’s Case for War
Against Iraq.” *The Political Quarterly* 76 (3): 368–76.
<https://doi.org/10.1111/j.1467-923X.2005.00695.x>.

</div>

<div id="ref-Hoggett2005" class="csl-entry">

Hoggett, Paul. 2005. “Iraq: Blair’s Mission Impossible.” *British
Journal of Politics and International Relations* 7 (3): 418–28.
<https://doi.org/10.1111/j.1467-856X.2005.00195.x>.

</div>

<div id="ref-Kennedy-Pipe2007" class="csl-entry">

Kennedy-Pipe, Caroline, and Rhiannon Vickers. 2007. “‘Blowback’ for
Britain?: Blair, Bush, and the War in Iraq.” *Review of International
Studies* 33 (2): 205–21. <https://doi.org/10.1017/S0260210507007474>.

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

<div id="ref-Schreier2014" class="csl-entry">

Schreier, Margit. 2014. “Qualitative Content Analysis.” In *The SAGE
Handbook of Qualitative Data Analysis*, edited by Uwe Flick, 170–83.
London: SAGE.

</div>

</div>

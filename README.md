# Master-thesis

data.zip = raw data with 3 columns (Von, An, Date)

core_team_data.R = Skript to extract raw data only for the core team (because for others no subproject assigned)

0_Start = Skript to load raw data

1_LoadData = Skript to prepare raw data

6_1_NodeLevel = Skript for descriptive analysis on node level (Assortativity, Transitivity, Density, Reciprocity, Average Path length, Diameter

6_1_Centrality = Skript for centrality measures (degree, betweenness, closeness)

6_1_Communities = Skript for community detection (louvain, label propagation, walktrap)

6_1_core_team_data  = Skript to split up data into C-C (communication only between core team members), C-SG (communication between a core team member and a site-group member), SG-SG (communication only between site-group members) 

6_1_Comparison_coreteam_sitegroup = Compare Date between the 3 groups (C-C, C-SG, SG-SG) 

6_2_Split_timescale = Split data according to dynsnap results (and additionally every 4 weeks to see the differences)

Output timescale = Output from algorithm which determins at which time a snapshop of the temporal network should be made & Skript to get this output

PDFs = timescale paper (Detection of timescales in evolving complex networks), second-order networks (Higher Order Aggregate Networks in the Analysis of temporal networks), why louvain algorithm for community detection (Fast unfolding of communities in large networks & A comparative analysis of community detection algorithms on artificial networks), Quantifizieren von Modularität (A network perspective on software modularity)

Overview Excel = Excel with all the calculations in R to compare the results

AssignBGtoCommunity = Skript to assign every site-group member to the community with wich members it has the most interactions

test.csv =  table with nodes used in the AssignBGtoCommunity.R file

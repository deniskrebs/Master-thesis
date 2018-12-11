
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./0_Start.R")        ################ Skip if not complete data (IF C-C, C-SG, SG-SG, ...) ###########################
source("./1_LoadData.R") 


#################COMMUNITY DETECTION
##louvain - works only with undirected graphs
# each vertex is moved to the community with which it achieves the highest contribution to modularity. 
# When no vertices can be reassigned, each community is considered a vertex on its own, 
# and the process starts again with the merged communities
louvain <- multilevel.community(g.un)
louvain_simp <- multilevel.community(g.simp.un)
V(g.simp)$memb <- louvain$membership
pdf("./R_Output/6.1/communities_louvain_graph_g.simp.un.pdf", width=100, height=100)
plot(louvain, g.simp.un, 
     vertex.size=1, 
     vertex.color=rainbow(3, alpha=0.6)[nodes$r1.type],
     vertex.label.color = "black", # change color of labels
     edge.arrow.size=0.01,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size
dev.off()

##walktrap
walktrap <- walktrap.community(g.un)
walktrap_simp <- walktrap.community(g.simp.un)
plot_dendrogram(walktrap)
pdf("./R_Output/6.1/communities_walktrap_graph_g.simp.un.pdf", width=100, height=100)
plot(walktrap, g.simp.un,
     vertex.size=1, 
     vertex.color=rainbow(3, alpha=0.6)[nodes$r1.type],
     vertex.label.color = "black", # change color of labels
     edge.arrow.size=0.01,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size
dev.off()

##label propagation
labelpropagation <- label.propagation.community(g.un)
labelpropagation_simp <- label.propagation.community(g.simp.un)
plot_dendrogram(labelpropagation)
pdf("./R_Output/6.1/communities_labelpropagation_graph_g.simp.un.pdf", width=100, height=100)
plot(labelpropagation, g.simp.un, 
     vertex.size=1, 
     vertex.color=rainbow(3, alpha=0.6)[nodes$r1.type],
     vertex.label.color = "black", # change color of labels
     edge.arrow.size=0.01,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size
dev.off()

###INTERPRETATION
# Modularity spricht für Louvain
# Louvain ist sehr effizient
# cluster sizes are reasonable for louvain
# Paper1: "Fast unfolding of communities in large networks" (Vincent Blondel)
# Paper2: "A comparative analysis of community detection algorithms on artificial networks" (CJT)
# Show that similar output?
# not simple graphs, because more arguments for community detection if "weights"

###COMPARISON
sizes(louvain)
sizes(louvain_simp)
sizes(walktrap)
sizes(walktrap_simp)
sizes(labelpropagation)
sizes(labelpropagation_simp)

modularity(louvain)
modularity(louvain_simp)
modularity(walktrap)
modularity(walktrap_simp)
modularity(labelpropagation)
modularity(labelpropagation_simp)




# compare to "ground truth" (only core team, because site-group members have no subproject assigned)
# assess the distance between two community structures
#core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type", "sp1.type", "r1.type")]
#mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
#setnames(mem, c("ID", "louvain")) 
#final <- merge(mem, core_team, by = "ID")
#compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
#compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
#compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

# INTERPRETATION
# comparison to "ground truth" not reliable because real ground truth can not be easily detected by sp1.type, r1.type or 
# company.type. There should be a better classification of nodes than these 3
# Hypothesis 1 (more communication within subprojects than between) falsified (according to Assistent Zhao)
# louvain because it maximizes modularity (means less communication between communities than within)





# Assign every site-group member to the subproject with whichs members they communicate the most
source("./6_1_assignBGtoCommunity.R")


# compare louvain communities with new sp1.type (every node assigned to a subproject)
team <- ee[ee$degree > 0, c("ID", "company.type", "sp1.type", "r1.type")]
mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role



# compare walktrap communities with new sp1.type (every node assigned to a subproject)
mem <- data.table(cbind(names(membership(walktrap)), membership(walktrap)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role


# compare labelpropagation communities with new sp1.type (every node assigned to a subproject)
mem <- data.table(cbind(names(membership(labelpropagation)), membership(labelpropagation)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role
# assess the distance between two community structures





# Hypothesis 3:
# Lack of information for site groups about other subprojects
# louvain communities should fit better to subprojecs for site group members than for core team members

# fit for site group members:
# compare to "ground truth" to louvain communities for core team
BG_team <- cc[cc$r1.type == 1, c("ID", "company.type", "sp1.type", "r1.type")]
mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
# True, less communication to other subprojects than within
# Attention: A bit logical, because we assigned the BG-Nodes to the subprojects with which they are communicating the most
compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role


# fit for core team members:
core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type", "sp1.type", "r1.type")]
mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role


# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 


#################COMMUNITY DETECTION
##louvain - works only with undirected graphs
# each vertex is moved to the community with which it achieves the highest contribution to modularity. 
# When no vertices can be reassigned, each community is considered a vertex on its own, 
# and the process starts again with the merged communities
louvain <- multilevel.community(g.un)
louvain_simp <- multilevel.community(g.simp.un)
sizes(louvain)
sizes(louvain_simp)

V(g.simp)$memb <- louvain$membership

pdf("plot_communities_louvain.pdf", width=100, height=100)
plot(louvain, g.simp, 
     vertex.size=1, 
     vertex.color=rainbow(3, alpha=0.6)[nodes$r1.type],
     vertex.label.color = "black", # change color of labels
     edge.arrow.size=0.01,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size
dev.off()

##walktrap
walktrap <- walktrap.community(g)
walktrap_simp <- walktrap.community(g.simp)
plot_dendrogram(walktrap)
plot(walktrap, g.simp,
     vertex.size=1, 
     vertex.color=rainbow(3, alpha=0.6)[nodes$r1.type],
     vertex.label.color = "black", # change color of labels
     edge.arrow.size=0.01,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size

##label propagation
labelpropagation <- label.propagation.community(g.un)
labelpropagation_simp <- label.propagation.community(g.simp.un)
plot(labelpropagation, g.simp, 
     vertex.size=1, 
     vertex.color=rainbow(3, alpha=0.6)[nodes$r1.type],
     vertex.label.color = "black", # change color of labels
     edge.arrow.size=0.01,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size
plot_dendrogram(labelpropagation)

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
sizes(labelpropagation)
sizes(walktrap)
sizes(louvain_simp)
sizes(walktrap_simp)
sizes(labelpropagation_simp)

modularity(labelpropagation)
modularity(labelpropagation_simp)
modularity(walktrap)
modularity(walktrap_simp)
modularity(louvain)
modularity(louvain_simp)


# compare to "ground truth"
# assess the distance between two community structures
core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type", "sp1.type", "r1.type")]
mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

#INTERPRETATION
# comparison to "ground truth" not reliable because real ground truth can not be easily detected by sp1.type, r1.type or 
# company.type. There should be a better classification of nodes than these 3
# Hypothesis 1 (more communication within subprojects than between) falsified (according to Assistent Zhao)

#andere "ground truth"
#new_gt <- select(nodes, ID, sp1.type, segment)
#unique <- select(new_gt, -ID)
#count(unique) 

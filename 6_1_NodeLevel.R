
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 


################## NODE LEVEL - DISCRIPTIVE

################## CONNECTED COMPONENTS
components(g, mode = "strong")  # 578 nodes (97%) are strongly connected (respect the direction)
components(g, mode = "weak")  # All nodes are weakly connected (disregarding the direction)
################## REACHABILITY
#reach <- reachability(g)
igraph::is.connected(g.un, mode = "strong")
igraph::is.connected(g, mode = "strong")


################## RECIPROCITY = MUTUALITY
#likelihood of vertices in a directed network to be mutually linked
#estimation the error introduced when a directed network is treated as undirected 
#probability that the opposite counterpart of a directed edge is also included in the graph
reciprocity(g, ignore.loops = TRUE)  # if one person sends a mail to another, the chances are 76% that this other person also sent a mail to him/her
reciprocity(g.simp, ignore.loops = TRUE)  # why not the same as for g? (Simplify removed multiple edges, but doesn't it leave one edge remaining)
#mutual links facilitate the transportation process
#do mutual links occur more or less often than expected by chance
# --> as expected: most connections are reciprocal




# FROM HERE EVERYTHING WITH UNDIRECTED:
# 1. Louvain only with undirected network
# 2. Reciprocity high (0.76) --> don't loose much information
# 3. Mainly interessted in who has contact with who and not who sends / receives mails to / from who




################## TRANSITIVITY = CLUSTERING COEFFICIENT
# probability that adjacent vertices are connected - Probability that a friend of my friend is a friend of mine as well
transitivity(g.un) #global: 38.6% chance (high) that people who share a node who they are communicated with have also communicated directly with each other
transitivity(g.un, type = "average") #average of local: 0.584 (WHY DIFFERENT FROM GLOBAL?)


################## DENSITY
# portion of potential connections
graph.density(g.un)  # 11.3% of the possible activity takes place if not accounting for direction
graph.density(g.simp.un)  #Why not the same as g.un?


################## ASSORTATIVITY
# do high degree nodes mostly interact with other high degree nodes
#correlation between nodes of similar degree, while negative values indicate relationships between nodes of different degree
assortativity(g.un, types1 = nodes$ID)  # people who are touching a lot of mails tend to interact with people also touching a lot of mails
assortativity(g.simp.un, types1 = nodes$ID)  # people who have conntact with many people tend to have contact with people who know a lot of people
#assortativity(g.simp, types1 = nodes$ID , directed = FALSE)  #why not the same as g.simp.un?


################## PATHLENGTH
###average path length = mean distance
average.path.length(g.un)  # on average you need two nodes to reach any other person from the network (2 (not 6 like worldwide) degrees of separation)

###Distance Histogram
paths_undir = distance_table(g.un)$res
names(paths_undir) = 1:length(paths_undir)
pdf("./R_Output/cache/distance_barplot_g.un.pdf")
barplot(paths_undir / sum(paths_undir), xlab="Distance (undirected)", ylab="Frequency")
dev.off()
###Diameter: 
#longest path between two nodes (size of network)
diameter(g.un)  # the two nodes the farest appart are separated by 4 nodes
#which two edges are the farest apart
get_diameter(g.un, weights=NA)
# highlight the diameter
d = get_diameter(g.simp.un)
E(g.simp.un)$color = "grey"
E(g.simp.un)$width = 1
E(g.simp.un, path=d)$color = "red"
E(g.simp.un, path=d)$width = 2
V(g.simp.un)$color  = "white"
V(g.simp.un)[d]$color = "red"
pdf("./R_Output/cache/diameter_g.simp.un.pdf")
plot(g.simp.un, vertex.label = NA, vertex.size=1, edge.curved=.25, edge.arrow.size=0.01)
dev.off()


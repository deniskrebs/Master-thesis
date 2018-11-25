
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


################## TRANSITIVITY = CLUSTERING COEFFICIENT
# probability that adjacent vertices are connected - Probability that a friend of my friend is a friend of mine as well
transitivity(g) #global: 38.6% chance (high) that people who share a node who they are communicated with have also communicated directly with each other
transitivity(g, type = "average") #average of local: 0.584 (WHY DIFFERENT FROM GLOBAL?)

################## DENSITY
# portion of potential connections
graph.density(g) # 5.7% of the possible activity takes place
graph.density(g.un)  # 11.3% of the possible activity takes place if not accounting for direction

#Why not the same?? (auch bei anderen measures e.g. reciprocity and centrality measures)
graph.density(g.simp)
graph.density(simplify(g))


################## ASSORTATIVITY
# do high degree nodes mostly interact with other high degree nodes
#correlation between nodes of similar degree, while negative values indicate relationships between nodes of different degree
assortativity(g, types1 = nodes$ID , directed = TRUE)  # people who send/receive a lot of mails tend to send/receive them from people also send/receive a lot of mails
assortativity(g, types1 = nodes$ID , directed = FALSE)  # people who are touching a lot of mails tend to interact with people also touching a lot of mails
assortativity(g.simp, types1 = nodes$ID , directed = TRUE)  # who talk/listen to many different people tend to have contact to people who talk/listen to many people
assortativity(g.simp, types1 = nodes$ID , directed = FALSE)  # people who have conntact with many people tend to have contact with people who know a lot of people


################## RECIPROCITY = MUTUALITY
#likelihood of vertices in a directed network to be mutually linked
#estimation the error introduced when a directed network is treated as undirected 
reciprocity(g, ignore.loops = TRUE)  # if one person sends a mail to another, the chances are 76% that this other person also sent a mail to him/her
reciprocity(simplify(g), ignore.loops = TRUE, mode = "ratio")
#mutual links facilitate the transportation process
#do mutual links occur more or less often than expected by chance
# --> as expected: most connections are reciprocal


################## PATHLENGTH
###average path length = mean distance
average.path.length(g)  # on average you need two nodes to reach any other person from the network (2 (not 6 like worldwide) degrees of separation)
mean_distance(g, directed=FALSE)

###Distance Histogram
paths_dir = distance_table(g)$res
names(paths_dir) = 1:length(paths_dir)
barplot(paths_dir / sum(paths_dir), xlab="Distance (directed)", ylab="Frequency")
dist <- distances(g)
density(dist)
plot(density(dist))
paths_undir = distance_table(g.un)$res
names(paths_undir) = 1:length(paths_undir)
barplot(paths_undir / sum(paths_undir), xlab="Distance (undirected)", ylab="Frequency")
###Diameter: 
#longest path between two nodes (size of network)
diameter(g, directed=TRUE)  # the two nodes the farest appart are separated by 4 nodes
#which two edges are the farest apart
get_diameter(g, directed=FALSE, weights=NA)
get_diameter(g, directed=TRUE, weights=NA)
# highlight the diameter
d = get_diameter(g.simp)
E(g.simp)$color = "grey"
E(g.simp)$width = 1
E(g.simp, path=d)$color = "red"
E(g.simp, path=d)$width = 2
V(g.simp)$color  = "white"
V(g.simp)[d]$color = "red"
plot(g.simp, vertex.label = NA, vertex.size=1, edge.curved=.25, edge.arrow.size=0.01)

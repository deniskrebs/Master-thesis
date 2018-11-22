
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 



################## NODE LEVEL - DISCRIPTIVE
################## TRANSITIVITY
# probability that adjacent vertices are connected = clustering  coefficient
transitivity(g) #global
transitivity(g.un)
transitivity(g, type = "average") #average of transitivity(graph, type = "local")

################## DENSITY
# portion of potential connections
graph.density(g.simp) # 
edge_density(g, loops = FALSE)

################## ASSORTATIVITY
# do high degree nodes mostly interact with other high degree nodes
assortativity(g, types1 = nodes$ID , directed = TRUE)

################## RECIPROCITY = MUTUALITY
#likelihood of vertices in a directed network to be mutually linked
#estimation the error introduced when a directed network is treated as undirected 
reciprocity(g, ignore.loops = TRUE)
reciprocity(g.simp, ignore.loops = TRUE)
reciprocity(g, ignore.loops = TRUE, mode = "ratio")
reciprocity(g.simp, ignore.loops = TRUE, mode = "ratio")
#mutual links facilitate the transportation process
#The useful information from reciprocity is not the value itself, but whether mutual links occur more or less often than expected by chance
# --> as expected: most connections are reciprocal

################## REACHABILITY
#reach <- reachability(g)
igraph::is.connected(g.un, mode = "strong")
igraph::is.connected(g, mode = "strong")

################## PATHLENGTH
###average path length = mean distance
average.path.length(g)
average.path.length(g.simp)
mean_distance(g, directed=FALSE)
mean_distance(g.simp, directed = FALSE)

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
diameter(g, directed=TRUE)
diameter(g, directed = FALSE)
diameter(g.simp)
diameter(g.simp.un)
#which two edges are the farest apart
get_diameter(g, directed=TRUE, weights=NA)
get_diameter(g, directed=FALSE, weights=NA)
# highlight the diameter
d = get_diameter(g.simp)
E(g.simp)$color = "grey"
E(g.simp)$width = 1
E(g.simp, path=d)$color = "red"
E(g.simp, path=d)$width = 2
V(g.simp)$color  = "white"
V(g.simp)[d]$color = "red"
plot(g.simp, vertex.label = NA, vertex.size=1, edge.curved=.25, edge.arrow.size=0.01)

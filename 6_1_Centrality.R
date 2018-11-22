
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 

#################### CENTRALITY
centr_degree(g, mode = "in", normalized = TRUE)$centralization
centr_degree(g, mode = "out")$centralization
centr_degree(g, mode = "total")$centralization
centr_degree(g.simp, mode = "in")$centralization
centr_degree(g.simp, mode = "out")$centralization
centr_degree(g.simp, mode = "total")$centralization
centr_betw(g, directed = TRUE, nobigint = TRUE, normalized = TRUE)$centralization
centr_betw(g.simp, directed = TRUE, nobigint = TRUE, normalized = TRUE)$centralization
centr_betw(g, directed = FALSE, nobigint = TRUE, normalized = TRUE)$centralization
centr_betw(g.simp, directed = FALSE, nobigint = TRUE, normalized = TRUE)$centralization
centr_clo(g, mode = "in")$centralization
centr_clo(g, mode = "out")$centralization
centr_clo(g, mode = "total")$centralization
centr_clo(g.simp, mode = "in")$centralization
centr_clo(g.simp, mode = "out")$centralization
centr_clo(g.simp, mode = "total")$centralization

##Degree
###g: who sent / received the most mails - people who sent many mails have high centrality (influence / importance)
# Indegree centrality measures how many mails the individual received
indegree_all <- degree(g, mode='in', loops = FALSE)
indegree_all <- as.matrix(indegree_all)
mean(indegree_all)
mean(centr_indegree)
hist(degree(g, mode='in'), freq = TRUE, breaks = max(indegree_all))
min(indegree_all)
max(indegree_all)
density(indegree_all)       #why is density min. -2035 and max. 21192 (2035 to high)?
plot(density(indegree_all))
# Outdegree centrality measures how mails the actor sent
outdegree_all <- degree(g, mode='out', loops = FALSE)
mean(outdegree_all)
hist(degree(g, mode='out'), freq = TRUE, breaks = max(outdegree_all))
min(outdegree_all)
max(outdegree_all)
density(outdegree_all)
plot(density(outdegree_all))       #why is density min. -2096 and may. 25824 (2096 to high)?
# --> same because closed group and only mails from and two an actor within the group are in dataset
# total degree measures how many mails the individual either sent or received
degree_all <- degree(g, mode = 'total', loops = FALSE)
mean(degree_all)
hist(degree(g, mode='total'), freq = TRUE, breaks = max(degree_all))
min(degree_all)
max(degree_all)
density(degree_all)       #why is density min. -4190 and max. 47077 (4192 to high)?
plot(density(degree_all))  
###SIMPLIFIED: who is connected the most - So people with connections to many different people have high centrality (influence / importance)
# Indegree centrality measures how many people send mails to the individual.
indegree_simp <- degree(g.simp, mode='in', loops = FALSE)
mean(indegree_simp)
hist(degree(g.simp, mode='in'), freq = TRUE, breaks = max(indegree_simp))
min(indegree_simp)
max(indegree_simp)
density(indegree_simp)       #why is density min. -22.46 and max. 480.46 (22.46 to high)?
plot(density(indegree_simp))
# Outdegree centrality measures how many people the actor sends mails to
outdegree_simp <- degree(g.simp, mode='out', loops = FALSE)
mean(outdegree_simp)
hist(degree(g.simp, mode='in'), freq = TRUE, breaks = max(outdegree_simp))
min(outdegree_simp)
max(outdegree_simp)
density(outdegree_simp)       #why is density min. -23.86 and max. 585.86 (23.86 to high)?
plot(density(outdegree_simp))
# total degree measures how many people either send mails to or receive mails from the actor
degree_simp <- degree(g.simp.un, mode = 'total', loops = FALSE)
mean(degree_simp)
hist(degree(g.simp, mode='in'), freq = TRUE, breaks = max(degree_simp))
min(degree_simp)
max(degree_simp)
density(degree_simp)       #why is density min. -25.95 and max. 592.95 (26.95 to high)?
plot(density(degree_simp))
centralization.degree(g.simp)$centralization
plot(g.simp, 
     vertex.size = (degree_simp / max(degree_simp)) * 10,
     vertex.color = "orange", # change color of nodes
     vertex.label.color = "blue", # change color of labels
     edge.arrow.size=0.02,  
     edge.curved=.25, # add a 25% curve to the edges
     edge.color="grey20", # change edge color to grey
     vertex.label.cex=0.01) # change size of labels to 1% of original size

##Betweenness centrality: number of shortest paths going through a specific vertex -
# quantifying the control of a human on the communication between other humans in a social network
# directed because it matters in which direction you can pass information
betweenness_all <- betweenness(g)
betweenness_simp <- betweenness(g.simp)
betweenness_table <- data.frame(V(g)$name, betweenness_all, betweenness_simp)
betweenness_correlation <- as.matrix(cor(betweenness_table[,2:3])) # --> doesn't matter --> g.simp because of computation efficiency
mean(betweenness_simp)
hist(betweenness(g.simp), freq = TRUE, breaks = max(betweenness_simp))
min(betweenness_simp)
max(betweenness_simp)  # why one node such a high betweenness?
density(betweenness_simp)       #why is density min. -209.3 and max 104354.5 (209.3 to high)
plot(density(betweenness_simp))

##Closeness: how long it will take to spread information from v to all other nodes sequentially farness/peripherality of a node v is defined as the sum of its distances to all other nodes mean geodesic distance to all other nodes (close to being the mean shortest path, but gives higher values for more central nodes
# directed because it matters if connected only with in-edges (can't spread information) or also out-edges
closeness_all <- closeness(g)
closeness_simp <- closeness(g.simp)
closeness_table <- data.frame(V(g)$name, closeness_all, closeness_simp)
closeness_correlation <- as.matrix(cor(closeness_table[,2:3])) # --> doesn't matter --> g.simp because of computation efficiency
mean(closeness_simp)
hist(closeness(g.simp), freq = TRUE, breaks = max(closeness_simp)*10000000)
min(closeness_simp)
max(closeness_simp)  # why one node such a high betweenness?
density(closeness_simp)       #why is density min. -8.301e-06 and max 8.762e-04 
plot(density(betweenness_simp))
## eigenvector: greater weight to a node the more it is connected to other highly connected nodes
#eigen_centrality(g, directed = TRUE)
#eigenCentrality <- eigen_centrality(g, directed = TRUE)
#eigenCentrality <- as.data.frame(eigenCentrality)
#eigenCentrality <- eigenCentrality[,c(1, 2)]
#eigenCentrality <- subset(eigenCentrality, select = -value)
#eigenCentrality$eigen <- eigenCentrality$vector
#eigenCentrality <- subset(eigenCentrality, select = -vector)
#hist(eigenCentrality$eigen, breaks = 100)

##Summary tables
centrality <- data.frame(V(g)$name, indegree_all, indegree_simp, outdegree_all, outdegree_simp, degree_all, degree_simp, betweenness_all, betweenness_simp, closeness_simp)
# Correlation between centrality measures
correlation <- as.matrix(cor(centrality[,2:10]))
#3 most important measures
centrality_important <- data.frame(V(g)$name, degree_simp, betweenness_simp, closeness_simp)
correlation_important <- as.matrix(cor(centrality_important[,2:4]))

#barplot for each measure
#barplot(central_social$indegree_social, cex.names = 0.12, names.arg=central_social$V.g..name, las = 2)
#barplot(central_social$outdegree_social, cex.names = 0.12, names.arg=central_social$V.g..name, las = 2)
#barplot(central_social$incloseness_social, cex.names = 0.12, ylim=c(0.00005,0.000085), names.arg=central_social$V.g..name, las = 2, beside=TRUE, xpd = FALSE)
#barplot(central_social$outcloseness_social, cex.names = 0.12, ylim=c(0.0002,0.0004), names.arg=central_social$V.g..name, las = 2, beside=TRUE, xpd = FALSE)
#barplot(central_social$betweenness_social, cex.names = 0.12, names.arg=central_social$V.g..name, las = 2)
#barplot(central_social$eigen_social_un, cex.names = 0.12, names.arg=central_social$V.g..name, las = 2)
#barplot(central_social$eigen_social_dir, cex.names = 0.12, names.arg=central_social$V.g..name, las = 2)

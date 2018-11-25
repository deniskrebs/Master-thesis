
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 

#################### NODE-LEVEL
#One challenge in studying complex networks is to develop simplified measures that capture some elements of the structure in an understandable way.
#One such simplification is to ignore any patterns among different nodes, but just look at each node separately.

#################### CENTRALITY
#centralization: C(G)=sum( max(c(w), w) - c(v),v)
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


##DEGREE

#a measure as simple as the degree distribution can give us a glimpse into the structure of a network and distinguish different types of networks. 
#Obviously, the degree distribution captures only a small amount of the network structure, as it ignores how the nodes are connected to each other


#NOT SIMPLIFIED - number of mails (not number of persons) - people who sent many mails have high centrality (influence / importance)

#UNDIRECTED - Who communicates a lot via mail? / Who is involved in a lot of mail traffic?
# degree - how many mails the individual had contact with (either sent or received)
centr_degree(g.un) #INTERPRETATION?
degree_all <- data.frame(degree(g.un, loops = FALSE))
mean(degree(g.un, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
quantile(degree(g.un, loops = FALSE)) # 3/4 of the nodes have a degree smaller than 8809 and only 1/4 more (up to 42885 mails in 595 days (72 mails per day))
density(degree(g.un, loops = FALSE))       #why is density min. -4190 and max. 47077 (4192 to high)?
plot(density(degree(g.un, loops = FALSE)))    #INTERPRETATION?
hist(degree(g.un),main="Number of Mails (in & out)",
     xlab="total degree (g.un)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,45000,length=(max(degree_all)/1000)), 
     freq=FALSE)
m <- mean(degree(g.un), loops = FALSE)
s <-  sd(degree(g.un), loops = FALSE)
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but many nodes involved in less than 1000 mails and a few hubs (involved in over 20'000 mails)
box() 
degree_all[order(degree_all$degree.g.un..loops...FALSE.,decreasing=T)[1:5],] 
# nodes involved in many mails: 15.09.00.00.00.00.14.052, 10.02.05.02.00.00.08.006, 10.06.00.00.00.00.08.032, 00.01.00.00.00.00.12.004, 15.09.00.00.00.00.08.03

# DIRECTED

# out degree - how many mails the individual has sent
outdegree_all <- data.frame(degree(g, mode = 'out', loops = FALSE))
mean(degree(g, mode = 'out', loops = FALSE)) #2976 mails sent on average (5 mails per day)
quantile(degree(g, mode = 'out', loops = FALSE)) # 3/4 of the nodes have a degree smaller than 4277 and only 1/4 more (up to 23728 mails in 595 days (almost 40 mails per day))
density(degree(g, mode = 'out', loops = FALSE))       #why is density min. -2096 and max. 25824 (2096 to high)?
plot(density(degree(g, mode = 'out', loops = FALSE)))    #INTERPRETATION?
hist(degree(g, mode = 'out'),main="Number of Mails sent",
     xlab="out-degree (g)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,25000,length=(max(outdegree_all)/1000)), 
     freq=FALSE)
m <- mean(degree(g, mode = 'out', loops = FALSE))
s <-  sd(degree(g, mode = 'out', loops = FALSE))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but many nodes sent less than 1000 mails and a few hubs (sent over 10'000 mails)
box() 
outdegree_all[order(outdegree_all$degree.g..mode....out...loops...FALSE.,decreasing=T)[1:5],] 
# nodes sent the most mails: 15.09.00.00.00.00.14.052, 00.01.00.00.00.00.12.004, 10.06.00.00.00.00.08.032, 10.02.05.02.00.00.08.006, 03.03.00.00.00.00.04.025

# in degree - how many mails the individual has received
indegree_all <- data.frame(degree(g, mode = 'in', loops = FALSE))
mean(degree(g, mode = 'in', loops = FALSE)) #2976 mails received on average (5 mails per day)
quantile(degree(g, mode = 'in', loops = FALSE)) # 3/4 of the nodes have a degree smaller than 4451 and only 1/4 more (up to 19157 mails in 595 days (32 mails per day))
density(degree(g, mode = 'in', loops = FALSE))       #why is density min. -2035 and max. 21192 (2035 to high)?
plot(density(degree(g, mode = 'in', loops = FALSE)))  #INTERPRETATION?
hist(degree(g, mode = 'in'),main="Number of Mails received",
     xlab="in-degree (g)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,20000,length=(max(indegree_all)/1000)), 
     freq=FALSE)
m <- mean(degree(g, mode = 'in', loops = FALSE))
s <-  sd(degree(g, mode = 'in', loops = FALSE))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but many nodes received less than 1000 mails and a few hubs (received over 10'000 mails)
box() 
indegree_all[order(indegree_all$degree.g..mode....in...loops...FALSE.,decreasing=T)[1:5],] 
# nodes received the most mails: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

#Compare outdegree and indegree to see if reciprocity present
reciprocity(g)    # reciprocity: 0.768
InOutdegree_all <- data.frame(V(g)$name, indegree_all, outdegree_all)
correlation_InOutdegree_all <- as.matrix(cor(InOutdegree_all[,2:3]))   # correlation: 0.912
compare(InOutdegree_all$degree.g..mode....in...loops...FALSE., InOutdegree_all$degree.g..mode....out...loops...FALSE., method = "nmi")  # 0.977

# how to create colorplot for two-dimensional degree-distribution (https://mathinsight.org/degree_distribution)?


#SIMPLIFIED - number of people (not number of mails) - So people with connections to many different people have high centrality (influence / importance)

#UNDIRECTED - Who communicates with a lot of different people? / Who is connected to many?
# degree - to how many people the individual had contact(either sent or received)
centr_degree(g.simp.un) #INTERPRETATION?
degree_simp <- data.frame(degree(g.simp.un, loops = FALSE))
mean(degree(g.simp.un, loops = FALSE)) #contact to 64 persons on average
quantile(degree(g.simp.un, loops = FALSE)) # 3/4 of the nodes have contact to less than 82 persons and only 1/4 more (up to 566)
density(degree(g.simp.un, loops = FALSE))       #why is density min. -25.95 and max. 592.95 (25.95 to high)?
plot(density(degree(g.simp.un, loops = FALSE)))    #INTERPRETATION?
hist(degree(g.simp.un),main="Number of People (in & out)",
     xlab="total degree (g.simp.un)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,600,length=(max(degree_simp)/10)), 
     freq=FALSE)
m <- mean(degree(g.simp.un), loops = FALSE)
s <- sd(degree(g.simp.un))
getmode(degree(g.simp.un, loops = FALSE))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but most nodes have contact to less than 60 people and a few hubs (contact to over 200 people)
box() 
#In a real world network, most nodes have a small degree, but a few nodes have very large degree (hubs) - long tail / power law degree distribution.
#not really the case here (but a bit)
degree_simp[order(degree_simp$degree.g.simp.un..loops...FALSE.,decreasing=T)[1:5],] 
# nodes with contact to many people: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

#DIRECTED

# out - to how many different persons the node has sent mails
outdegree_simp <- data.frame(degree(g.simp, mode = 'out', loops = FALSE))
mean(degree(g.simp, mode = 'out', loops = FALSE)) #sent mails to 54 people on average
quantile(degree(g.simp, mode = 'out', loops = FALSE)) # 3/4 of the nodes have contact to less than 68 and only 1/4 more (up to 562 people)
density(degree(g.simp, mode = 'out', loops = FALSE))       #why is density min. -23.86 and max. 585.86 (23.86 to high)?
plot(density(degree(g, mode = 'out', loops = FALSE)))    #INTERPRETATION?
hist(degree(g.simp, mode = 'out'),main="Number of people",
     xlab="out-degree (g.simp)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,600,length=(max(outdegree_simp)/10)), 
     freq=FALSE)
m <- mean(degree(g.simp, mode = 'out', loops = FALSE))
s <-  sd(degree(g.simp, mode = 'out', loops = FALSE))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but most nodes sent mails to less than 70 people and a few hubs (to over 200 people)
box() 
outdegree_simp[order(outdegree_simp$degree.g.simp..mode....out...loops...FALSE.,decreasing=T)[1:5],] 
# nodes sent mails to most people: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

# in - from how many people the individual received mails
indegree_simp <- data.frame(degree(g.simp, mode = 'in', loops = FALSE))
mean(degree(g.simp, mode = 'in', loops = FALSE)) #received mails from 54 people on average 
quantile(degree(g.simp, mode = 'in', loops = FALSE)) # 3/4 of the nodes have received mails from less than 71 people and only 1/4 from more (up to 458)
density(degree(g.simp, mode = 'in', loops = FALSE))       #why is density min. -22.46 and max. 480.46 (22.46 to high)?
plot(density(degree(g.simp, mode = 'in', loops = FALSE)))  #INTERPRETATION?
hist(degree(g.simp, mode = 'in'),main="Number of people",
     xlab="in-degree (g.simp)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,500,length=(max(indegree_simp)/10)), 
     freq=FALSE)
m <- mean(degree(g.simp, mode = 'in', loops = FALSE))
s <-  sd(degree(g.simp, mode = 'in', loops = FALSE))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but most nodes received mails from less than 50 people and a few hubs (received mails from over 150 people)
box() 
indegree_simp[order(indegree_simp$degree.g.simp..mode....in...loops...FALSE.,decreasing=T)[1:5],] 
# nodes received the most mails: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

#Compare outdegree and indegree to see if reciprocity present
reciprocity(g.simp)    # reciprocity: 0.823
InOutdegree_simp <- data.frame(V(g.simp)$name, indegree_simp, outdegree_simp)
correlation_InOutdegree_simp <- as.matrix(cor(InOutdegree_simp[,2:3]))   # correlation: 0.866
compare(InOutdegree_simp$degree.g.simp..mode....in...loops...FALSE., InOutdegree_simp$degree.g.simp..mode....out...loops...FALSE., method = "nmi")  # 0.679


# how to create colorplot for two-dimensional degree-distribution (https://mathinsight.org/degree_distribution)?









### BETWEENNESS - (simpliefied doesn't matter here)
# number of shortest paths going through a specific vertex - control of a human on the communication between other humans in a social network
# removal of individuals with high betweenness will most disrupt communications between other vertices
# (usually concerned only with the relative magnitudes of the centralities and not with their absolute values. 
# The sum can be normalized by dividing by the total number of ordered pairs of nodes, which is n2, so that betweenness lies strictly between 0 and 1)
# Betweenness centrality, as defined above, is a measure of information control assuming two important hypothesis: 
#(i) every pair of vertices exchange information with equal probability, and 
#(ii) information flows along the geodesic (shortest) path between two vertices, or one of such path, chosen at random, 
#if there are several. However, information not always takes the shortest route. 
#In social network, for instance, a news about a friend of us might not come directly from the friend but from another mutual friend. 

# directed - who acts as a bridge in communication between other nodes (can you forward that information to that person?)
betweenness_all <- data.frame(betweenness(g)) # max possible value (theoretically): n2???(n???1)=n2???n+1=352'241
mean(betweenness(g))  # on average a node lies on 567 shortest paths
quantile(betweenness(g)) # 3/4 of the nodes are on less than 403 shortest paths and only 1/4 on more (up to 82994)
density(betweenness(g))       #why is density min. -218.8 and max. 83212.9 (218.8 to high)?
plot(density(betweenness(g)))  #INTERPRETATION?
hist(betweenness(g),main="Number of shortest paths",
     xlab="beteweenness (g)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,100000,length=(max(betweenness_all)/1000)), 
     freq=FALSE)
m <- mean(betweenness(g))
s <-  sd(betweenness(g))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but most nodes received mails from less than 50 people and a few hubs (received mails from over 150 people)
box() 
betweenness_all[order(betweenness_all$betweenness.g.,decreasing=T)[1:5],] 
# nodes that are on most shortest paths: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

# undirected - who often acts as a bridge in communication between other nodes (can you introduce me to that person?)
betweenness_un <- data.frame(betweenness(g.un)) # max possible value (theoretically): n2???(n???1)=n2???n+1=352'241
mean(betweenness(g.un))  # on average a node lies on 272 shortest paths
quantile(betweenness(g.un)) # 3/4 of the nodes are on less than 178 shortest paths and only 1/4 on more (up to 47605)
density(betweenness(g.un))       #why is density min. -97.37 and max. 47702.91 (97.37 to high)?
plot(density(betweenness(g.un)))  #INTERPRETATION?
hist(betweenness(g.un),main="Number of shortest paths",
     xlab="beteweenness (g.un)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,50000,length=(max(betweenness_un)/500)), 
     freq=FALSE)
m <- mean(betweenness(g.un))
s <-  sd(betweenness(g.un))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but most nodes received mails from less than 50 people and a few hubs (received mails from over 150 people)
box() 
betweenness_un[order(betweenness_un$betweenness.g.un.,decreasing=T)[1:5],] 
# nodes that are on most shortest paths: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

#correlation between betweenness g and g.un
betweenness_AllUn <- data.frame(V(g.simp)$name, betweenness_all, betweenness_un)
correlation_betweenness_AllUn <- as.matrix(cor(betweenness_AllUn[,2:3]))   # correlation: 0.998
compare(betweenness_AllUn$betweenness.g...length.nodes...2, betweenness_AllUn$betweenness.g.un., method = "nmi")  # 0.994







##Closeness - simplify has no influence 
#how long it will take to spread information from v to all other nodes sequentially farness/peripherality of a node v 
#is defined as the sum of its distances to all other nodes mean geodesic distance to all other nodes --> good broadcasters
#(close to being the mean shortest path, but gives higher values for more central nodes)
#inverse of the sum of the shortest distances between each node and every other node in the network

# directed - who acts as a bridge in communication between other nodes (can you forward that information to that person?)
closeness_all <- data.frame(closeness(g)) 
mean(closeness(g))  #INTERPRETATION?
quantile(closeness(g))  #INTERPRETATION?
density(closeness(g))    #INTERPRETATION?
plot(density(closeness(g)))  #INTERPRETATION?
hist(closeness(g),main="Closeness",
     xlab="closeness (g)",
     ylab="frequency",
     col="deepskyblue",
     freq=TRUE)
m <- mean(closeness(g))
s <-  sd(closeness(g))
curve(dnorm(x,m,s),add=TRUE,lwd=3)   #INTERPRETATION?
box() 
closeness_all[order(closeness_all$closeness.g.,decreasing=T)[1:5],] 
# nodes wich are the closest: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

# undirected - who often acts as a bridge in communication between other nodes (can you introduce me to that person?)
closeness_un <- data.frame(closeness(g.un)) 
mean(closeness(g.un))  #INTERPRETATION?
quantile(closeness(g.un))  #INTERPRETATION?
density(closeness(g.un))    #INTERPRETATION?
plot(density(closeness(g.un)))  #INTERPRETATION?
hist(closeness(g.un),main="Closeness",
     xlab="closeness (g.un)",
     ylab="frequency",
     col="deepskyblue",
     freq=TRUE)
m <- mean(closeness(g.un))
s <-  sd(closeness(g.un))
curve(dnorm(x,m,s),add=TRUE,lwd=3)   #INTERPRETATION?
box() 
closeness_un[order(closeness_un$closeness.g.un.,decreasing=T)[1:5],] 
# nodes wich are the closest: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023

#correlation between betweenness g and g.un
closeness_AllUn <- data.frame(V(g.simp)$name, closeness_all, closeness_un)
correlation_closeness_AllUn <- as.matrix(cor(closeness_AllUn[,2:3]))   # correlation: 0.528
compare(closeness_AllUn$closeness.g., closeness_AllUn$closeness.g.un., method = "nmi")  # 0.762



## eigenvector: greater weight to a node the more it is connected to other highly connected nodes
#eigen_centrality(g, directed = TRUE)
#eigenCentrality <- eigen_centrality(g, directed = TRUE)
#eigenCentrality <- as.data.frame(eigenCentrality)
#eigenCentrality <- eigenCentrality[,c(1, 2)]
#eigenCentrality <- subset(eigenCentrality, select = -value)
#eigenCentrality$eigen <- eigenCentrality$vector
#eigenCentrality <- subset(eigenCentrality, select = -vector)
#hist(eigenCentrality$eigen, breaks = 100)

##compare centrality measures
centrality <- data.frame(V(g)$name, degree_simp, indegree_simp, outdegree_simp, degree_all, indegree_all, outdegree_all, betweenness_all, betweenness_un, closeness_all, closeness_un)
correlation_centrality <- as.matrix(cor(centrality[,2:11]))

compare(centrality$degree.g.simp..mode....out...loops...FALSE., centrality$betweenness.g.un., method = "nmi")
# why not the same number as in correlation table?
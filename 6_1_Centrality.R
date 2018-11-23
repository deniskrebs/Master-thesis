
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










### BETWEENNESS
#number of shortest paths going through a specific vertex - control of a human on the communication between other humans in a social network
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

##Closeness: how long it will take to spread information from v to all other nodes sequentially farness/peripherality of a node v 
#is defined as the sum of its distances to all other nodes mean geodesic distance to all other nodes --> good broadcasters
#(close to being the mean shortest path, but gives higher values for more central nodes)
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

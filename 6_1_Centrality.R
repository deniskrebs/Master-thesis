
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./0_Start.R")        ################ Skip if not complete data (IF C-C, C-SG, SG-SG, ...) ###########################
source("./1_LoadData.R") 

#################### NODE-LEVEL
#One challenge in studying complex networks is to develop simplified measures that capture some elements of the structure in an understandable way.
#One such simplification is to ignore any patterns among different nodes, but just look at each node separately.

#################### CENTRALITY
#centralization: 
#C(G)=sum( max(c(w), w) - c(v),v)
centr_degree(g.un, normalized = TRUE)$centralization
centr_degree(igraph::simplify(g.un), normalized = TRUE)$centralization

centr_betw(g.un, nobigint = TRUE, normalized = TRUE)$centralization
centr_betw(igraph::simplify(g.un), nobigint = TRUE, normalized = TRUE)$centralization

centr_clo(g.un)$centralization # same for g.simp.un




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
pdf("./R_Output/6.1/degree_g.un.pdf")
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
dev.off()
degree_all[order(degree_all$degree.g.un..loops...FALSE.,decreasing=T)[1:5],] 
# nodes involved in many mails: 15.09.00.00.00.00.14.052, 10.02.05.02.00.00.08.006, 10.06.00.00.00.00.08.032, 00.01.00.00.00.00.12.004, 15.09.00.00.00.00.08.03


#SIMPLIFIED - number of people (not number of mails) - So people with connections to many different people have high centrality (influence / importance)

#UNDIRECTED - Who communicates with a lot of different people? / Who is connected to many?
# degree - to how many people the individual had contact(either sent or received)
centr_degree(g.simp.un) #INTERPRETATION?
degree_simp <- data.frame(degree(g.simp.un, loops = FALSE))
mean(degree(g.simp.un, loops = FALSE)) #contact to 64 persons on average
quantile(degree(g.simp.un, loops = FALSE)) # 3/4 of the nodes have contact to less than 82 persons and only 1/4 more (up to 566)
pdf("./R_Output/6.1/degree_g.simp.un.pdf")
hist(degree(g.simp.un),main="Number of People (in & out)",
     xlab="total degree (g.simp.un)",
     ylab="probability density",
     col="deepskyblue",
     breaks=seq(0,600,length=(max(degree_simp)/10)), 
     freq=FALSE)
m <- mean(degree(g.simp.un), loops = FALSE)
s <- sd(degree(g.simp.un))
curve(dnorm(x,m,s),add=TRUE,lwd=3) #quite normal distributed, but most nodes have contact to less than 60 people and a few hubs (contact to over 200 people)
box() 
dev.off()
#In a real world network, most nodes have a small degree, but a few nodes have very large degree (hubs) - long tail / power law degree distribution.
#not really the case here (but a bit)
degree_simp[order(degree_simp$degree.g.simp.un..loops...FALSE.,decreasing=T)[1:5],] 
# nodes with contact to many people: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023









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


# undirected - simplify no influence
#who often acts as a bridge in communication between other nodes (can you introduce me to that person?)
betweenness_un <- data.frame(betweenness(g.un)) # max possible value (theoretically): n2???(n???1)=n2???n+1=352'241
mean(betweenness(g.un))  # on average a node lies on 272 shortest paths
quantile(betweenness(g.un)) # 3/4 of the nodes are on less than 178 shortest paths and only 1/4 on more (up to 47605)
pdf("./R_Output/6.1/betweenness_g.un.pdf")
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
dev.off()
betweenness_un[order(betweenness_un$betweenness.g.un.,decreasing=T)[1:5],] 
# nodes that are on most shortest paths: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023







##Closeness - simplify has no influence 
#how long it will take to spread information from v to all other nodes sequentially farness/peripherality of a node v 
#is defined as the sum of its distances to all other nodes mean geodesic distance to all other nodes --> good broadcasters
#(close to being the mean shortest path, but gives higher values for more central nodes)
#inverse of the sum of the shortest distances between each node and every other node in the network

# undirected - who often acts as a bridge in communication between other nodes (can you introduce me to that person?)
closeness_un <- data.frame(closeness(g.un)) 
mean(closeness(g.un))  #INTERPRETATION?
quantile(closeness(g.un))  #INTERPRETATION?
pdf("./R_Output/6.1/closeness_g.un.pdf")
hist(closeness(g.un),main="Closeness",
       xlab="closeness (g.un)",
       ylab="frequency",
       col="deepskyblue",
       freq=TRUE)
m <- mean(closeness(g.un))
s <-  sd(closeness(g.un))
curve(dnorm(x,m,s),add=TRUE,lwd=3)   #INTERPRETATION?
box() 
dev.off()
closeness_un[order(closeness_un$closeness.g.un.,decreasing=T)[1:5],] 
# nodes wich are the closest: 00.01.00.00.00.00.15.013, 12.02.00.00.00.00.10.053, 04.02.00.00.00.00.08.030, 00.01.00.00.00.00.02.005, 00.01.00.00.00.00.03.023
  
  
  
  
  
  


setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis/R_Output/6.1")

##compare centrality measures
centrality <- data.frame(V(g)$name, degree_simp, degree_all, betweenness_un, closeness_un)
centrality_correlation <- as.matrix(cor(centrality[,2:5]))
write.table(centrality_correlation, file = "centrality_correlation.csv", sep = ",")
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

compare(centrality$degree.g.simp.un..loops...FALSE., centrality$degree.g.un..loops...FALSE., method = "nmi")
# why not the same number as in correlation table?
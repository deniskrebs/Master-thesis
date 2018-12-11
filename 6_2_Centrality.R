
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./6_2_Split_timescale.R")
source("./2_LoadData.R") 

#################### NODE-LEVEL
#One challenge in studying complex networks is to develop simplified measures that capture some elements of the structure in an understandable way.
#One such simplification is to ignore any patterns among different nodes, but just look at each node separately.

#################### CENTRALITY
#centralization: 
#C(G)=sum( max(c(w), w) - c(v),v)
deg.centralization_dyn1 <- centr_degree(g.un_dyn1, normalized = TRUE)$centralization
deg.centralization_dyn2 <- centr_degree(g.un_dyn2, normalized = TRUE)$centralization
deg.centralization_dyn3 <- centr_degree(g.un_dyn3, normalized = TRUE)$centralization
deg.centralization_dyn4 <- centr_degree(g.un_dyn4, normalized = TRUE)$centralization
deg.centralization_dyn5 <- centr_degree(g.un_dyn5, normalized = TRUE)$centralization
deg.centralization_dyn6 <- centr_degree(g.un_dyn6, normalized = TRUE)$centralization
deg.centralization_dyn7 <- centr_degree(g.un_dyn7, normalized = TRUE)$centralization
deg.centralization_dyn8 <- centr_degree(g.un_dyn8, normalized = TRUE)$centralization
deg.centralization_dyn9 <- centr_degree(g.un_dyn9, normalized = TRUE)$centralization
deg.centralization_dyn10 <- centr_degree(g.un_dyn10, normalized = TRUE)$centralization
deg.centralization_dyn11 <- centr_degree(g.un_dyn11, normalized = TRUE)$centralization

deg.centralization_dynsnap <- matrix(c(deg.centralization_dyn1,deg.centralization_dyn2,deg.centralization_dyn3,deg.centralization_dyn4,deg.centralization_dyn5,deg.centralization_dyn6,
                                       deg.centralization_dyn7,deg.centralization_dyn8,deg.centralization_dyn9,deg.centralization_dyn10,deg.centralization_dyn11),ncol=1,byrow=TRUE)
colnames(deg.centralization_dynsnap) <- c("deg.centralization") 
rownames(deg.centralization_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
deg.centralization_dynsnap <- as.table(deg.centralization_dynsnap)
deg.centralization_dynsnap <- as.data.frame(deg.centralization_dynsnap)
deg.centralization_dynsnap <- deg.centralization_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centralization.deg.pdf")
ggplot(deg.centralization_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(deg.centralization_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 30) + ylab("Degree centralization")
dev.off()

deg.centralization.simp_dyn1 <- centr_degree(igraph::simplify(g.un_dyn1), normalized = TRUE)$centralization
deg.centralization.simp_dyn2 <- centr_degree(igraph::simplify(g.un_dyn2), normalized = TRUE)$centralization
deg.centralization.simp_dyn3 <- centr_degree(igraph::simplify(g.un_dyn3), normalized = TRUE)$centralization
deg.centralization.simp_dyn4 <- centr_degree(igraph::simplify(g.un_dyn4), normalized = TRUE)$centralization
deg.centralization.simp_dyn5 <- centr_degree(igraph::simplify(g.un_dyn5), normalized = TRUE)$centralization
deg.centralization.simp_dyn6 <- centr_degree(igraph::simplify(g.un_dyn6), normalized = TRUE)$centralization
deg.centralization.simp_dyn7 <- centr_degree(igraph::simplify(g.un_dyn7), normalized = TRUE)$centralization
deg.centralization.simp_dyn8 <- centr_degree(igraph::simplify(g.un_dyn8), normalized = TRUE)$centralization
deg.centralization.simp_dyn9 <- centr_degree(igraph::simplify(g.un_dyn9), normalized = TRUE)$centralization
deg.centralization.simp_dyn10 <- centr_degree(igraph::simplify(g.un_dyn10), normalized = TRUE)$centralization
deg.centralization.simp_dyn11 <- centr_degree(igraph::simplify(g.un_dyn11), normalized = TRUE)$centralization

deg.centralization.simp_dynsnap <- matrix(c(deg.centralization.simp_dyn1,deg.centralization.simp_dyn2,deg.centralization.simp_dyn3,deg.centralization.simp_dyn4,deg.centralization.simp_dyn5,deg.centralization.simp_dyn6,
                                       deg.centralization.simp_dyn7,deg.centralization.simp_dyn8,deg.centralization.simp_dyn9,deg.centralization.simp_dyn10,deg.centralization.simp_dyn11),ncol=1,byrow=TRUE)
colnames(deg.centralization.simp_dynsnap) <- c("deg.centralization.simp") 
rownames(deg.centralization.simp_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
deg.centralization.simp_dynsnap <- as.table(deg.centralization.simp_dynsnap)
deg.centralization.simp_dynsnap <- as.data.frame(deg.centralization.simp_dynsnap)
deg.centralization.simp_dynsnap <- deg.centralization.simp_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centralization.deg.simp.pdf")
ggplot(deg.centralization.simp_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(deg.centralization.simp_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Degree centralization.simp")
dev.off()


betw.centralization_dyn1 <- centr_betw(g.un_dyn1, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn2 <- centr_betw(g.un_dyn2, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn3 <- centr_betw(g.un_dyn3, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn4 <- centr_betw(g.un_dyn4, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn5 <- centr_betw(g.un_dyn5, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn6 <- centr_betw(g.un_dyn6, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn7 <- centr_betw(g.un_dyn7, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn8 <- centr_betw(g.un_dyn8, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn9 <- centr_betw(g.un_dyn9, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn10 <- centr_betw(g.un_dyn10, nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization_dyn11 <- centr_betw(g.un_dyn11, nobigint = TRUE, normalized = TRUE)$centralization

betw.centralization_dynsnap <- matrix(c(betw.centralization_dyn1,betw.centralization_dyn2,betw.centralization_dyn3,betw.centralization_dyn4,betw.centralization_dyn5,betw.centralization_dyn6,
                                        betw.centralization_dyn7,betw.centralization_dyn8,betw.centralization_dyn9,betw.centralization_dyn10,betw.centralization_dyn11),ncol=1,byrow=TRUE)
colnames(betw.centralization_dynsnap) <- c("betw.centralization") 
rownames(betw.centralization_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
betw.centralization_dynsnap <- as.table(betw.centralization_dynsnap)
betw.centralization_dynsnap <- as.data.frame(betw.centralization_dynsnap)
betw.centralization_dynsnap <- betw.centralization_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centralization.betw.pdf")
ggplot(betw.centralization_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(betw.centralization_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Betweenness centralization")
dev.off()


betw.centralization.simp_dyn1 <- centr_betw(igraph::simplify(g.un_dyn1), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn2 <- centr_betw(igraph::simplify(g.un_dyn2), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn3 <- centr_betw(igraph::simplify(g.un_dyn3), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn4 <- centr_betw(igraph::simplify(g.un_dyn4), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn5 <- centr_betw(igraph::simplify(g.un_dyn5), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn6 <- centr_betw(igraph::simplify(g.un_dyn6), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn7 <- centr_betw(igraph::simplify(g.un_dyn7), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn8 <- centr_betw(igraph::simplify(g.un_dyn8), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn9 <- centr_betw(igraph::simplify(g.un_dyn9), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn10 <- centr_betw(igraph::simplify(g.un_dyn10), nobigint = TRUE, normalized = TRUE)$centralization
betw.centralization.simp_dyn11 <- centr_betw(igraph::simplify(g.un_dyn11), nobigint = TRUE, normalized = TRUE)$centralization

betw.centralization.simp_dynsnap <- matrix(c(betw.centralization.simp_dyn1,betw.centralization.simp_dyn2,betw.centralization.simp_dyn3,betw.centralization.simp_dyn4,betw.centralization.simp_dyn5,betw.centralization.simp_dyn6,
                                        betw.centralization.simp_dyn7,betw.centralization.simp_dyn8,betw.centralization.simp_dyn9,betw.centralization.simp_dyn10,betw.centralization.simp_dyn11),ncol=1,byrow=TRUE)
colnames(betw.centralization.simp_dynsnap) <- c("betw.centralization.simp") 
rownames(betw.centralization.simp_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
betw.centralization.simp_dynsnap <- as.table(betw.centralization.simp_dynsnap)
betw.centralization.simp_dynsnap <- as.data.frame(betw.centralization.simp_dynsnap)
betw.centralization.simp_dynsnap <- betw.centralization.simp_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centralization.betw.simp.pdf")
ggplot(betw.centralization.simp_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(betw.centralization.simp_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Betweenness centralization.simp")
dev.off()



clo.centralization_dyn1 <- centr_clo(g.un_dyn1)$centralization # same for g.simp.un
clo.centralization_dyn2 <- centr_clo(g.un_dyn2)$centralization # same for g.simp.un
clo.centralization_dyn3 <- centr_clo(g.un_dyn3)$centralization # same for g.simp.un
clo.centralization_dyn4 <- centr_clo(g.un_dyn4)$centralization # same for g.simp.un
clo.centralization_dyn5 <- centr_clo(g.un_dyn5)$centralization # same for g.simp.un
clo.centralization_dyn6 <- centr_clo(g.un_dyn6)$centralization # same for g.simp.un
clo.centralization_dyn7 <- centr_clo(g.un_dyn7)$centralization # same for g.simp.un
clo.centralization_dyn8 <- centr_clo(g.un_dyn8)$centralization # same for g.simp.un
clo.centralization_dyn9 <- centr_clo(g.un_dyn9)$centralization # same for g.simp.un
clo.centralization_dyn10 <- centr_clo(g.un_dyn10)$centralization # same for g.simp.un
clo.centralization_dyn11 <- centr_clo(g.un_dyn11)$centralization # same for g.simp.un


clo.centralization_dynsnap <- matrix(c(clo.centralization_dyn1,clo.centralization_dyn2,clo.centralization_dyn3,clo.centralization_dyn4,clo.centralization_dyn5,clo.centralization_dyn6,
                                       clo.centralization_dyn7,clo.centralization_dyn8,clo.centralization_dyn9,clo.centralization_dyn10,clo.centralization_dyn11),ncol=1,byrow=TRUE)
colnames(clo.centralization_dynsnap) <- c("clo.centralization") 
rownames(clo.centralization_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
clo.centralization_dynsnap <- as.table(clo.centralization_dynsnap)
clo.centralization_dynsnap <- as.data.frame(clo.centralization_dynsnap)
clo.centralization_dynsnap <- clo.centralization_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centralization.clo.pdf")
ggplot(clo.centralization_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(clo.centralization_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Closeness centralization")
dev.off()



##DEGREE

#a measure as simple as the degree distribution can give us a glimpse into the structure of a network and distinguish different types of networks. 
#Obviously, the degree distribution captures only a small amount of the network structure, as it ignores how the nodes are connected to each other


#NOT SIMPLIFIED - number of mails (not number of persons) - people who sent many mails have high centrality (influence / importance)

#UNDIRECTED - Who communicates a lot via mail? / Who is involved in a lot of mail traffic?
# degree - how many mails the individual had contact with (either sent or received)
degree_mean_all_dyn1 <- mean(degree(g.un_dyn1, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn2 <- mean(degree(g.un_dyn2, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn3 <- mean(degree(g.un_dyn3, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn4 <- mean(degree(g.un_dyn4, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn5 <- mean(degree(g.un_dyn5, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn6 <- mean(degree(g.un_dyn6, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn7 <- mean(degree(g.un_dyn7, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn8 <- mean(degree(g.un_dyn8, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn9 <- mean(degree(g.un_dyn9, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn10 <- mean(degree(g.un_dyn10, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_all_dyn11 <- mean(degree(g.un_dyn11, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)

degree_mean_all_dynsnap <- matrix(c(degree_mean_all_dyn1,degree_mean_all_dyn2,degree_mean_all_dyn3,degree_mean_all_dyn4,degree_mean_all_dyn5,degree_mean_all_dyn6,
                                    degree_mean_all_dyn7,degree_mean_all_dyn8,degree_mean_all_dyn9,degree_mean_all_dyn10,degree_mean_all_dyn11),ncol=1,byrow=TRUE)
colnames(degree_mean_all_dynsnap) <- c("degree_mean_all") 
rownames(degree_mean_all_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
degree_mean_all_dynsnap <- as.table(degree_mean_all_dynsnap)
degree_mean_all_dynsnap <- as.data.frame(degree_mean_all_dynsnap)
degree_mean_all_dynsnap <- degree_mean_all_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centrality_degree_mean_all.pdf")
ggplot(degree_mean_all_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +   geom_hline(yintercept = mean(degree_mean_all_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1000) + ylab("Mean degree (all)")
dev.off()



#SIMPLIFIED - number of people (not number of mails) - So people with connections to many different people have high centrality (influence / importance)

#UNDIRECTED - Who communicates with a lot of different people? / Who is connected to many?
# degree - to how many people the individual had contact(either sent or received)
degree_mean_simp_dyn1 <- mean(degree(g.simp.un_dyn1, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn2 <- mean(degree(g.simp.un_dyn2, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn3 <- mean(degree(g.simp.un_dyn3, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn4 <- mean(degree(g.simp.un_dyn4, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn5 <- mean(degree(g.simp.un_dyn5, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn6 <- mean(degree(g.simp.un_dyn6, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn7 <- mean(degree(g.simp.un_dyn7, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn8 <- mean(degree(g.simp.un_dyn8, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn9 <- mean(degree(g.simp.un_dyn9, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn10 <- mean(degree(g.simp.un_dyn10, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)
degree_mean_simp_dyn11 <- mean(degree(g.simp.un_dyn11, loops = FALSE)) #involved in 5952 mails on average (10 mails per day)

degree_mean_simp_dynsnap <- matrix(c(degree_mean_simp_dyn1,degree_mean_simp_dyn2,degree_mean_simp_dyn3,degree_mean_simp_dyn4,degree_mean_simp_dyn5,degree_mean_simp_dyn6,
                                    degree_mean_simp_dyn7,degree_mean_simp_dyn8,degree_mean_simp_dyn9,degree_mean_simp_dyn10,degree_mean_simp_dyn11),ncol=1,byrow=TRUE)
colnames(degree_mean_simp_dynsnap) <- c("degree_mean_simp") 
rownames(degree_mean_simp_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
degree_mean_simp_dynsnap <- as.table(degree_mean_simp_dynsnap)
degree_mean_simp_dynsnap <- as.data.frame(degree_mean_simp_dynsnap)
degree_mean_simp_dynsnap <- degree_mean_simp_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centrality_degree_mean_simp.pdf")
ggplot(degree_mean_simp_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(degree_mean_simp_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 50) + ylab("Mean degree (simp)")
dev.off()








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
betweenness_mean_dyn1 <- mean(betweenness(g.un_dyn1))  
betweenness_mean_dyn2 <- mean(betweenness(g.un_dyn2))  
betweenness_mean_dyn3 <- mean(betweenness(g.un_dyn3))  
betweenness_mean_dyn4 <- mean(betweenness(g.un_dyn4))  
betweenness_mean_dyn5 <- mean(betweenness(g.un_dyn5))  
betweenness_mean_dyn6 <- mean(betweenness(g.un_dyn6))  
betweenness_mean_dyn7 <- mean(betweenness(g.un_dyn7))  
betweenness_mean_dyn8 <- mean(betweenness(g.un_dyn8))  
betweenness_mean_dyn9 <- mean(betweenness(g.un_dyn9))  
betweenness_mean_dyn10 <- mean(betweenness(g.un_dyn10))  
betweenness_mean_dyn11 <- mean(betweenness(g.un_dyn11))  

betweenness_mean_dynsnap <- matrix(c(betweenness_mean_dyn1,betweenness_mean_dyn2,betweenness_mean_dyn3,betweenness_mean_dyn4,betweenness_mean_dyn5,betweenness_mean_dyn6,
                                     betweenness_mean_dyn7,betweenness_mean_dyn8,betweenness_mean_dyn9,betweenness_mean_dyn10,betweenness_mean_dyn11),ncol=1,byrow=TRUE)
colnames(betweenness_mean_dynsnap) <- c("betweenness_mean") 
rownames(betweenness_mean_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
betweenness_mean_dynsnap <- as.table(betweenness_mean_dynsnap)
betweenness_mean_dynsnap <- as.data.frame(betweenness_mean_dynsnap)
betweenness_mean_dynsnap <- betweenness_mean_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centrality_betweenness_mean.pdf")
ggplot(betweenness_mean_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(betweenness_mean_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 500) + ylab("Mean betweenness")
dev.off()





##Closeness - simplify has no influence 
#how long it will take to spread information from v to all other nodes sequentially farness/peripherality of a node v 
#is defined as the sum of its distances to all other nodes mean geodesic distance to all other nodes --> good broadcasters
#(close to being the mean shortest path, but gives higher values for more central nodes)
#inverse of the sum of the shortest distances between each node and every other node in the network

# undirected - who often acts as a bridge in communication between other nodes (can you introduce me to that person?)
closeness_mean_dyn1 <- mean(closeness(g.un_dyn1))  
closeness_mean_dyn2 <- mean(closeness(g.un_dyn2))  
closeness_mean_dyn3 <- mean(closeness(g.un_dyn3))  
closeness_mean_dyn4 <- mean(closeness(g.un_dyn4))  
closeness_mean_dyn5 <- mean(closeness(g.un_dyn5))  
closeness_mean_dyn6 <- mean(closeness(g.un_dyn6))  
closeness_mean_dyn7 <- mean(closeness(g.un_dyn7))  
closeness_mean_dyn8 <- mean(closeness(g.un_dyn8))  
closeness_mean_dyn9 <- mean(closeness(g.un_dyn9))  
closeness_mean_dyn10 <- mean(closeness(g.un_dyn10))  
closeness_mean_dyn11 <- mean(closeness(g.un_dyn11))  

closeness_mean_dynsnap <- matrix(c(closeness_mean_dyn1,closeness_mean_dyn2,closeness_mean_dyn3,closeness_mean_dyn4,closeness_mean_dyn5,closeness_mean_dyn6,
                                     closeness_mean_dyn7,closeness_mean_dyn8,closeness_mean_dyn9,closeness_mean_dyn10,closeness_mean_dyn11),ncol=1,byrow=TRUE)
colnames(closeness_mean_dynsnap) <- c("closeness_mean") 
rownames(closeness_mean_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
closeness_mean_dynsnap <- as.table(closeness_mean_dynsnap)
closeness_mean_dynsnap <- as.data.frame(closeness_mean_dynsnap)
closeness_mean_dynsnap <- closeness_mean_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_centrality_closeness_mean.pdf")
ggplot(closeness_mean_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(closeness_mean_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 0.001) + ylab("Mean closeness")
dev.off()

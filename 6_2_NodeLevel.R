
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./2_LoadData.R") 


################## NODE LEVEL - DISCRIPTIVE

ecount_dyn1 <- ecount(g_dyn1)
ecount_dyn2 <- ecount(g_dyn2)
ecount_dyn3 <- ecount(g_dyn3)
ecount_dyn4 <- ecount(g_dyn4)
ecount_dyn5 <- ecount(g_dyn5)
ecount_dyn6 <- ecount(g_dyn6)
ecount_dyn7 <- ecount(g_dyn7)
ecount_dyn8 <- ecount(g_dyn8)
ecount_dyn9 <- ecount(g_dyn9)
ecount_dyn10 <- ecount(g_dyn10)
ecount_dyn11 <- ecount(g_dyn11)

vcount(g_dyn1)
vcount(g_dyn2)
vcount(g_dyn3)
vcount(g_dyn4)
vcount(g_dyn5)
vcount(g_dyn6)
vcount(g_dyn7)
vcount(g_dyn8)
vcount(g_dyn9)
vcount(g_dyn10)
vcount(g_dyn11)

ecount_dynsnap <- matrix(c(ecount_dyn1,ecount_dyn2,ecount_dyn3,ecount_dyn4,ecount_dyn5,ecount_dyn6,ecount_dyn7,ecount_dyn8,ecount_dyn9,ecount_dyn10,ecount_dyn11),ncol=1,byrow=TRUE)
colnames(ecount_dynsnap) <- c("ecount") 
rownames(ecount_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
ecount_dynsnap <- as.table(ecount_dynsnap)
ecount_dynsnap <- as.data.frame(ecount_dynsnap)
ecount_dynsnap <- ecount_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_ecount.pdf")
ggplot(ecount_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + 
  xlab("Time") + ylim(0, 250000) + ylab("# Edges")
dev.off()



# FROM HERE EVERYTHING WITH UNDIRECTED:
# 1. Louvain only with undirected network
# 2. Reciprocity high (0.76) --> don't loose much information
# 3. Mainly interessted in who has contact with who and not who sends / receives mails to / from who




################## TRANSITIVITY = CLUSTERING COEFFICIENT
# probability that adjacent vertices are connected - Probability that a friend of my friend is a friend of mine as well
transitivity_dyn1 <- transitivity(g.un_dyn1) 
transitivity_dyn2 <- transitivity(g.un_dyn2) 
transitivity_dyn3 <- transitivity(g.un_dyn3) 
transitivity_dyn4 <- transitivity(g.un_dyn4) 
transitivity_dyn5 <- transitivity(g.un_dyn5) 
transitivity_dyn6 <- transitivity(g.un_dyn6) 
transitivity_dyn7 <- transitivity(g.un_dyn7) 
transitivity_dyn8 <- transitivity(g.un_dyn8) 
transitivity_dyn9 <- transitivity(g.un_dyn9) 
transitivity_dyn10 <- transitivity(g.un_dyn10) 
transitivity_dyn11 <- transitivity(g.un_dyn11) 

transitivity_dynsnap <- matrix(c(transitivity_dyn1,transitivity_dyn2,transitivity_dyn3,transitivity_dyn4,transitivity_dyn5,transitivity_dyn6,
                                 transitivity_dyn7,transitivity_dyn8,transitivity_dyn9,transitivity_dyn10,transitivity_dyn11),ncol=1,byrow=TRUE)
colnames(transitivity_dynsnap) <- c("transitivity") 
rownames(transitivity_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
transitivity_dynsnap <- as.table(transitivity_dynsnap)
transitivity_dynsnap <- as.data.frame(transitivity_dynsnap)
transitivity_dynsnap <- transitivity_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_transitivity.pdf")
ggplot(transitivity_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(transitivity_dynsnap$Freq), color="blue") + 
  xlab("Time") + ylim(0, 1) + ylab("Transitivity")
dev.off()


################## DENSITY
# portion of potential connections
density_dyn1 <- graph.density(g.un_dyn1)
density_dyn2 <- graph.density(g.un_dyn2)
density_dyn3 <- graph.density(g.un_dyn3)
density_dyn4 <- graph.density(g.un_dyn4)
density_dyn5 <- graph.density(g.un_dyn5)
density_dyn6 <- graph.density(g.un_dyn6)
density_dyn7 <- graph.density(g.un_dyn7)
density_dyn8 <- graph.density(g.un_dyn8)
density_dyn9 <- graph.density(g.un_dyn9)
density_dyn10 <- graph.density(g.un_dyn10)
density_dyn11 <- graph.density(g.un_dyn11)

density_dynsnap <- matrix(c(density_dyn1,density_dyn2,density_dyn3,density_dyn4,density_dyn5,density_dyn6,
                            density_dyn7,density_dyn8,density_dyn9,density_dyn10,density_dyn11),ncol=1,byrow=TRUE)
colnames(density_dynsnap) <- c("density") 
rownames(density_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
density_dynsnap <- as.table(density_dynsnap)
density_dynsnap <- as.data.frame(density_dynsnap)
density_dynsnap <- density_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_density.pdf")
ggplot(density_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(density_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 2) + ylab("Density")
dev.off()

################## ASSORTATIVITY
# do high degree nodes mostly interact with other high degree nodes
#correlation between nodes of similar degree, while negative values indicate relationships between nodes of different degree
assortativity_dyn1 <- assortativity(g.un_dyn1, types1 = nodes_dyn1$name) 
assortativity_dyn2 <- assortativity(g.un_dyn2, types1 = nodes_dyn2$name) 
assortativity_dyn3 <- assortativity(g.un_dyn3, types1 = nodes_dyn3$name) 
assortativity_dyn4 <- assortativity(g.un_dyn4, types1 = nodes_dyn4$name) 
assortativity_dyn5 <- assortativity(g.un_dyn5, types1 = nodes_dyn5$name) 
assortativity_dyn6 <- assortativity(g.un_dyn6, types1 = nodes_dyn6$name) 
assortativity_dyn7 <- assortativity(g.un_dyn7, types1 = nodes_dyn7$name) 
assortativity_dyn8 <- assortativity(g.un_dyn8, types1 = nodes_dyn8$name) 
assortativity_dyn9 <- assortativity(g.un_dyn9, types1 = nodes_dyn9$name) 
assortativity_dyn10 <- assortativity(g.un_dyn10, types1 = nodes_dyn10$name) 
assortativity_dyn11 <- assortativity(g.un_dyn11, types1 = nodes_dyn11$name) 

assortativity_dynsnap <- matrix(c(assortativity_dyn1,assortativity_dyn2,assortativity_dyn3,assortativity_dyn4,assortativity_dyn5,assortativity_dyn6,
                                 assortativity_dyn7,assortativity_dyn8,assortativity_dyn9,assortativity_dyn10,assortativity_dyn11),ncol=1,byrow=TRUE)
colnames(assortativity_dynsnap) <- c("assortativity") 
rownames(assortativity_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
assortativity_dynsnap <- as.table(assortativity_dynsnap)
assortativity_dynsnap <- as.data.frame(assortativity_dynsnap)
assortativity_dynsnap <- assortativity_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_assortativity.pdf")
ggplot(assortativity_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(assortativity_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Assortativity")
dev.off()


assortativity.simp_dyn1 <- assortativity(g.simp.un_dyn1, types1 = nodes_dyn1$name) 
assortativity.simp_dyn2 <- assortativity(g.simp.un_dyn2, types1 = nodes_dyn2$name) 
assortativity.simp_dyn3 <- assortativity(g.simp.un_dyn3, types1 = nodes_dyn3$name) 
assortativity.simp_dyn4 <- assortativity(g.simp.un_dyn4, types1 = nodes_dyn4$name) 
assortativity.simp_dyn5 <- assortativity(g.simp.un_dyn5, types1 = nodes_dyn5$name) 
assortativity.simp_dyn6 <- assortativity(g.simp.un_dyn6, types1 = nodes_dyn6$name) 
assortativity.simp_dyn7 <- assortativity(g.simp.un_dyn7, types1 = nodes_dyn7$name) 
assortativity.simp_dyn8 <- assortativity(g.simp.un_dyn8, types1 = nodes_dyn8$name) 
assortativity.simp_dyn9 <- assortativity(g.simp.un_dyn9, types1 = nodes_dyn9$name) 
assortativity.simp_dyn10 <- assortativity(g.simp.un_dyn10, types1 = nodes_dyn10$name) 
assortativity.simp_dyn11 <- assortativity(g.simp.un_dyn11, types1 = nodes_dyn11$name) 

assortativity.simp_dynsnap <- matrix(c(assortativity.simp_dyn1,assortativity.simp_dyn2,assortativity.simp_dyn3,assortativity.simp_dyn4,assortativity.simp_dyn5,assortativity.simp_dyn6,
                                  assortativity.simp_dyn7,assortativity.simp_dyn8,assortativity.simp_dyn9,assortativity.simp_dyn10,assortativity.simp_dyn11),ncol=1,byrow=TRUE)
colnames(assortativity.simp_dynsnap) <- c("assortativity.simp") 
rownames(assortativity.simp_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
assortativity.simp_dynsnap <- as.table(assortativity.simp_dynsnap)
assortativity.simp_dynsnap <- as.data.frame(assortativity.simp_dynsnap)
assortativity.simp_dynsnap <- assortativity.simp_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_assortativity.simp.pdf")
ggplot(assortativity.simp_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(assortativity.simp_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Assortativity.simp")
dev.off()



################## PATHLENGTH
###average path length = mean distance
avgpathlength_dyn1 <- average.path.length(g.un_dyn1)
avgpathlength_dyn2 <- average.path.length(g.un_dyn2)
avgpathlength_dyn3 <- average.path.length(g.un_dyn3)
avgpathlength_dyn4 <- average.path.length(g.un_dyn4)
avgpathlength_dyn5 <- average.path.length(g.un_dyn5)
avgpathlength_dyn6 <- average.path.length(g.un_dyn6)
avgpathlength_dyn7 <- average.path.length(g.un_dyn7)
avgpathlength_dyn8 <- average.path.length(g.un_dyn8)
avgpathlength_dyn9 <- average.path.length(g.un_dyn9)
avgpathlength_dyn10 <- average.path.length(g.un_dyn10)
avgpathlength_dyn11 <- average.path.length(g.un_dyn11)

avgpathlength_dynsnap <- matrix(c(avgpathlength_dyn1,avgpathlength_dyn2,avgpathlength_dyn3,avgpathlength_dyn4,avgpathlength_dyn5,avgpathlength_dyn6,
                                       avgpathlength_dyn7,avgpathlength_dyn8,avgpathlength_dyn9,avgpathlength_dyn10,avgpathlength_dyn11),ncol=1,byrow=TRUE)
colnames(avgpathlength_dynsnap) <- c("avgpathlength") 
rownames(avgpathlength_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
avgpathlength_dynsnap <- as.table(avgpathlength_dynsnap)
avgpathlength_dynsnap <- as.data.frame(avgpathlength_dynsnap)
avgpathlength_dynsnap <- avgpathlength_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_avgpathlength.pdf")
ggplot(avgpathlength_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(avgpathlength_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 5) + ylab("Average path length")
dev.off()

###Diameter: 
#longest path between two nodes (size of network)
diameter_dyn1 <- diameter(g.un_dyn1) 
diameter_dyn2 <- diameter(g.un_dyn2) 
diameter_dyn3 <- diameter(g.un_dyn3) 
diameter_dyn4 <- diameter(g.un_dyn4) 
diameter_dyn5 <- diameter(g.un_dyn5) 
diameter_dyn6 <- diameter(g.un_dyn6) 
diameter_dyn7 <- diameter(g.un_dyn7) 
diameter_dyn8 <- diameter(g.un_dyn8) 
diameter_dyn9 <- diameter(g.un_dyn9) 
diameter_dyn10 <- diameter(g.un_dyn10) 
diameter_dyn11 <- diameter(g.un_dyn11) 

diameter_dynsnap <- matrix(c(diameter_dyn1,diameter_dyn2,diameter_dyn3,diameter_dyn4,diameter_dyn5,diameter_dyn6,
                                 diameter_dyn7,diameter_dyn8,diameter_dyn9,diameter_dyn10,diameter_dyn11),ncol=1,byrow=TRUE)
colnames(diameter_dynsnap) <- c("diameter") 
rownames(diameter_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
diameter_dynsnap <- as.table(diameter_dynsnap)
diameter_dynsnap <- as.data.frame(diameter_dynsnap)
diameter_dynsnap <- diameter_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_diameter.pdf")
ggplot(diameter_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +
  xlab("Time") + ylim(0, 6) + ylab("Diameter")
dev.off()



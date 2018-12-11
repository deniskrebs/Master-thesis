
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./6_2_Split_timescale.R")
source("./2_LoadData.R") 


#################COMMUNITY DETECTION
##louvain - works only with undirected graphs
# each vertex is moved to the community with which it achieves the highest contribution to modularity. 
# When no vertices can be reassigned, each community is considered a vertex on its own, 
# and the process starts again with the merged communities
louvain_simp_dyn1 <- multilevel.community(g.simp.un_dyn1)
louvain_simp_dyn2 <- multilevel.community(g.simp.un_dyn2)
louvain_simp_dyn3 <- multilevel.community(g.simp.un_dyn3)
louvain_simp_dyn4 <- multilevel.community(g.simp.un_dyn4)
louvain_simp_dyn5 <- multilevel.community(g.simp.un_dyn5)
louvain_simp_dyn6 <- multilevel.community(g.simp.un_dyn6)
louvain_simp_dyn7 <- multilevel.community(g.simp.un_dyn7)
louvain_simp_dyn8 <- multilevel.community(g.simp.un_dyn8)
louvain_simp_dyn9 <- multilevel.community(g.simp.un_dyn9)
louvain_simp_dyn10 <- multilevel.community(g.simp.un_dyn10)
louvain_simp_dyn11 <- multilevel.community(g.simp.un_dyn11)


##walktrap
walktrap_simp_dyn1 <- walktrap.community(g.simp.un_dyn1)
walktrap_simp_dyn2 <- walktrap.community(g.simp.un_dyn2)
walktrap_simp_dyn3 <- walktrap.community(g.simp.un_dyn3)
walktrap_simp_dyn4 <- walktrap.community(g.simp.un_dyn4)
walktrap_simp_dyn5 <- walktrap.community(g.simp.un_dyn5)
walktrap_simp_dyn6 <- walktrap.community(g.simp.un_dyn6)
walktrap_simp_dyn7 <- walktrap.community(g.simp.un_dyn7)
walktrap_simp_dyn8 <- walktrap.community(g.simp.un_dyn8)
walktrap_simp_dyn9 <- walktrap.community(g.simp.un_dyn9)
walktrap_simp_dyn10 <- walktrap.community(g.simp.un_dyn10)
walktrap_simp_dyn11 <- walktrap.community(g.simp.un_dyn11)


##label propagation
labelpropagation_simp_dyn1 <- label.propagation.community(g.simp.un_dyn1)
labelpropagation_simp_dyn2 <- label.propagation.community(g.simp.un_dyn2)
labelpropagation_simp_dyn3 <- label.propagation.community(g.simp.un_dyn3)
labelpropagation_simp_dyn4 <- label.propagation.community(g.simp.un_dyn4)
labelpropagation_simp_dyn5 <- label.propagation.community(g.simp.un_dyn5)
labelpropagation_simp_dyn6 <- label.propagation.community(g.simp.un_dyn6)
labelpropagation_simp_dyn7 <- label.propagation.community(g.simp.un_dyn7)
labelpropagation_simp_dyn8 <- label.propagation.community(g.simp.un_dyn8)
labelpropagation_simp_dyn9 <- label.propagation.community(g.simp.un_dyn9)
labelpropagation_simp_dyn10 <- label.propagation.community(g.simp.un_dyn10)
labelpropagation_simp_dyn11 <- label.propagation.community(g.simp.un_dyn11)


###COMPARISON
#Sizes
comm_louvain_sizes_dyn1 <- as.data.frame(mean(sizes(louvain_simp_dyn1)))
comm_louvain_sizes_dyn1$Community.sizes <- "dyn1"
colnames(comm_louvain_sizes_dyn1)[1] <- "mean"
comm_louvain_sizes_dyn2 <- as.data.frame(mean(sizes(louvain_simp_dyn2)))
comm_louvain_sizes_dyn2$Community.sizes <- "dyn2"
colnames(comm_louvain_sizes_dyn2)[1] <- "mean"
comm_louvain_sizes_dyn3 <- as.data.frame(mean(sizes(louvain_simp_dyn3)))
comm_louvain_sizes_dyn3$Community.sizes <- "dyn3"
colnames(comm_louvain_sizes_dyn3)[1] <- "mean"
comm_louvain_sizes_dyn4 <- as.data.frame(mean(sizes(louvain_simp_dyn4)))
comm_louvain_sizes_dyn4$Community.sizes <- "dyn4"
colnames(comm_louvain_sizes_dyn4)[1] <- "mean"
comm_louvain_sizes_dyn5 <- as.data.frame(mean(sizes(louvain_simp_dyn5)))
comm_louvain_sizes_dyn5$Community.sizes <- "dyn5"
colnames(comm_louvain_sizes_dyn5)[1] <- "mean"
comm_louvain_sizes_dyn6 <- as.data.frame(mean(sizes(louvain_simp_dyn6)))
comm_louvain_sizes_dyn6$Community.sizes <- "dyn6"
colnames(comm_louvain_sizes_dyn6)[1] <- "mean"
comm_louvain_sizes_dyn7 <- as.data.frame(mean(sizes(louvain_simp_dyn7)))
comm_louvain_sizes_dyn7$Community.sizes <- "dyn7"
colnames(comm_louvain_sizes_dyn7)[1] <- "mean"
comm_louvain_sizes_dyn8 <- as.data.frame(mean(sizes(louvain_simp_dyn8)))
comm_louvain_sizes_dyn8$Community.sizes <- "dyn8"
colnames(comm_louvain_sizes_dyn8)[1] <- "mean"
comm_louvain_sizes_dyn9 <- as.data.frame(mean(sizes(louvain_simp_dyn9)))
comm_louvain_sizes_dyn9$Community.sizes <- "dyn9"
colnames(comm_louvain_sizes_dyn9)[1] <- "mean"
comm_louvain_sizes_dyn10 <- as.data.frame(mean(sizes(louvain_simp_dyn10)))
comm_louvain_sizes_dyn10$Community.sizes <- "dyn10"
colnames(comm_louvain_sizes_dyn10)[1] <- "mean"
comm_louvain_sizes_dyn11 <- as.data.frame(mean(sizes(louvain_simp_dyn11)))
comm_louvain_sizes_dyn11$Community.sizes <- "dyn11"
colnames(comm_louvain_sizes_dyn11)[1] <- "mean"
dynsnap_comm_louvain_sizes <- rbind(comm_louvain_sizes_dyn1, comm_louvain_sizes_dyn2, comm_louvain_sizes_dyn3, comm_louvain_sizes_dyn4, comm_louvain_sizes_dyn5, 
                                    comm_louvain_sizes_dyn6, comm_louvain_sizes_dyn7, comm_louvain_sizes_dyn8, comm_louvain_sizes_dyn9, comm_louvain_sizes_dyn10, 
                                    comm_louvain_sizes_dyn11)
dynsnap_comm_louvain_sizes$algorithm <- "louvain"

comm_walktrap_sizes_dyn1 <- as.data.frame(mean(sizes(walktrap_simp_dyn1)))
comm_walktrap_sizes_dyn1$Community.sizes <- "dyn1"
colnames(comm_walktrap_sizes_dyn1)[1] <- "mean"
comm_walktrap_sizes_dyn2 <- as.data.frame(mean(sizes(walktrap_simp_dyn2)))
comm_walktrap_sizes_dyn2$Community.sizes <- "dyn2"
colnames(comm_walktrap_sizes_dyn2)[1] <- "mean"
comm_walktrap_sizes_dyn3 <- as.data.frame(mean(sizes(walktrap_simp_dyn3)))
comm_walktrap_sizes_dyn3$Community.sizes <- "dyn3"
colnames(comm_walktrap_sizes_dyn3)[1] <- "mean"
comm_walktrap_sizes_dyn4 <- as.data.frame(mean(sizes(walktrap_simp_dyn4)))
comm_walktrap_sizes_dyn4$Community.sizes <- "dyn4"
colnames(comm_walktrap_sizes_dyn4)[1] <- "mean"
comm_walktrap_sizes_dyn5 <- as.data.frame(mean(sizes(walktrap_simp_dyn5)))
comm_walktrap_sizes_dyn5$Community.sizes <- "dyn5"
colnames(comm_walktrap_sizes_dyn5)[1] <- "mean"
comm_walktrap_sizes_dyn6 <- as.data.frame(mean(sizes(walktrap_simp_dyn6)))
comm_walktrap_sizes_dyn6$Community.sizes <- "dyn6"
colnames(comm_walktrap_sizes_dyn6)[1] <- "mean"
comm_walktrap_sizes_dyn7 <- as.data.frame(mean(sizes(walktrap_simp_dyn7)))
comm_walktrap_sizes_dyn7$Community.sizes <- "dyn7"
colnames(comm_walktrap_sizes_dyn7)[1] <- "mean"
comm_walktrap_sizes_dyn8 <- as.data.frame(mean(sizes(walktrap_simp_dyn8)))
comm_walktrap_sizes_dyn8$Community.sizes <- "dyn8"
colnames(comm_walktrap_sizes_dyn8)[1] <- "mean"
comm_walktrap_sizes_dyn9 <- as.data.frame(mean(sizes(walktrap_simp_dyn9)))
comm_walktrap_sizes_dyn9$Community.sizes <- "dyn9"
colnames(comm_walktrap_sizes_dyn9)[1] <- "mean"
comm_walktrap_sizes_dyn10 <- as.data.frame(mean(sizes(walktrap_simp_dyn10)))
comm_walktrap_sizes_dyn10$Community.sizes <- "dyn10"
colnames(comm_walktrap_sizes_dyn10)[1] <- "mean"
comm_walktrap_sizes_dyn11 <- as.data.frame(mean(sizes(walktrap_simp_dyn11)))
comm_walktrap_sizes_dyn11$Community.sizes <- "dyn11"
colnames(comm_walktrap_sizes_dyn11)[1] <- "mean"
dynsnap_comm_walktrap_sizes <- rbind(comm_walktrap_sizes_dyn1, comm_walktrap_sizes_dyn2, comm_walktrap_sizes_dyn3, comm_walktrap_sizes_dyn4, comm_walktrap_sizes_dyn5, 
                                    comm_walktrap_sizes_dyn6, comm_walktrap_sizes_dyn7, comm_walktrap_sizes_dyn8, comm_walktrap_sizes_dyn9, comm_walktrap_sizes_dyn10, 
                                    comm_walktrap_sizes_dyn11)
dynsnap_comm_walktrap_sizes$algorithm <- "walktrap"

comm_labelpropagation_sizes_dyn1 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn1)))
comm_labelpropagation_sizes_dyn1$Community.sizes <- "dyn1"
colnames(comm_labelpropagation_sizes_dyn1)[1] <- "mean"
comm_labelpropagation_sizes_dyn2 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn2)))
comm_labelpropagation_sizes_dyn2$Community.sizes <- "dyn2"
colnames(comm_labelpropagation_sizes_dyn2)[1] <- "mean"
comm_labelpropagation_sizes_dyn3 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn3)))
comm_labelpropagation_sizes_dyn3$Community.sizes <- "dyn3"
colnames(comm_labelpropagation_sizes_dyn3)[1] <- "mean"
comm_labelpropagation_sizes_dyn4 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn4)))
comm_labelpropagation_sizes_dyn4$Community.sizes <- "dyn4"
colnames(comm_labelpropagation_sizes_dyn4)[1] <- "mean"
comm_labelpropagation_sizes_dyn5 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn5)))
comm_labelpropagation_sizes_dyn5$Community.sizes <- "dyn5"
colnames(comm_labelpropagation_sizes_dyn5)[1] <- "mean"
comm_labelpropagation_sizes_dyn6 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn6)))
comm_labelpropagation_sizes_dyn6$Community.sizes <- "dyn6"
colnames(comm_labelpropagation_sizes_dyn6)[1] <- "mean"
comm_labelpropagation_sizes_dyn7 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn7)))
comm_labelpropagation_sizes_dyn7$Community.sizes <- "dyn7"
colnames(comm_labelpropagation_sizes_dyn7)[1] <- "mean"
comm_labelpropagation_sizes_dyn8 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn8)))
comm_labelpropagation_sizes_dyn8$Community.sizes <- "dyn8"
colnames(comm_labelpropagation_sizes_dyn8)[1] <- "mean"
comm_labelpropagation_sizes_dyn9 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn9)))
comm_labelpropagation_sizes_dyn9$Community.sizes <- "dyn9"
colnames(comm_labelpropagation_sizes_dyn9)[1] <- "mean"
comm_labelpropagation_sizes_dyn10 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn10)))
comm_labelpropagation_sizes_dyn10$Community.sizes <- "dyn10"
colnames(comm_labelpropagation_sizes_dyn10)[1] <- "mean"
comm_labelpropagation_sizes_dyn11 <- as.data.frame(mean(sizes(labelpropagation_simp_dyn11)))
comm_labelpropagation_sizes_dyn11$Community.sizes <- "dyn11"
colnames(comm_labelpropagation_sizes_dyn11)[1] <- "mean"
dynsnap_comm_labelpropagation_sizes <- rbind(comm_labelpropagation_sizes_dyn1, comm_labelpropagation_sizes_dyn2, comm_labelpropagation_sizes_dyn3, comm_labelpropagation_sizes_dyn4, comm_labelpropagation_sizes_dyn5, 
                                    comm_labelpropagation_sizes_dyn6, comm_labelpropagation_sizes_dyn7, comm_labelpropagation_sizes_dyn8, comm_labelpropagation_sizes_dyn9, comm_labelpropagation_sizes_dyn10, 
                                    comm_labelpropagation_sizes_dyn11)
dynsnap_comm_labelpropagation_sizes$algorithm <- "labelpropagation"

admin_groups_dyn1 <- as.data.frame(vcount(g.simp.un_dyn1)/18)
admin_groups_dyn1$Community.sizes <- "dyn1"
colnames(admin_groups_dyn1)[1] <- "mean"
admin_groups_dyn2 <- as.data.frame(vcount(g.simp.un_dyn2)/18)
admin_groups_dyn2$Community.sizes <- "dyn2"
colnames(admin_groups_dyn2)[1] <- "mean"
admin_groups_dyn3 <- as.data.frame(vcount(g.simp.un_dyn3)/18)
admin_groups_dyn3$Community.sizes <- "dyn3"
colnames(admin_groups_dyn3)[1] <- "mean"
admin_groups_dyn4 <- as.data.frame(vcount(g.simp.un_dyn4)/18)
admin_groups_dyn4$Community.sizes <- "dyn4"
colnames(admin_groups_dyn4)[1] <- "mean"
admin_groups_dyn5 <- as.data.frame(vcount(g.simp.un_dyn5)/18)
admin_groups_dyn5$Community.sizes <- "dyn5"
colnames(admin_groups_dyn5)[1] <- "mean"
admin_groups_dyn6 <- as.data.frame(vcount(g.simp.un_dyn6)/18)
admin_groups_dyn6$Community.sizes <- "dyn6"
colnames(admin_groups_dyn6)[1] <- "mean"
admin_groups_dyn7 <- as.data.frame(vcount(g.simp.un_dyn7)/18)
admin_groups_dyn7$Community.sizes <- "dyn7"
colnames(admin_groups_dyn7)[1] <- "mean"
admin_groups_dyn8 <- as.data.frame(vcount(g.simp.un_dyn8)/18)
admin_groups_dyn8$Community.sizes <- "dyn8"
colnames(admin_groups_dyn8)[1] <- "mean"
admin_groups_dyn9 <- as.data.frame(vcount(g.simp.un_dyn9)/18)
admin_groups_dyn9$Community.sizes <- "dyn9"
colnames(admin_groups_dyn9)[1] <- "mean"
admin_groups_dyn10 <- as.data.frame(vcount(g.simp.un_dyn10)/18)
admin_groups_dyn10$Community.sizes <- "dyn10"
colnames(admin_groups_dyn10)[1] <- "mean"
admin_groups_dyn11 <- as.data.frame(vcount(g.simp.un_dyn11)/18)
admin_groups_dyn11$Community.sizes <- "dyn11"
colnames(admin_groups_dyn11)[1] <- "mean"
dynsnap_comm_admin_goups_sizes <- rbind(admin_groups_dyn1, admin_groups_dyn2, admin_groups_dyn3, admin_groups_dyn4, admin_groups_dyn5, admin_groups_dyn6, 
                                        admin_groups_dyn7, admin_groups_dyn8, admin_groups_dyn9, admin_groups_dyn10, admin_groups_dyn11)
dynsnap_comm_admin_goups_sizes$algorithm <- "administrativ"

dynsnap_comm_sizes <- rbind(dynsnap_comm_louvain_sizes, dynsnap_comm_walktrap_sizes, dynsnap_comm_labelpropagation_sizes, dynsnap_comm_admin_goups_sizes)
dynsnap_comm_sizes$Community.sizes <- factor(dynsnap_comm_sizes$Community.sizes, levels=c("dyn1", "dyn2", "dyn3", "dyn4", "dyn5", "dyn6", "dyn7", "dyn8", "dyn9", "dyn10", "dyn11"))
pdf("./R_Output/6.2/dynsnap_comm_sizes.pdf")
ggplot(dynsnap_comm_sizes, aes(x=Community.sizes, y=mean, group = algorithm)) +
  geom_point() + geom_line(aes(colour=algorithm)) + 
  xlab("Time") + ylim(0, 60) + ylab("Mean community sizes")
dev.off()



#Modularity
comm_mod_louvain_dyn1 <- modularity(louvain_simp_dyn1)
comm_mod_louvain_dyn2 <- modularity(louvain_simp_dyn2)
comm_mod_louvain_dyn3 <- modularity(louvain_simp_dyn3)
comm_mod_louvain_dyn4 <- modularity(louvain_simp_dyn4)
comm_mod_louvain_dyn5 <- modularity(louvain_simp_dyn5)
comm_mod_louvain_dyn6 <- modularity(louvain_simp_dyn6)
comm_mod_louvain_dyn7 <- modularity(louvain_simp_dyn7)
comm_mod_louvain_dyn8 <- modularity(louvain_simp_dyn8)
comm_mod_louvain_dyn9 <- modularity(louvain_simp_dyn9)
comm_mod_louvain_dyn10 <- modularity(louvain_simp_dyn10)
comm_mod_louvain_dyn11 <- modularity(louvain_simp_dyn11)

comm_mod_louvain_dynsnap <- matrix(c(comm_mod_louvain_dyn1,comm_mod_louvain_dyn2,comm_mod_louvain_dyn3,comm_mod_louvain_dyn4,comm_mod_louvain_dyn5,comm_mod_louvain_dyn6,
                                     comm_mod_louvain_dyn7,comm_mod_louvain_dyn8,comm_mod_louvain_dyn9,comm_mod_louvain_dyn10,comm_mod_louvain_dyn11),ncol=1,byrow=TRUE)
colnames(comm_mod_louvain_dynsnap) <- c("modularity_louvain") 
rownames(comm_mod_louvain_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
comm_mod_louvain_dynsnap <- as.table(comm_mod_louvain_dynsnap)
comm_mod_louvain_dynsnap <- as.data.frame(comm_mod_louvain_dynsnap)
comm_mod_louvain_dynsnap <- comm_mod_louvain_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_modularity.pdf")
ggplot(comm_mod_louvain_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(comm_mod_louvain_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Modularity louvain")
dev.off()



comm_mod_walktrap_dyn1 <- modularity(walktrap_simp_dyn1)
comm_mod_walktrap_dyn2 <- modularity(walktrap_simp_dyn2)
comm_mod_walktrap_dyn3 <- modularity(walktrap_simp_dyn3)
comm_mod_walktrap_dyn4 <- modularity(walktrap_simp_dyn4)
comm_mod_walktrap_dyn5 <- modularity(walktrap_simp_dyn5)
comm_mod_walktrap_dyn6 <- modularity(walktrap_simp_dyn6)
comm_mod_walktrap_dyn7 <- modularity(walktrap_simp_dyn7)
comm_mod_walktrap_dyn8 <- modularity(walktrap_simp_dyn8)
comm_mod_walktrap_dyn9 <- modularity(walktrap_simp_dyn9)
comm_mod_walktrap_dyn10 <- modularity(walktrap_simp_dyn10)
comm_mod_walktrap_dyn11 <- modularity(walktrap_simp_dyn11)

comm_mod_walktrap_dynsnap <- matrix(c(comm_mod_walktrap_dyn1,comm_mod_walktrap_dyn2,comm_mod_walktrap_dyn3,comm_mod_walktrap_dyn4,comm_mod_walktrap_dyn5,comm_mod_walktrap_dyn6,
                                     comm_mod_walktrap_dyn7,comm_mod_walktrap_dyn8,comm_mod_walktrap_dyn9,comm_mod_walktrap_dyn10,comm_mod_walktrap_dyn11),ncol=1,byrow=TRUE)
colnames(comm_mod_walktrap_dynsnap) <- c("modularity_walktrap") 
rownames(comm_mod_walktrap_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
comm_mod_walktrap_dynsnap <- as.table(comm_mod_walktrap_dynsnap)
comm_mod_walktrap_dynsnap <- as.data.frame(comm_mod_walktrap_dynsnap)
comm_mod_walktrap_dynsnap <- comm_mod_walktrap_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_walktrap_modularity.pdf")
ggplot(comm_mod_walktrap_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(comm_mod_walktrap_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Modularity walktrap")
dev.off()



comm_mod_labelpropagation_dyn1 <- modularity(labelpropagation_simp_dyn1)
comm_mod_labelpropagation_dyn2 <- modularity(labelpropagation_simp_dyn2)
comm_mod_labelpropagation_dyn3 <- modularity(labelpropagation_simp_dyn3)
comm_mod_labelpropagation_dyn4 <- modularity(labelpropagation_simp_dyn4)
comm_mod_labelpropagation_dyn5 <- modularity(labelpropagation_simp_dyn5)
comm_mod_labelpropagation_dyn6 <- modularity(labelpropagation_simp_dyn6)
comm_mod_labelpropagation_dyn7 <- modularity(labelpropagation_simp_dyn7)
comm_mod_labelpropagation_dyn8 <- modularity(labelpropagation_simp_dyn8)
comm_mod_labelpropagation_dyn9 <- modularity(labelpropagation_simp_dyn9)
comm_mod_labelpropagation_dyn10 <- modularity(labelpropagation_simp_dyn10)
comm_mod_labelpropagation_dyn11 <- modularity(labelpropagation_simp_dyn11)

comm_mod_labelpropagation_dynsnap <- matrix(c(comm_mod_labelpropagation_dyn1,comm_mod_labelpropagation_dyn2,comm_mod_labelpropagation_dyn3,comm_mod_labelpropagation_dyn4,comm_mod_labelpropagation_dyn5,comm_mod_labelpropagation_dyn6,
                                      comm_mod_labelpropagation_dyn7,comm_mod_labelpropagation_dyn8,comm_mod_labelpropagation_dyn9,comm_mod_labelpropagation_dyn10,comm_mod_labelpropagation_dyn11),ncol=1,byrow=TRUE)
colnames(comm_mod_labelpropagation_dynsnap) <- c("modularity_labelpropagation") 
rownames(comm_mod_labelpropagation_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
comm_mod_labelpropagation_dynsnap <- as.table(comm_mod_labelpropagation_dynsnap)
comm_mod_labelpropagation_dynsnap <- as.data.frame(comm_mod_labelpropagation_dynsnap)
comm_mod_labelpropagation_dynsnap <- comm_mod_labelpropagation_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_labelpropagation_modularity.pdf")
ggplot(comm_mod_labelpropagation_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_line() + geom_hline(yintercept = mean(comm_mod_labelpropagation_dynsnap$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Modularity labelpropagation")
dev.off()



# compare to "ground truth" (only core team, because site-group members have no subproject assigned)
# assess the distance between two community structures
#core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type", "sp1.type", "r1.type")]
#mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
#setnames(mem, c("ID", "louvain")) 
#final <- merge(mem, core_team, by = "ID")
#compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
#compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
#compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

# INTERPRETATION
# comparison to "ground truth" not reliable because real ground truth can not be easily detected by sp1.type, r1.type or 
# company.type. There should be a better classification of nodes than these 3
# Hypothesis 1 (more communication within subprojects than between) falsified (according to Assistent Zhao)
# louvain because it maximizes modularity (means less communication between communities than within)





# Assign every site-group member to the subproject with whichs members they communicate the most
source("./6_1_assignBGtoCommunity.R")


# compare louvain communities with new sp1.type (every node assigned to a subproject)
team <- ee[ee$degree > 0, c("ID", "company.type", "sp1.type", "r1.type")]

mem <- data.table(cbind(names(membership(louvain_simp_dyn1)), membership(louvain_simp_dyn1)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn1 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn1 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn1 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn2)), membership(louvain_simp_dyn2)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn2 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn2 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn2 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn3)), membership(louvain_simp_dyn3)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn3 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn3 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn3 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn4)), membership(louvain_simp_dyn4)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn4 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn4 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn4 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn5)), membership(louvain_simp_dyn5)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn5 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn5 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn5 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn6)), membership(louvain_simp_dyn6)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn6 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn6 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn6 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn7)), membership(louvain_simp_dyn7)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn7 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn7 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn7 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn8)), membership(louvain_simp_dyn8)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn8 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn8 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn8 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn9)), membership(louvain_simp_dyn9)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn9 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn9 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn9 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn10)), membership(louvain_simp_dyn10)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn10 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn10 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn10 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn11)), membership(louvain_simp_dyn11)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_dyn11 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_dyn11 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_dyn11 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role


dynsnap_comm_louvain_compare_company <- matrix(c(dynsnap_comm_louvain_compare_company_dyn1,dynsnap_comm_louvain_compare_company_dyn2,dynsnap_comm_louvain_compare_company_dyn3,dynsnap_comm_louvain_compare_company_dyn4,dynsnap_comm_louvain_compare_company_dyn5,dynsnap_comm_louvain_compare_company_dyn6,
                                                 dynsnap_comm_louvain_compare_company_dyn7,dynsnap_comm_louvain_compare_company_dyn8,dynsnap_comm_louvain_compare_company_dyn9,dynsnap_comm_louvain_compare_company_dyn10,dynsnap_comm_louvain_compare_company_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_company) <- c("dynsnap_comm_louvain_compare_company") 
rownames(dynsnap_comm_louvain_compare_company) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_company <- as.table(dynsnap_comm_louvain_compare_company)
dynsnap_comm_louvain_compare_company <- as.data.frame(dynsnap_comm_louvain_compare_company)
dynsnap_comm_louvain_compare_company <- dynsnap_comm_louvain_compare_company[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_company.pdf")
ggplot(dynsnap_comm_louvain_compare_company, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_company$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to company")
dev.off()


dynsnap_comm_louvain_compare_subproject <- matrix(c(dynsnap_comm_louvain_compare_subproject_dyn1,dynsnap_comm_louvain_compare_subproject_dyn2,dynsnap_comm_louvain_compare_subproject_dyn3,dynsnap_comm_louvain_compare_subproject_dyn4,dynsnap_comm_louvain_compare_subproject_dyn5,dynsnap_comm_louvain_compare_subproject_dyn6,
                                                 dynsnap_comm_louvain_compare_subproject_dyn7,dynsnap_comm_louvain_compare_subproject_dyn8,dynsnap_comm_louvain_compare_subproject_dyn9,dynsnap_comm_louvain_compare_subproject_dyn10,dynsnap_comm_louvain_compare_subproject_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_subproject) <- c("dynsnap_comm_louvain_compare_subproject") 
rownames(dynsnap_comm_louvain_compare_subproject) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_subproject <- as.table(dynsnap_comm_louvain_compare_subproject)
dynsnap_comm_louvain_compare_subproject <- as.data.frame(dynsnap_comm_louvain_compare_subproject)
dynsnap_comm_louvain_compare_subproject <- dynsnap_comm_louvain_compare_subproject[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_subproject.pdf")
ggplot(dynsnap_comm_louvain_compare_subproject, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_subproject$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to subproject")
dev.off()


dynsnap_comm_louvain_compare_role <- matrix(c(dynsnap_comm_louvain_compare_role_dyn1,dynsnap_comm_louvain_compare_role_dyn2,dynsnap_comm_louvain_compare_role_dyn3,dynsnap_comm_louvain_compare_role_dyn4,dynsnap_comm_louvain_compare_role_dyn5,dynsnap_comm_louvain_compare_role_dyn6,
                                                    dynsnap_comm_louvain_compare_role_dyn7,dynsnap_comm_louvain_compare_role_dyn8,dynsnap_comm_louvain_compare_role_dyn9,dynsnap_comm_louvain_compare_role_dyn10,dynsnap_comm_louvain_compare_role_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_role) <- c("dynsnap_comm_louvain_compare_role") 
rownames(dynsnap_comm_louvain_compare_role) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_role <- as.table(dynsnap_comm_louvain_compare_role)
dynsnap_comm_louvain_compare_role <- as.data.frame(dynsnap_comm_louvain_compare_role)
dynsnap_comm_louvain_compare_role <- dynsnap_comm_louvain_compare_role[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_role.pdf")
ggplot(dynsnap_comm_louvain_compare_role, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_role$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to role")
dev.off()



# compare walktrap communities with new sp1.type (every node assigned to a subproject)
mem <- data.table(cbind(names(membership(walktrap_simp_dyn1)), membership(walktrap_simp_dyn1)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn1 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn1 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn1 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn2)), membership(walktrap_simp_dyn2)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn2 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn2 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn2 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn3)), membership(walktrap_simp_dyn3)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn3 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn3 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn3 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn4)), membership(walktrap_simp_dyn4)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn4 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn4 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn4 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn5)), membership(walktrap_simp_dyn5)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn5 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn5 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn5 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn6)), membership(walktrap_simp_dyn6)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn6 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn6 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn6 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn7)), membership(walktrap_simp_dyn7)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn7 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn7 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn7 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn8)), membership(walktrap_simp_dyn8)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn8 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn8 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn8 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn9)), membership(walktrap_simp_dyn9)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn9 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn9 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn9 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn10)), membership(walktrap_simp_dyn10)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn10 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn10 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn10 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role

mem <- data.table(cbind(names(membership(walktrap_simp_dyn11)), membership(walktrap_simp_dyn11)))
setnames(mem, c("ID", "walktrap")) 
final <- merge(mem, ee, by = "ID")
final$walktrap <- as.numeric(as.character(final$walktrap))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_walktrap_compare_company_dyn11 <- compare(final$walktrap, final$company.type, method = "nmi") # walktrap-communities compared to company
dynsnap_comm_walktrap_compare_subproject_dyn11 <- compare(final$walktrap, final$sp1.type, method = "nmi") # walktrap-communities compared to subproject
dynsnap_comm_walktrap_compare_role_dyn11 <- compare(final$walktrap, final$r1.type, method = "nmi") # walktrap-communities compared to role


dynsnap_comm_walktrap_compare_company <- matrix(c(dynsnap_comm_walktrap_compare_company_dyn1,dynsnap_comm_walktrap_compare_company_dyn2,dynsnap_comm_walktrap_compare_company_dyn3,dynsnap_comm_walktrap_compare_company_dyn4,dynsnap_comm_walktrap_compare_company_dyn5,dynsnap_comm_walktrap_compare_company_dyn6,
                                                 dynsnap_comm_walktrap_compare_company_dyn7,dynsnap_comm_walktrap_compare_company_dyn8,dynsnap_comm_walktrap_compare_company_dyn9,dynsnap_comm_walktrap_compare_company_dyn10,dynsnap_comm_walktrap_compare_company_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_walktrap_compare_company) <- c("dynsnap_comm_walktrap_compare_company") 
rownames(dynsnap_comm_walktrap_compare_company) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_walktrap_compare_company <- as.table(dynsnap_comm_walktrap_compare_company)
dynsnap_comm_walktrap_compare_company <- as.data.frame(dynsnap_comm_walktrap_compare_company)
dynsnap_comm_walktrap_compare_company <- dynsnap_comm_walktrap_compare_company[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_walktrap_compare_company.pdf")
ggplot(dynsnap_comm_walktrap_compare_company, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_walktrap_compare_company$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare walktrap to company")
dev.off()


dynsnap_comm_walktrap_compare_subproject <- matrix(c(dynsnap_comm_walktrap_compare_subproject_dyn1,dynsnap_comm_walktrap_compare_subproject_dyn2,dynsnap_comm_walktrap_compare_subproject_dyn3,dynsnap_comm_walktrap_compare_subproject_dyn4,dynsnap_comm_walktrap_compare_subproject_dyn5,dynsnap_comm_walktrap_compare_subproject_dyn6,
                                                    dynsnap_comm_walktrap_compare_subproject_dyn7,dynsnap_comm_walktrap_compare_subproject_dyn8,dynsnap_comm_walktrap_compare_subproject_dyn9,dynsnap_comm_walktrap_compare_subproject_dyn10,dynsnap_comm_walktrap_compare_subproject_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_walktrap_compare_subproject) <- c("dynsnap_comm_walktrap_compare_subproject") 
rownames(dynsnap_comm_walktrap_compare_subproject) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_walktrap_compare_subproject <- as.table(dynsnap_comm_walktrap_compare_subproject)
dynsnap_comm_walktrap_compare_subproject <- as.data.frame(dynsnap_comm_walktrap_compare_subproject)
dynsnap_comm_walktrap_compare_subproject <- dynsnap_comm_walktrap_compare_subproject[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_walktrap_compare_subproject.pdf")
ggplot(dynsnap_comm_walktrap_compare_subproject, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_walktrap_compare_subproject$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare walktrap to subproject")
dev.off()


dynsnap_comm_walktrap_compare_role <- matrix(c(dynsnap_comm_walktrap_compare_role_dyn1,dynsnap_comm_walktrap_compare_role_dyn2,dynsnap_comm_walktrap_compare_role_dyn3,dynsnap_comm_walktrap_compare_role_dyn4,dynsnap_comm_walktrap_compare_role_dyn5,dynsnap_comm_walktrap_compare_role_dyn6,
                                              dynsnap_comm_walktrap_compare_role_dyn7,dynsnap_comm_walktrap_compare_role_dyn8,dynsnap_comm_walktrap_compare_role_dyn9,dynsnap_comm_walktrap_compare_role_dyn10,dynsnap_comm_walktrap_compare_role_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_walktrap_compare_role) <- c("dynsnap_comm_walktrap_compare_role") 
rownames(dynsnap_comm_walktrap_compare_role) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_walktrap_compare_role <- as.table(dynsnap_comm_walktrap_compare_role)
dynsnap_comm_walktrap_compare_role <- as.data.frame(dynsnap_comm_walktrap_compare_role)
dynsnap_comm_walktrap_compare_role <- dynsnap_comm_walktrap_compare_role[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_walktrap_compare_role.pdf")
ggplot(dynsnap_comm_walktrap_compare_role, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_walktrap_compare_role$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare walktrap to role")
dev.off()



# compare labelpropagation communities with new sp1.type (every node assigned to a subproject)
mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn1)), membership(labelpropagation_simp_dyn1)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn1 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn1 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn1 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn2)), membership(labelpropagation_simp_dyn2)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn2 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn2 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn2 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn3)), membership(labelpropagation_simp_dyn3)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn3 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn3 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn3 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn4)), membership(labelpropagation_simp_dyn4)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn4 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn4 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn4 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn5)), membership(labelpropagation_simp_dyn5)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn5 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn5 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn5 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn6)), membership(labelpropagation_simp_dyn6)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn6 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn6 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn6 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn7)), membership(labelpropagation_simp_dyn7)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn7 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn7 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn7 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn8)), membership(labelpropagation_simp_dyn8)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn8 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn8 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn8 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn9)), membership(labelpropagation_simp_dyn9)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn9 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn9 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn9 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn10)), membership(labelpropagation_simp_dyn10)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn10 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn10 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn10 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role

mem <- data.table(cbind(names(membership(labelpropagation_simp_dyn11)), membership(labelpropagation_simp_dyn11)))
setnames(mem, c("ID", "labelpropagation")) 
final <- merge(mem, ee, by = "ID")
final$labelpropagation <- as.numeric(as.character(final$labelpropagation))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_labelpropagation_compare_company_dyn11 <- compare(final$labelpropagation, final$company.type, method = "nmi") # labelpropagation-communities compared to company
dynsnap_comm_labelpropagation_compare_subproject_dyn11 <- compare(final$labelpropagation, final$sp1.type, method = "nmi") # labelpropagation-communities compared to subproject
dynsnap_comm_labelpropagation_compare_role_dyn11 <- compare(final$labelpropagation, final$r1.type, method = "nmi") # labelpropagation-communities compared to role


dynsnap_comm_labelpropagation_compare_company <- matrix(c(dynsnap_comm_labelpropagation_compare_company_dyn1,dynsnap_comm_labelpropagation_compare_company_dyn2,dynsnap_comm_labelpropagation_compare_company_dyn3,dynsnap_comm_labelpropagation_compare_company_dyn4,dynsnap_comm_labelpropagation_compare_company_dyn5,dynsnap_comm_labelpropagation_compare_company_dyn6,
                                                  dynsnap_comm_labelpropagation_compare_company_dyn7,dynsnap_comm_labelpropagation_compare_company_dyn8,dynsnap_comm_labelpropagation_compare_company_dyn9,dynsnap_comm_labelpropagation_compare_company_dyn10,dynsnap_comm_labelpropagation_compare_company_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_labelpropagation_compare_company) <- c("dynsnap_comm_labelpropagation_compare_company") 
rownames(dynsnap_comm_labelpropagation_compare_company) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_labelpropagation_compare_company <- as.table(dynsnap_comm_labelpropagation_compare_company)
dynsnap_comm_labelpropagation_compare_company <- as.data.frame(dynsnap_comm_labelpropagation_compare_company)
dynsnap_comm_labelpropagation_compare_company <- dynsnap_comm_labelpropagation_compare_company[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_labelpropagation_compare_company.pdf")
ggplot(dynsnap_comm_labelpropagation_compare_company, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_labelpropagation_compare_company$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare labelpropagation to company")
dev.off()


dynsnap_comm_labelpropagation_compare_subproject <- matrix(c(dynsnap_comm_labelpropagation_compare_subproject_dyn1,dynsnap_comm_labelpropagation_compare_subproject_dyn2,dynsnap_comm_labelpropagation_compare_subproject_dyn3,dynsnap_comm_labelpropagation_compare_subproject_dyn4,dynsnap_comm_labelpropagation_compare_subproject_dyn5,dynsnap_comm_labelpropagation_compare_subproject_dyn6,
                                                    dynsnap_comm_labelpropagation_compare_subproject_dyn7,dynsnap_comm_labelpropagation_compare_subproject_dyn8,dynsnap_comm_labelpropagation_compare_subproject_dyn9,dynsnap_comm_labelpropagation_compare_subproject_dyn10,dynsnap_comm_labelpropagation_compare_subproject_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_labelpropagation_compare_subproject) <- c("dynsnap_comm_labelpropagation_compare_subproject") 
rownames(dynsnap_comm_labelpropagation_compare_subproject) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_labelpropagation_compare_subproject <- as.table(dynsnap_comm_labelpropagation_compare_subproject)
dynsnap_comm_labelpropagation_compare_subproject <- as.data.frame(dynsnap_comm_labelpropagation_compare_subproject)
dynsnap_comm_labelpropagation_compare_subproject <- dynsnap_comm_labelpropagation_compare_subproject[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_labelpropagation_compare_subproject.pdf")
ggplot(dynsnap_comm_labelpropagation_compare_subproject, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_labelpropagation_compare_subproject$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare labelpropagation to subproject")
dev.off()


dynsnap_comm_labelpropagation_compare_role <- matrix(c(dynsnap_comm_labelpropagation_compare_role_dyn1,dynsnap_comm_labelpropagation_compare_role_dyn2,dynsnap_comm_labelpropagation_compare_role_dyn3,dynsnap_comm_labelpropagation_compare_role_dyn4,dynsnap_comm_labelpropagation_compare_role_dyn5,dynsnap_comm_labelpropagation_compare_role_dyn6,
                                              dynsnap_comm_labelpropagation_compare_role_dyn7,dynsnap_comm_labelpropagation_compare_role_dyn8,dynsnap_comm_labelpropagation_compare_role_dyn9,dynsnap_comm_labelpropagation_compare_role_dyn10,dynsnap_comm_labelpropagation_compare_role_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_labelpropagation_compare_role) <- c("dynsnap_comm_labelpropagation_compare_role") 
rownames(dynsnap_comm_labelpropagation_compare_role) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_labelpropagation_compare_role <- as.table(dynsnap_comm_labelpropagation_compare_role)
dynsnap_comm_labelpropagation_compare_role <- as.data.frame(dynsnap_comm_labelpropagation_compare_role)
dynsnap_comm_labelpropagation_compare_role <- dynsnap_comm_labelpropagation_compare_role[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_labelpropagation_compare_role.pdf")
ggplot(dynsnap_comm_labelpropagation_compare_role, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_labelpropagation_compare_role$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare labelpropagation to role")
dev.off()






# Hypothesis 3:
# Lack of information for site groups about other subprojects
# louvain communities should fit better to subprojecs for site group members than for core team members

# fit for site group members:
# compare to "ground truth" to louvain communities for core team

BG_team <- cc[cc$r1.type == 1, c("ID", "company.type", "sp1.type", "r1.type")]


mem <- data.table(cbind(names(membership(louvain_simp_dyn1)), membership(louvain_simp_dyn1)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn1 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn1 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn1 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn2)), membership(louvain_simp_dyn2)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn2 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn2 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn2 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn3)), membership(louvain_simp_dyn3)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn3 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn3 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn3 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn4)), membership(louvain_simp_dyn4)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn4 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn4 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn4 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn5)), membership(louvain_simp_dyn5)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn5 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn5 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn5 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn6)), membership(louvain_simp_dyn6)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn6 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn6 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn6 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn7)), membership(louvain_simp_dyn7)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn7 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn7 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn7 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn8)), membership(louvain_simp_dyn8)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn8 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn8 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn8 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn9)), membership(louvain_simp_dyn9)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn9 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn9 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn9 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn10)), membership(louvain_simp_dyn10)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn10 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn10 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn10 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn11)), membership(louvain_simp_dyn11)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, BG_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_SG_dyn11 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_SG_dyn11 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_SG_dyn11 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role


dynsnap_comm_louvain_compare_company_SG <- matrix(c(dynsnap_comm_louvain_compare_company_SG_dyn1,dynsnap_comm_louvain_compare_company_SG_dyn2,dynsnap_comm_louvain_compare_company_SG_dyn3,dynsnap_comm_louvain_compare_company_SG_dyn4,dynsnap_comm_louvain_compare_company_SG_dyn5,dynsnap_comm_louvain_compare_company_SG_dyn6,
                                                 dynsnap_comm_louvain_compare_company_SG_dyn7,dynsnap_comm_louvain_compare_company_SG_dyn8,dynsnap_comm_louvain_compare_company_SG_dyn9,dynsnap_comm_louvain_compare_company_SG_dyn10,dynsnap_comm_louvain_compare_company_SG_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_company_SG) <- c("dynsnap_comm_louvain_compare_company_SG") 
rownames(dynsnap_comm_louvain_compare_company_SG) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_company_SG <- as.table(dynsnap_comm_louvain_compare_company_SG)
dynsnap_comm_louvain_compare_company_SG <- as.data.frame(dynsnap_comm_louvain_compare_company_SG)
dynsnap_comm_louvain_compare_company_SG <- dynsnap_comm_louvain_compare_company_SG[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_company_SG.pdf")
ggplot(dynsnap_comm_louvain_compare_company_SG, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_company_SG$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to company (site-groups)")
dev.off()


dynsnap_comm_louvain_compare_subproject_SG <- matrix(c(dynsnap_comm_louvain_compare_subproject_SG_dyn1,dynsnap_comm_louvain_compare_subproject_SG_dyn2,dynsnap_comm_louvain_compare_subproject_SG_dyn3,dynsnap_comm_louvain_compare_subproject_SG_dyn4,dynsnap_comm_louvain_compare_subproject_SG_dyn5,dynsnap_comm_louvain_compare_subproject_SG_dyn6,
                                                    dynsnap_comm_louvain_compare_subproject_SG_dyn7,dynsnap_comm_louvain_compare_subproject_SG_dyn8,dynsnap_comm_louvain_compare_subproject_SG_dyn9,dynsnap_comm_louvain_compare_subproject_SG_dyn10,dynsnap_comm_louvain_compare_subproject_SG_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_subproject_SG) <- c("dynsnap_comm_louvain_compare_subproject_SG") 
rownames(dynsnap_comm_louvain_compare_subproject_SG) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_subproject_SG <- as.table(dynsnap_comm_louvain_compare_subproject_SG)
dynsnap_comm_louvain_compare_subproject_SG <- as.data.frame(dynsnap_comm_louvain_compare_subproject_SG)
dynsnap_comm_louvain_compare_subproject_SG <- dynsnap_comm_louvain_compare_subproject_SG[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_subproject_SG.pdf")
ggplot(dynsnap_comm_louvain_compare_subproject_SG, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_subproject_SG$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to subproject (site-groups)")
dev.off()


dynsnap_comm_louvain_compare_role_SG <- matrix(c(dynsnap_comm_louvain_compare_role_SG_dyn1,dynsnap_comm_louvain_compare_role_SG_dyn2,dynsnap_comm_louvain_compare_role_SG_dyn3,dynsnap_comm_louvain_compare_role_SG_dyn4,dynsnap_comm_louvain_compare_role_SG_dyn5,dynsnap_comm_louvain_compare_role_SG_dyn6,
                                              dynsnap_comm_louvain_compare_role_SG_dyn7,dynsnap_comm_louvain_compare_role_SG_dyn8,dynsnap_comm_louvain_compare_role_SG_dyn9,dynsnap_comm_louvain_compare_role_SG_dyn10,dynsnap_comm_louvain_compare_role_SG_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_role_SG) <- c("dynsnap_comm_louvain_compare_role_SG") 
rownames(dynsnap_comm_louvain_compare_role_SG) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_role_SG <- as.table(dynsnap_comm_louvain_compare_role_SG)
dynsnap_comm_louvain_compare_role_SG <- as.data.frame(dynsnap_comm_louvain_compare_role_SG)
dynsnap_comm_louvain_compare_role_SG <- dynsnap_comm_louvain_compare_role_SG[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_role_SG.pdf")
ggplot(dynsnap_comm_louvain_compare_role_SG, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_role_SG$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to role (site-groups)")
dev.off()
# 0 becaus every SG-member has role 1







# fit for core team members:
core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type", "sp1.type", "r1.type")]



mem <- data.table(cbind(names(membership(louvain_simp_dyn1)), membership(louvain_simp_dyn1)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn1 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn1 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn1 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn2)), membership(louvain_simp_dyn2)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn2 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn2 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn2 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn3)), membership(louvain_simp_dyn3)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn3 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn3 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn3 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn4)), membership(louvain_simp_dyn4)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn4 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn4 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn4 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn5)), membership(louvain_simp_dyn5)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn5 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn5 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn5 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn6)), membership(louvain_simp_dyn6)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn6 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn6 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn6 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn7)), membership(louvain_simp_dyn7)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn7 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn7 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn7 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn8)), membership(louvain_simp_dyn8)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn8 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn8 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn8 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn9)), membership(louvain_simp_dyn9)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn9 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn9 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn9 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn10)), membership(louvain_simp_dyn10)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn10 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn10 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn10 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role

mem <- data.table(cbind(names(membership(louvain_simp_dyn11)), membership(louvain_simp_dyn11)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, core_team, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
dynsnap_comm_louvain_compare_company_core_dyn11 <- compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
dynsnap_comm_louvain_compare_subproject_core_dyn11 <- compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
dynsnap_comm_louvain_compare_role_core_dyn11 <- compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role


dynsnap_comm_louvain_compare_company_core <- matrix(c(dynsnap_comm_louvain_compare_company_core_dyn1,dynsnap_comm_louvain_compare_company_core_dyn2,dynsnap_comm_louvain_compare_company_core_dyn3,dynsnap_comm_louvain_compare_company_core_dyn4,dynsnap_comm_louvain_compare_company_core_dyn5,dynsnap_comm_louvain_compare_company_core_dyn6,
                                                    dynsnap_comm_louvain_compare_company_core_dyn7,dynsnap_comm_louvain_compare_company_core_dyn8,dynsnap_comm_louvain_compare_company_core_dyn9,dynsnap_comm_louvain_compare_company_core_dyn10,dynsnap_comm_louvain_compare_company_core_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_company_core) <- c("dynsnap_comm_louvain_compare_company_core") 
rownames(dynsnap_comm_louvain_compare_company_core) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_company_core <- as.table(dynsnap_comm_louvain_compare_company_core)
dynsnap_comm_louvain_compare_company_core <- as.data.frame(dynsnap_comm_louvain_compare_company_core)
dynsnap_comm_louvain_compare_company_core <- dynsnap_comm_louvain_compare_company_core[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_company_core.pdf")
ggplot(dynsnap_comm_louvain_compare_company_core, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_company_core$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to company (core team)")
dev.off()


dynsnap_comm_louvain_compare_subproject_core <- matrix(c(dynsnap_comm_louvain_compare_subproject_core_dyn1,dynsnap_comm_louvain_compare_subproject_core_dyn2,dynsnap_comm_louvain_compare_subproject_core_dyn3,dynsnap_comm_louvain_compare_subproject_core_dyn4,dynsnap_comm_louvain_compare_subproject_core_dyn5,dynsnap_comm_louvain_compare_subproject_core_dyn6,
                                                       dynsnap_comm_louvain_compare_subproject_core_dyn7,dynsnap_comm_louvain_compare_subproject_core_dyn8,dynsnap_comm_louvain_compare_subproject_core_dyn9,dynsnap_comm_louvain_compare_subproject_core_dyn10,dynsnap_comm_louvain_compare_subproject_core_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_subproject_core) <- c("dynsnap_comm_louvain_compare_subproject_core") 
rownames(dynsnap_comm_louvain_compare_subproject_core) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_subproject_core <- as.table(dynsnap_comm_louvain_compare_subproject_core)
dynsnap_comm_louvain_compare_subproject_core <- as.data.frame(dynsnap_comm_louvain_compare_subproject_core)
dynsnap_comm_louvain_compare_subproject_core <- dynsnap_comm_louvain_compare_subproject_core[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_subproject_core.pdf")
ggplot(dynsnap_comm_louvain_compare_subproject_core, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() + geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_subproject_core$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to subproject (core team)")
dev.off()


dynsnap_comm_louvain_compare_role_core <- matrix(c(dynsnap_comm_louvain_compare_role_core_dyn1,dynsnap_comm_louvain_compare_role_core_dyn2,dynsnap_comm_louvain_compare_role_core_dyn3,dynsnap_comm_louvain_compare_role_core_dyn4,dynsnap_comm_louvain_compare_role_core_dyn5,dynsnap_comm_louvain_compare_role_core_dyn6,
                                                 dynsnap_comm_louvain_compare_role_core_dyn7,dynsnap_comm_louvain_compare_role_core_dyn8,dynsnap_comm_louvain_compare_role_core_dyn9,dynsnap_comm_louvain_compare_role_core_dyn10,dynsnap_comm_louvain_compare_role_core_dyn11),ncol=1,byrow=TRUE)
colnames(dynsnap_comm_louvain_compare_role_core) <- c("dynsnap_comm_louvain_compare_role_core") 
rownames(dynsnap_comm_louvain_compare_role_core) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_comm_louvain_compare_role_core <- as.table(dynsnap_comm_louvain_compare_role_core)
dynsnap_comm_louvain_compare_role_core <- as.data.frame(dynsnap_comm_louvain_compare_role_core)
dynsnap_comm_louvain_compare_role_core <- dynsnap_comm_louvain_compare_role_core[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_comm_louvain_compare_role_core.pdf")
ggplot(dynsnap_comm_louvain_compare_role_core, aes(x=Var1, y=Freq, group = 1)) +
  geom_point() + geom_line() +  geom_hline(yintercept = mean(dynsnap_comm_louvain_compare_role_core$Freq), color="blue") +
  xlab("Time") + ylim(0, 1) + ylab("Compare louvain to role (core team)")
dev.off()

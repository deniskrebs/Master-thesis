
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./0_Start.R")       
source("./1_LoadData.R") 
source("./6_2_Split_timescale.R")

setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis/Ubuntu")
IBN_table <- read.csv("Output_Ubuntu_dynsnap.csv")
IBN_table$X <- NULL
IBN_table$X.1 <- NULL
IBN_dynsnap <- subset(IBN_table, select =  -complete)

setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


IBN_dyn1 <- as.data.frame(mean(IBN_dynsnap$dyn1))
IBN_dyn1$SD <- sd(IBN_dynsnap$dyn1)
colnames(IBN_dyn1) <- c("Mean", "SD")
IBN_dyn2 <- as.data.frame(mean(IBN_dynsnap$dyn2))
IBN_dyn2$SD <- sd(IBN_dynsnap$dyn2)
colnames(IBN_dyn2) <- c("Mean", "SD")
IBN_dyn3 <- as.data.frame(mean(IBN_dynsnap$dyn3))
IBN_dyn3$SD <- sd(IBN_dynsnap$dyn3)
colnames(IBN_dyn3) <- c("Mean", "SD")
IBN_dyn4 <- as.data.frame(mean(IBN_dynsnap$dyn4))
IBN_dyn4$SD <- sd(IBN_dynsnap$dyn4)
colnames(IBN_dyn4) <- c("Mean", "SD")
IBN_dyn5 <- as.data.frame(mean(IBN_dynsnap$dyn5))
IBN_dyn5$SD <- sd(IBN_dynsnap$dyn5)
colnames(IBN_dyn5) <- c("Mean", "SD")
IBN_dyn6 <- as.data.frame(mean(IBN_dynsnap$dyn6))
IBN_dyn6$SD <- sd(IBN_dynsnap$dyn6)
colnames(IBN_dyn6) <- c("Mean", "SD")
IBN_dyn7 <- as.data.frame(mean(IBN_dynsnap$dyn7))
IBN_dyn7$SD <- sd(IBN_dynsnap$dyn7)
colnames(IBN_dyn7) <- c("Mean", "SD")
IBN_dyn8 <- as.data.frame(mean(IBN_dynsnap$dyn8))
IBN_dyn8$SD <- sd(IBN_dynsnap$dyn8)
colnames(IBN_dyn8) <- c("Mean", "SD")
IBN_dyn9 <- as.data.frame(mean(IBN_dynsnap$dyn9))
IBN_dyn9$SD <- sd(IBN_dynsnap$dyn9)
colnames(IBN_dyn9) <- c("Mean", "SD")
IBN_dyn10 <- as.data.frame(mean(IBN_dynsnap$dyn10))
IBN_dyn10$SD <- sd(IBN_dynsnap$dyn10)
colnames(IBN_dyn10) <- c("Mean", "SD")
IBN_dyn11 <- as.data.frame(mean(IBN_dynsnap$dyn11))
IBN_dyn11$SD <- sd(IBN_dynsnap$dyn11)
colnames(IBN_dyn11) <- c("Mean", "SD")

dynsnap_IBN <- rbind(IBN_dyn1, IBN_dyn2, IBN_dyn3, IBN_dyn4, IBN_dyn5, IBN_dyn6, IBN_dyn7, IBN_dyn8, IBN_dyn9, IBN_dyn10, IBN_dyn11)


rownames(dynsnap_IBN) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_IBN$Time <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_IBN$network <- "ONE dataset"

#deg.centralization_dynsnap <- as.table(deg.centralization_dynsnap)
#deg.centralization_dynsnap <- as.data.frame(deg.centralization_dynsnap)
#deg.centralization_dynsnap <- deg.centralization_dynsnap[, -c(2)]  

pdf("./R_Output/6.3/dynsnap_IBN.pdf")
ggplot(dynsnap_IBN, aes(x=Time, y=Mean, group = 1)) + scale_x_discrete(limits=c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")) + 
  geom_point(size=3, shape=21, fill="black") + geom_line() + geom_errorbar(aes(ymin=Mean-SD, ymax=Mean+SD), colour="black", width=.1) + 
  xlab("Time") + ylim(0, 1) + ylab("IBN (mean)")
dev.off()








setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis/Ubuntu")
IBN_degseq_table <- read.csv("Output_Ubuntu_degseq.csv")
IBN_degseq_table$X <- NULL
IBN_degseq_dynsnap <- subset(IBN_degseq_table, select =  -complete)

setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

#dynseq
IBN_degseq_dyn1 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn1))
IBN_degseq_dyn1$SD <- sd(IBN_degseq_dynsnap$dyn1)
colnames(IBN_degseq_dyn1) <- c("Mean", "SD")

IBN_degseq_dyn2 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn2))
IBN_degseq_dyn2$SD <- sd(IBN_degseq_dynsnap$dyn2)
colnames(IBN_degseq_dyn2) <- c("Mean", "SD")

IBN_degseq_dyn3 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn3))
IBN_degseq_dyn3$SD <- sd(IBN_degseq_dynsnap$dyn3)
colnames(IBN_degseq_dyn3) <- c("Mean", "SD")

IBN_degseq_dyn4 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn4))
IBN_degseq_dyn4$SD <- sd(IBN_degseq_dynsnap$dyn4)
colnames(IBN_degseq_dyn4) <- c("Mean", "SD")

IBN_degseq_dyn5 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn5))
IBN_degseq_dyn5$SD <- sd(IBN_degseq_dynsnap$dyn5)
colnames(IBN_degseq_dyn5) <- c("Mean", "SD")

IBN_degseq_dyn6 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn6))
IBN_degseq_dyn6$SD <- sd(IBN_degseq_dynsnap$dyn6)
colnames(IBN_degseq_dyn6) <- c("Mean", "SD")

IBN_degseq_dyn7 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn7))
IBN_degseq_dyn7$SD <- sd(IBN_degseq_dynsnap$dyn7)
colnames(IBN_degseq_dyn7) <- c("Mean", "SD")

IBN_degseq_dyn8 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn8))
IBN_degseq_dyn8$SD <- sd(IBN_degseq_dynsnap$dyn8)
colnames(IBN_degseq_dyn8) <- c("Mean", "SD")

IBN_degseq_dyn9 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn9))
IBN_degseq_dyn9$SD <- sd(IBN_degseq_dynsnap$dyn9)
colnames(IBN_degseq_dyn9) <- c("Mean", "SD")

IBN_degseq_dyn10 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn10))
IBN_degseq_dyn10$SD <- sd(IBN_degseq_dynsnap$dyn10)
colnames(IBN_degseq_dyn10) <- c("Mean", "SD")

IBN_degseq_dyn11 <- as.data.frame(mean(IBN_degseq_dynsnap$dyn11))
IBN_degseq_dyn11$SD <- sd(IBN_degseq_dynsnap$dyn11)
colnames(IBN_degseq_dyn11) <- c("Mean", "SD")

dynsnap_IBN_degseq <- rbind(IBN_degseq_dyn1, IBN_degseq_dyn2, IBN_degseq_dyn3, IBN_degseq_dyn4, IBN_degseq_dyn5, IBN_degseq_dyn6, IBN_degseq_dyn7, 
                            IBN_degseq_dyn8, IBN_degseq_dyn9, IBN_degseq_dyn10, IBN_degseq_dyn11)


rownames(dynsnap_IBN_degseq) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_IBN_degseq$Time <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_IBN_degseq$network <- "Configuration model"









setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis/Ubuntu")
IBN_er_table <- read.csv("Output_Ubuntu_er.csv")
IBN_er_table$X <- NULL
IBN_er_dynsnap <- subset(IBN_er_table, select =  -complete)

setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


#erdös-renyi
#WISO ÜBERALL 0???
IBN_er_dyn1 <- as.data.frame(mean(IBN_er_dynsnap$dyn1))
IBN_er_dyn1$SD <- sd(IBN_er_dynsnap$dyn1)
colnames(IBN_er_dyn1) <- c("Mean", "SD")

IBN_er_dyn2 <- as.data.frame(mean(IBN_er_dynsnap$dyn2))
IBN_er_dyn2$SD <- sd(IBN_er_dynsnap$dyn2)
colnames(IBN_er_dyn2) <- c("Mean", "SD")

IBN_er_dyn3 <- as.data.frame(mean(IBN_er_dynsnap$dyn3))
IBN_er_dyn3$SD <- sd(IBN_er_dynsnap$dyn3)
colnames(IBN_er_dyn3) <- c("Mean", "SD")

IBN_er_dyn4 <- as.data.frame(mean(IBN_er_dynsnap$dyn4))
IBN_er_dyn4$SD <- sd(IBN_er_dynsnap$dyn4)
colnames(IBN_er_dyn4) <- c("Mean", "SD")

IBN_er_dyn5 <- as.data.frame(mean(IBN_er_dynsnap$dyn5))
IBN_er_dyn5$SD <- sd(IBN_er_dynsnap$dyn5)
colnames(IBN_er_dyn5) <- c("Mean", "SD")

IBN_er_dyn6 <- as.data.frame(mean(IBN_er_dynsnap$dyn6))
IBN_er_dyn6$SD <- sd(IBN_er_dynsnap$dyn6)
colnames(IBN_er_dyn6) <- c("Mean", "SD")

IBN_er_dyn7 <- as.data.frame(mean(IBN_er_dynsnap$dyn7))
IBN_er_dyn7$SD <- sd(IBN_er_dynsnap$dyn7)
colnames(IBN_er_dyn7) <- c("Mean", "SD")

IBN_er_dyn8 <- as.data.frame(mean(IBN_er_dynsnap$dyn8))
IBN_er_dyn8$SD <- sd(IBN_er_dynsnap$dyn8)
colnames(IBN_er_dyn8) <- c("Mean", "SD")

IBN_er_dyn9 <- as.data.frame(mean(IBN_er_dynsnap$dyn9))
IBN_er_dyn9$SD <- sd(IBN_er_dynsnap$dyn9)
colnames(IBN_er_dyn9) <- c("Mean", "SD")

IBN_er_dyn10 <- as.data.frame(mean(IBN_er_dynsnap$dyn10))
IBN_er_dyn10$SD <- sd(IBN_er_dynsnap$dyn10)
colnames(IBN_er_dyn10) <- c("Mean", "SD")

IBN_er_dyn11 <- as.data.frame(mean(IBN_er_dynsnap$dyn11))
IBN_er_dyn11$SD <- sd(IBN_er_dynsnap$dyn11)
colnames(IBN_er_dyn11) <- c("Mean", "SD")

dynsnap_IBN_er <- rbind(IBN_er_dyn1, IBN_er_dyn2, IBN_er_dyn3, IBN_er_dyn4, IBN_er_dyn5, IBN_er_dyn6, IBN_er_dyn7, 
                            IBN_er_dyn8, IBN_er_dyn9, IBN_er_dyn10, IBN_er_dyn11)


rownames(dynsnap_IBN_er) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_IBN_er$Time <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
dynsnap_IBN_er$network <- "Erdos-Renyi model"



#compare IBN-lines
IBN <- rbind(dynsnap_IBN, dynsnap_IBN_er, dynsnap_IBN_degseq)

pdf("./R_Output/6.3/IBN.pdf")
ggplot(IBN, aes(x=Time, y=Mean, group = network)) + scale_x_discrete(limits=c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")) + 
  geom_point(size=3, shape=21, fill="black") + geom_line(aes(colour=network)) + geom_errorbar(aes(ymin=Mean-SD, ymax=Mean+SD), colour="black", width=.1) + 
  xlab("Time") + ylim(-0.01, 0.3) + ylab("IBN (mean & sd)") + ggtitle("Compare in-block nestedness")
dev.off()




#significtly different
t.test(dynsnap_IBN$Mean, dynsnap_IBN_degseq$Mean)
t.test(dynsnap_IBN$Mean, dynsnap_IBN_er$Mean)
t.test(dynsnap_IBN_degseq$Mean, dynsnap_IBN_er$Mean)

library("ggpubr")
pdf("./R_Output/6.3/IBN_compare.pdf")
ggboxplot(IBN, x = "network", y = "Mean", 
          color = "network", palette = c("#00AFBB", "#E7B800", "#0000FF"),
          order = c("ONE dataset", "Configuration model", "Erdos-Renyi model"), title = "Compare IBN-values",
          ylab = "IBN", xlab = "Networks")
dev.off()

pairwise.t.test(IBN$Mean, IBN$network)


IBN_dyn_er <- subset(IBN, c(IBN$network == "Erdos-Renyi model" | IBN$network == "ONE dataset"))
IBN_dyn_degseq <- subset(IBN, c(IBN$network == "Configuration model" | IBN$network == "ONE dataset"))
pairwise.t.test(IBN_dyn_er$Mean, IBN_dyn_er$network)
pairwise.t.test(IBN_dyn_degseq$Mean, IBN_dyn_degseq$network)




setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


# edgelist from raw data
edgelist_dyn1 <- dynsnap_subset1[, c(1, 2)]
edgelist_dyn2 <- dynsnap_subset2[, c(1, 2)]
edgelist_dyn3 <- dynsnap_subset3[, c(1, 2)]
edgelist_dyn4 <- dynsnap_subset4[, c(1, 2)]
edgelist_dyn5 <- dynsnap_subset5[, c(1, 2)]
edgelist_dyn6 <- dynsnap_subset6[, c(1, 2)]
edgelist_dyn7 <- dynsnap_subset7[, c(1, 2)]
edgelist_dyn8 <- dynsnap_subset8[, c(1, 2)]
edgelist_dyn9 <- dynsnap_subset9[, c(1, 2)]
edgelist_dyn10 <- dynsnap_subset10[, c(1, 2)]
edgelist_dyn11 <- dynsnap_subset11[, c(1, 2)]

edgelist_dyn1 <- na.omit(edgelist_dyn1)
edgelist_dyn2 <- na.omit(edgelist_dyn2)
edgelist_dyn3 <- na.omit(edgelist_dyn3)
edgelist_dyn4 <- na.omit(edgelist_dyn4)
edgelist_dyn5 <- na.omit(edgelist_dyn5)
edgelist_dyn6 <- na.omit(edgelist_dyn6)
edgelist_dyn7 <- na.omit(edgelist_dyn7)
edgelist_dyn8 <- na.omit(edgelist_dyn8)
edgelist_dyn9 <- na.omit(edgelist_dyn9)
edgelist_dyn10 <- na.omit(edgelist_dyn10)
edgelist_dyn11 <- na.omit(edgelist_dyn11)

edgelist_dyn1 <- as.matrix(edgelist_dyn1)
edgelist_dyn2 <- as.matrix(edgelist_dyn2)
edgelist_dyn3 <- as.matrix(edgelist_dyn3)
edgelist_dyn4 <- as.matrix(edgelist_dyn4)
edgelist_dyn5 <- as.matrix(edgelist_dyn5)
edgelist_dyn6 <- as.matrix(edgelist_dyn6)
edgelist_dyn7 <- as.matrix(edgelist_dyn7)
edgelist_dyn8 <- as.matrix(edgelist_dyn8)
edgelist_dyn9 <- as.matrix(edgelist_dyn9)
edgelist_dyn10 <- as.matrix(edgelist_dyn10)
edgelist_dyn11 <- as.matrix(edgelist_dyn11)

g_dyn1 <- graph_from_edgelist(edgelist_dyn1, directed = TRUE)
vcount_dyn1 <- vcount(g_dyn1)
g_dyn2 <- graph_from_edgelist(edgelist_dyn2, directed = TRUE)
vcount_dyn2 <- vcount(g_dyn2)
g_dyn3 <- graph_from_edgelist(edgelist_dyn3, directed = TRUE)
vcount_dyn3 <- vcount(g_dyn3)
g_dyn4 <- graph_from_edgelist(edgelist_dyn4, directed = TRUE)
vcount_dyn4 <- vcount(g_dyn4)
g_dyn5 <- graph_from_edgelist(edgelist_dyn5, directed = TRUE)
vcount_dyn5 <- vcount(g_dyn5)
g_dyn6 <- graph_from_edgelist(edgelist_dyn6, directed = TRUE)
vcount_dyn6 <- vcount(g_dyn6)
g_dyn7 <- graph_from_edgelist(edgelist_dyn7, directed = TRUE)
vcount_dyn7 <- vcount(g_dyn7)
g_dyn8 <- graph_from_edgelist(edgelist_dyn8, directed = TRUE)
vcount_dyn8 <- vcount(g_dyn8)
g_dyn9 <- graph_from_edgelist(edgelist_dyn9, directed = TRUE)
vcount_dyn9 <- vcount(g_dyn9)
g_dyn10 <- graph_from_edgelist(edgelist_dyn10, directed = TRUE)
vcount_dyn10 <- vcount(g_dyn10)
g_dyn11 <- graph_from_edgelist(edgelist_dyn11, directed = TRUE)
vcount_dyn11 <- vcount(g_dyn11)

vcount_dynsnap <- matrix(c(vcount_dyn1,vcount_dyn2,vcount_dyn3,vcount_dyn4,vcount_dyn5,vcount_dyn6,vcount_dyn7,vcount_dyn8,vcount_dyn9,vcount_dyn10,vcount_dyn11),ncol=1,byrow=TRUE)
colnames(vcount_dynsnap) <- c("vcount") 
rownames(vcount_dynsnap) <- c("dyn1","dyn2","dyn3","dyn4","dyn5","dyn6","dyn7","dyn8","dyn9","dyn10","dyn11")
vcount_dynsnap <- as.table(vcount_dynsnap)
vcount_dynsnap <- as.data.frame(vcount_dynsnap)
vcount_dynsnap <- vcount_dynsnap[, -c(2)]  

pdf("./R_Output/6.2/dynsnap_vcount.pdf")
ggplot(vcount_dynsnap, aes(x=Var1, y=Freq, group = 1)) +
  geom_point(size=3, shape=21, fill="black") + geom_line() + geom_errorbar(aes(ymin=Mean-SD, ymax=Mean+SD), colour="black", width=.1) + 
  xlab("Time") + ylim(0, 600) + ylab("# Vertices")
dev.off()



nodes_dyn1 <- as.data.frame(get.vertex.attribute(g_dyn1))
nodes_dyn2 <- as.data.frame(get.vertex.attribute(g_dyn2))
nodes_dyn3 <- as.data.frame(get.vertex.attribute(g_dyn3))
nodes_dyn4 <- as.data.frame(get.vertex.attribute(g_dyn4))
nodes_dyn5 <- as.data.frame(get.vertex.attribute(g_dyn5))
nodes_dyn6 <- as.data.frame(get.vertex.attribute(g_dyn6))
nodes_dyn7 <- as.data.frame(get.vertex.attribute(g_dyn7))
nodes_dyn8 <- as.data.frame(get.vertex.attribute(g_dyn8))
nodes_dyn9 <- as.data.frame(get.vertex.attribute(g_dyn9))
nodes_dyn10 <- as.data.frame(get.vertex.attribute(g_dyn10))
nodes_dyn11 <- as.data.frame(get.vertex.attribute(g_dyn11))


# graph varieties
g_dyn1 <- graph_from_edgelist(edgelist_dyn1, directed = TRUE)
g_dyn2 <- graph_from_edgelist(edgelist_dyn2, directed = TRUE)
g_dyn3 <- graph_from_edgelist(edgelist_dyn3, directed = TRUE)
g_dyn4 <- graph_from_edgelist(edgelist_dyn4, directed = TRUE)
g_dyn5 <- graph_from_edgelist(edgelist_dyn5, directed = TRUE)
g_dyn6 <- graph_from_edgelist(edgelist_dyn6, directed = TRUE)
g_dyn7 <- graph_from_edgelist(edgelist_dyn7, directed = TRUE)
g_dyn8 <- graph_from_edgelist(edgelist_dyn8, directed = TRUE)
g_dyn9 <- graph_from_edgelist(edgelist_dyn9, directed = TRUE)
g_dyn10 <- graph_from_edgelist(edgelist_dyn10, directed = TRUE)
g_dyn11 <- graph_from_edgelist(edgelist_dyn11, directed = TRUE)

g.un_dyn1 <- graph_from_edgelist(edgelist_dyn1, directed = FALSE)
g.un_dyn2 <- graph_from_edgelist(edgelist_dyn2, directed = FALSE)
g.un_dyn3 <- graph_from_edgelist(edgelist_dyn3, directed = FALSE)
g.un_dyn4 <- graph_from_edgelist(edgelist_dyn4, directed = FALSE)
g.un_dyn5 <- graph_from_edgelist(edgelist_dyn5, directed = FALSE)
g.un_dyn6 <- graph_from_edgelist(edgelist_dyn6, directed = FALSE)
g.un_dyn7 <- graph_from_edgelist(edgelist_dyn7, directed = FALSE)
g.un_dyn8 <- graph_from_edgelist(edgelist_dyn8, directed = FALSE)
g.un_dyn9 <- graph_from_edgelist(edgelist_dyn9, directed = FALSE)
g.un_dyn10 <- graph_from_edgelist(edgelist_dyn10, directed = FALSE)
g.un_dyn11 <- graph_from_edgelist(edgelist_dyn11, directed = FALSE)


E(g_dyn1)$weight = 1
E(g_dyn2)$weight = 1
E(g_dyn3)$weight = 1
E(g_dyn4)$weight = 1
E(g_dyn5)$weight = 1
E(g_dyn6)$weight = 1
E(g_dyn7)$weight = 1
E(g_dyn8)$weight = 1
E(g_dyn9)$weight = 1
E(g_dyn10)$weight = 1
E(g_dyn11)$weight = 1

g.simp_dyn1 <- igraph::simplify(g_dyn1,  edge.attr.comb = list(weight="sum"))
g.simp_dyn2 <- igraph::simplify(g_dyn2,  edge.attr.comb = list(weight="sum"))
g.simp_dyn3 <- igraph::simplify(g_dyn3,  edge.attr.comb = list(weight="sum"))
g.simp_dyn4 <- igraph::simplify(g_dyn4,  edge.attr.comb = list(weight="sum"))
g.simp_dyn5 <- igraph::simplify(g_dyn5,  edge.attr.comb = list(weight="sum"))
g.simp_dyn6 <- igraph::simplify(g_dyn6,  edge.attr.comb = list(weight="sum"))
g.simp_dyn7 <- igraph::simplify(g_dyn7,  edge.attr.comb = list(weight="sum"))
g.simp_dyn8 <- igraph::simplify(g_dyn8,  edge.attr.comb = list(weight="sum"))
g.simp_dyn9 <- igraph::simplify(g_dyn9,  edge.attr.comb = list(weight="sum"))
g.simp_dyn10 <- igraph::simplify(g_dyn10,  edge.attr.comb = list(weight="sum"))
g.simp_dyn11 <- igraph::simplify(g_dyn11,  edge.attr.comb = list(weight="sum"))

E(g.un_dyn1)$weight = 1
E(g.un_dyn2)$weight = 1
E(g.un_dyn3)$weight = 1
E(g.un_dyn4)$weight = 1
E(g.un_dyn5)$weight = 1
E(g.un_dyn6)$weight = 1
E(g.un_dyn7)$weight = 1
E(g.un_dyn8)$weight = 1
E(g.un_dyn9)$weight = 1
E(g.un_dyn10)$weight = 1
E(g.un_dyn11)$weight = 1

g.simp.un_dyn1 <- igraph::simplify(g.un_dyn1, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn2 <- igraph::simplify(g.un_dyn2, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn3 <- igraph::simplify(g.un_dyn3, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn4 <- igraph::simplify(g.un_dyn4, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn5 <- igraph::simplify(g.un_dyn5, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn6 <- igraph::simplify(g.un_dyn6, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn7 <- igraph::simplify(g.un_dyn7, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn8 <- igraph::simplify(g.un_dyn8, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn9 <- igraph::simplify(g.un_dyn9, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn10 <- igraph::simplify(g.un_dyn10, edge.attr.comb = list(weight="sum"))
g.simp.un_dyn11 <- igraph::simplify(g.un_dyn11, edge.attr.comb = list(weight="sum"))

pdf("./R_Output/6.2/g.simp.un_dyn1.pdf")
plot(g.simp.un_dyn1, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn2.pdf")
plot(g.simp.un_dyn2, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn3.pdf")
plot(g.simp.un_dyn3, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn4.pdf")
plot(g.simp.un_dyn4, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn5.pdf")
plot(g.simp.un_dyn5, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn6.pdf")
plot(g.simp.un_dyn6, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn7.pdf")
plot(g.simp.un_dyn7, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn8.pdf")
plot(g.simp.un_dyn8, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn9.pdf")
plot(g.simp.un_dyn9, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn10.pdf")
plot(g.simp.un_dyn10, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()
pdf("./R_Output/6.2/g.simp.un_dyn11.pdf")
plot(g.simp.un_dyn11, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()

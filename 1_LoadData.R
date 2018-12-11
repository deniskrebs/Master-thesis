
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


# edgelist from raw data
edgelist <- data[, c(1, 2)]
edgelist <- na.omit(edgelist)
edgelist <- as.matrix(edgelist)

g <- graph_from_edgelist(edgelist, directed = TRUE)
vcount(g)

write(edgelist, file = "complete.edges")


# nodes
von <- count(edgelist, c(1))
von <- subset(von, select = -freq)
von$ID <- von$x.Von
von <- subset(von, select = -x.Von)
an <- count(edgelist, c(2))
an <- subset(an, select = -freq)
an$ID <- an$x.An
an <- subset(an, select = -x.An)
nodes <- rbind(von[1:1], an[1:1])
nodes <- count(nodes, c(1))
nodes <- subset(nodes, select = -freq)


# links:
links <- count(edgelist, c(1, 2))
links$Von <- links$x.Von
links <- subset(links, select = -x.Von)
links$An <- links$x.An
links <- subset(links, select = -x.An)
links$Anzahl <- as.numeric(links$freq)
links <- subset(links, select = -freq)

sum(links$Anzahl)

# node-attributes:
df <- distinct_(data.frame(nodes[,1]))
splitted <- t(sapply(df$nodes...1., function(x) substring(x, first=c(1,4,7,10,13,16,19,22), 
                                                            last=c(2,5,8,11,14,17,20,24))))
nodes <- cbind(df, splitted)
colnames(nodes)[1] <- "ID"
colnames(nodes)[2] <- "sp1.type"
colnames(nodes)[3] <- "r1.type"
colnames(nodes)[4] <- "sp2.type"
colnames(nodes)[5] <- "r2.type"
colnames(nodes)[6] <- "sp3.type"
colnames(nodes)[7] <- "r3.type"
colnames(nodes)[8] <- "company.type"
colnames(nodes)[9] <- "person"


nodes$company.type <- as.numeric(as.character(nodes$company.type))
nodes$sp1.type <- as.numeric(as.character(nodes$sp1.type))
nodes$sp2.type <- as.numeric(as.character(nodes$sp2.type))
nodes$sp3.type <- as.numeric(as.character(nodes$sp3.type))
nodes$r1.type <- as.numeric(as.character(nodes$r1.type))
nodes$r2.type <- as.numeric(as.character(nodes$r2.type))
nodes$r3.type <- as.numeric(as.character(nodes$r3.type))
nodes$person <- as.numeric(as.character(nodes$person))

nodes$sp2.name <- nodes$sp2.type
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "0", "NA")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "1", "FACT")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "2", "PERS")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "3", "FICO")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "4", "STAM")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "5", "PLAN")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "6", "Analytics")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "7", "PLM")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "8", "LOG")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "9", "PMO")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "10", "IT")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "11", "SCM")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "12", "PROD")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "13", "UMSI")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "14", "EINK")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "15", "MAIN")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "16", "CHAN")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "17", "CRM")
nodes$sp2.name <- replace(nodes$sp2.name, nodes$sp2.name == "18", "CEM")
nodes$sp1.name <- nodes$sp1.type
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "0", "NA")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "1", "FACT")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "2", "PERS")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "3", "FICO")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "4", "STAM")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "5", "PLAN")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "6", "Analytics")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "7", "PLM")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "8", "LOG")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "9", "PMO")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "10", "IT")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "11", "SCM")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "12", "PROD")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "13", "UMSI")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "14", "EINK")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "15", "MAIN")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "16", "CHAN")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "17", "CRM")
nodes$sp1.name <- replace(nodes$sp1.name, nodes$sp1.name == "18", "CEM")
nodes$sp3.name <- nodes$sp3.type
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "0", "NA")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "1", "FACT")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "2", "PERS")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "3", "FICO")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "4", "STAM")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "5", "PLAN")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "6", "Analytics")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "7", "PLM")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "8", "LOG")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "9", "PMO")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "10", "IT")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "11", "SCM")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "12", "PROD")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "13", "UMSI")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "14", "EINK")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "15", "MAIN")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "16", "CHAN")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "17", "CRM")
nodes$sp3.name <- replace(nodes$sp3.name, nodes$sp3.name == "18", "CEM")

nodes$r1.name <- nodes$r1.type
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "0", "NA")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "1", "BG")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "2", "FT")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "3", "Extern")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "4", "KT")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "5", "ERDC-USI")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "6", "TPL")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "7", "FOO")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "8", "LA")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "9", "PL")
nodes$r1.name <- replace(nodes$r1.name, nodes$r1.name == "10", "Communications")
nodes$r2.name <- nodes$r2.type
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "0", "NA")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "1", "BG")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "2", "FT")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "3", "Extern")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "4", "KT")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "5", "ERDC-USI")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "6", "TPL")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "7", "FOO")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "8", "LA")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "9", "PL")
nodes$r2.name <- replace(nodes$r2.name, nodes$r2.name == "10", "Communications")
nodes$r3.name <- nodes$r3.type
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "0", "NA")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "1", "BG")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "2", "FT")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "3", "Extern")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "4", "KT")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "5", "ERDC-USI")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "6", "TPL")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "7", "FOO")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "8", "LA")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "9", "PL")
nodes$r3.name <- replace(nodes$r3.name, nodes$r3.name == "10", "Communications")

nodes$company.name <- nodes$company.type
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "0", "NA")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "1", "eXcellence ONE")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "2", "Micarna")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "3", "Chocolat Frey")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "4", "Deloitte")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "5", "Jowa")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "6", "Boa")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "7", "SAP")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "8", "MGB")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "9", "Elsa")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "10", "Mibelle Group")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "11", "Aproz")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "12", "Mifroma")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "13", "Delica")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "14", "Bina")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "15", "Midor")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "16", "Riseria")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "17", "Infosys")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "18", "SweetWorks")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "19", "Rupf Consulting A")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "20", "MITS")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "21", "Freelancer")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "22", "November")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "23", "Bo2ti")
nodes$company.name <- replace(nodes$company.name, nodes$company.name == "24", "Saviva AG")

nodes <- nodes[,c("ID", "sp1.type", "sp1.name", "r1.type", "r1.name", "sp2.type", "sp2.name", "r2.type", "r2.name", "sp3.type", "sp3.name", "r3.type", "r3.name", "company.type", "company.name", "person")]

nodes$segment <- nodes$company.type
nodes$segment <- replace(nodes$segment, nodes$segment == "4", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "6", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "7", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "8", "MGB")
nodes$segment <- replace(nodes$segment, nodes$segment == "1", "MIX")
nodes$segment <- replace(nodes$segment, nodes$segment == "19", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "20", "MITS")
nodes$segment <- replace(nodes$segment, nodes$segment == "21", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "22", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "23", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "17", "Extern")
nodes$segment <- replace(nodes$segment, nodes$segment == "0", "0")
nodes$segment <- replace(nodes$segment, nodes$segment == "2", "1")
nodes$segment <- replace(nodes$segment, nodes$segment == "3", "4")
nodes$segment <- replace(nodes$segment, nodes$segment == "5", "3")
nodes$segment <- replace(nodes$segment, nodes$segment == "9", "2")
nodes$segment <- replace(nodes$segment, nodes$segment == "10", "5")
nodes$segment <- replace(nodes$segment, nodes$segment == "11", "3")
nodes$segment <- replace(nodes$segment, nodes$segment == "12", "2")
nodes$segment <- replace(nodes$segment, nodes$segment == "13", "4")
nodes$segment <- replace(nodes$segment, nodes$segment == "14", "3")
nodes$segment <- replace(nodes$segment, nodes$segment == "15", "4")
nodes$segment <- replace(nodes$segment, nodes$segment == "16", "4")
nodes$segment <- replace(nodes$segment, nodes$segment == "18", "4")
nodes$segment <- replace(nodes$segment, nodes$segment == "24", "6")



# node degrees
g <- graph_from_edgelist(edgelist, directed = TRUE)
ecount(g)
deg=as.matrix(igraph::degree(g, mode="total"))
nodes$degree=deg
nodes$degree <- as.numeric(nodes$degree)

sum(nodes$degree)/2

# graph varieties
g <- graph_from_edgelist(edgelist, directed = TRUE)
g.un <- graph_from_edgelist(edgelist, directed = FALSE)
E(g)$weight = 1
g.simp <- igraph::simplify(g,  edge.attr.comb = list(weight="sum"))
#g.simp <- graph_from_data_frame(d=links, vertices=nodes, directed = T)
#g.simp <- set_edge_attr(g.simp, "weight", value= links$Anzahl)
#g.simp <- igraph::simplify(g.simp, remove.multiple = TRUE, remove.loops = TRUE)
E(g.un)$weight = 1
g.simp.un <- igraph::simplify(g.un, edge.attr.comb = list(weight="sum"))
#g.simp.un <- graph_from_data_frame(d=links, vertices=nodes, directed = F)
#g.simp.un <- set_edge_attr(g.simp.un, "weight", value= links$Anzahl)
#g.simp.un <- igraph::simplify(g.simp.un, remove.multiple = TRUE, remove.loops = TRUE)
pdf("./R_Output/6.1/graph_g.simp.un.pdf")
plot(g.simp.un, vertex.size=3, edge.arrow.size=0.02, vertex.label.font=1, vertex.label.cex = 0.01)
dev.off()


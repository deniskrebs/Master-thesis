
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 

# core team members (without BG)
core_team <- nodes[nodes$r1.type != 1, c("ID", "sp1.type", "r1.type", "company.type")] 
# Site-group members (without core team)
SG_team <- nodes[nodes$r1.type == 1, c("ID", "sp1.type", "r1.type", "company.type")] 

#test <- nodes

#write.csv(test, file = "test.csv", sep = ",") #in excel sp1.type = sp1.type if not 0, else ID
test2 <- read.csv("test.csv")

df <- as.data.frame(edgelist)
new <- df
#new[] <- lapply(df, function(x) look$class[match(x, look$pet)])
new[] <- lapply(df, function(x) test2$sp1.type[match(x, test2$ID)])

#new_simp <- count(new)
new_simp <- new

#new_simp <- subset(new_simp, !(new_simp$Von %in% nodes$ID) & !(new_simp$An %in% nodes$ID)) # exclude edges between site group members
new_simp_2 <- subset(new_simp, xor(new_simp$Von %in% nodes$ID, new_simp$An %in% nodes$ID)) # exclude edges which are not between site group members and core team members

#  separate list into mails sent and mails received from SG-member
new_simp_3 <- subset(new_simp_2, (new_simp_2$Von %in% nodes$ID)) 
new_simp_4 <- subset(new_simp_2, (new_simp_2$An %in% nodes$ID)) 

#switch columns so that always SG-member in column 1 (because undirected network)
new_simp_4 <- new_simp_4[,c(2,1)]
colnames(new_simp_4) <- c('Von', 'An') 

new_simp_5 <- rbind(new_simp_3, new_simp_4) # put together the lists with mails from an to SG-member

#####################################
#new_simp_6 <- count(new_simp_5, vars = c("Von","An"), wt_var = "freq")
new_simp_6  <- count(new_simp_5) # count number of mails to each subproject

#BG <- as.data.frame(unique(new_simp_6$Von))


#aa <- new_simp_6[order(new_simp_6$Von, -new_simp_6$freq), ]
#aa <- aa[!duplicated(aa$Von),]

bb <-setDT(new_simp_6)[, .SD[which.max(freq)], Von]   # select the row with highest value per ID


# assign number of subproject with most communication to each SG-member
#nodes$sp1.type_SG <- ifelse(bb$Von == nodes$ID, bb$An, NA)

#nodes$sp1.type_SG <- NA
#nodes$sp1.type_SG[bb$Von == nodes$ID] <- bb$An[bb$Von == nodes$ID]
#nodes <- nodes[,-19]  # Ian Fellows

cc <- merge(bb, nodes, by.x = "Von", by.y = "ID")  # merge info from bb into nodes
colnames(cc)[1] <- "ID"
cc <- cc[,-3]  # delet freq column
cc$sp1.type <- cc$An  # assign value from "an" to sp1.type
cc <- cc[,-2]  # delete An clumn

dd <- subset(nodes, !(nodes$ID %in% cc$ID))  # remove rows in "nodes" that are in cc

ee <- rbind(cc, dd) # rbind nodes & cc = LIST WHERE EVERY NODE (ALSO SG-MEMBERS) HAVE SP1.TYPE

# assign correct sp1.name
ee$sp1.type <- as.numeric(as.character(ee$sp1.type))
ee$sp1.name <- ee$sp1.type
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "0", "NA")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "1", "FACT")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "2", "PERS")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "3", "FICO")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "4", "STAM")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "5", "PLAN")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "6", "Analytics")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "7", "PLM")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "8", "LOG")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "9", "PMO")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "10", "IT")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "11", "SCM")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "12", "PROD")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "13", "UMSI")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "14", "EINK")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "15", "MAIN")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "16", "CHAN")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "17", "CRM")
ee$sp1.name <- replace(ee$sp1.name, ee$sp1.name == "18", "CEM")



# make communities with original graph
louvain <- multilevel.community(g.un)
louvain_simp <- multilevel.community(g.simp.un)


# compare louvain communities with new sp1.type
team <- ee[ee$degree > 0, c("ID", "company.type", "sp1.type", "r1.type")]
mem <- data.table(cbind(names(membership(louvain)), membership(louvain)))
setnames(mem, c("ID", "louvain")) 
final <- merge(mem, ee, by = "ID")
final$louvain <- as.numeric(as.character(final$louvain))
final <- final[-c(1), ]   # delete NA row
# glaub louvain nicht numerisch
compare(final$louvain, final$company.type, method = "nmi") # louvain-communities compared to company
compare(final$louvain, final$sp1.type, method = "nmi") # louvain-communities compared to subproject
compare(final$louvain, final$r1.type, method = "nmi") # louvain-communities compared to role












#Assign BG to a SP with which


#adjacency matrix

#l = list()

#N = 10

#for (i in seq(1, N)) {
#  l[[i]] = list()
#}

#for edge in edge_list:
#  source = take edge source (int or str)
#  source_cluster is string
#  destination_cluster is string
#  dest = take edge destination (int or str)
  
#  if source_cluster is NULL:
#    if l[[source]][destination_cluster] is NULL:
#      l[[source]][destination_cluster] = 1
#    else:
#      l[[source]][destination_cluster] = l[[source]][destination_cluster] + 1
#  else if destination_cluster is NULL:
#    l[[destination]][sourcec_cluster] = l[[destination]][sourcec_cluster] + 1


  
#l[[1]]["1"] = 15
#l[[1]]["3"] = 16
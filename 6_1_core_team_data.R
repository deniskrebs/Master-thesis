
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./0_Start.R")        ################ Skip if not complete data (IF C-C, C-SG, SG-SG, ...) ###########################
source("./1_LoadData.R")

library(data.table)

# core team members (without BG)
core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type")] 
# Site-group members (without core team)
SG_team <- nodes[nodes$r1.type == 1, c("ID", "company.type")] 


# different subsets
data_C_C <- subset(data, data$Von %in% core_team$ID & data$An %in% core_team$ID) # edges only between core team
data_C_SG <- subset(data, xor(data$Von %in% core_team$ID, data$An %in% core_team$ID)) # edges only between SG-member and core team member
data_SG_SG <- subset(data, !(data$Von %in% core_team$ID) & !(data$An %in% core_team$ID)) # edges only between core team



#data <- data_C_C
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- data_C_SG
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- data_SG_SG
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")
rm(list =ls())

# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R")

library(data.table)
library(igraph)

# core team members (without BG)
core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type")] 

# edges WITH core team members
library(dplyr)
df = data.frame(data)
von_core <- dplyr::filter(df, data$Von %in% core_team$ID)
an_core <- dplyr::filter(df, data$An %in% core_team$ID)
data_core <- rbind(von_core[1:3], an_core[1:3]) #Daten weg wo kein coreteam member involviert

# only edges BETWEEN core team members
data_hardcore <- dplyr::inner_join(von_core, an_core)
data_hardcore <- unique(data_hardcore)


# To make all analysis with core data use:
#data <- data_core # for edges where at least one node is core team member
#data <- data_hardcore # for edges where both nodes are core team members
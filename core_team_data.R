rm(list =ls())
library(data.table)
library(igraph)

# core team members (without BG)
core_team <- nodes[nodes$r1.type != 1, c("ID", "company.type")] 

# edges with core team members
library(dplyr)
df = data.frame(data)
von_core <- dplyr::filter(df, data$Von %in% core_team$ID)
an_core <- dplyr::filter(df, data$An %in% core_team$ID)
data_core <- rbind(von_core[1:3], an_core[1:3]) #Daten weg wo kein coreteam member involviert

# edges between core team members
data_hardcore <- dplyr::inner_join(von_core, an_core)
data_hardcore <- unique(data_hardcore)

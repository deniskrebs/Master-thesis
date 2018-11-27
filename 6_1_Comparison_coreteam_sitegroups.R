
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 
source("./core_team_data.R")

# number of nodes included in subset
ncol(as.data.frame((rbind(unique(data_C_C$Von), unique(data_C_C$an)))))
ncol(as.data.frame((rbind(unique(data_C_SG$Von), unique(data_C_SG$an)))))
ncol(as.data.frame((rbind(unique(data_SG_SG$Von), unique(data_SG_SG$an)))))


# number of edges inkl. percentage
nrow(data_C_C)
nrow(data_C_C)/nrow(data)*100
nrow(data_C_SG)
nrow(data_C_SG)/nrow(data)*100
nrow(data_SG_SG)
nrow(data_SG_SG)/nrow(data)*100


# response time

## do the response times differ in the 3 groups


# average degree

## whats the average degree of my communication partner
## do the average degrees differ in the 3 groups
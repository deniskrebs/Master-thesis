
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 

# Date as number (1:595)
dta <- data[,c("Von", "An", "DATE")]
# rm NA
dta <- na.omit(dta)
# rm "#NV"
a <- unique(c(dta$Von, dta$An))
dta[Von == "#NV"]
dta[An == "#NV"]
dta <- dta[Von != "#NV"]
# remove Von == An
dta$same <- 0
dta[Von == An]$same <- 1
dta <- dta[same == 0]
dta <- dta[, c("Von", "An", "DATE")]
# Date as number
DATE <- seq(as.Date(min(dta$DATE)), as.Date(max(dta$DATE)), "days") 
DATE <- as.data.table(DATE) 
DATE$number <- c(1:nrow(DATE))
dta$DATE <- as.Date(dta$DATE)
dta <- merge(dta, DATE, by = "DATE")
dta <- dta[, c("Von", "An", "number")]
setnames(dta, c("Von", "An", "DATE"))



### Split into 11 subsets - from dynsnap
subset1 <- subset(dta, DATE >= 1 & DATE <= 80)
subset2 <- subset(dta, DATE >= 80 & DATE <= 158)
subset3 <- subset(dta, DATE >= 158 & DATE <= 213)
subset4 <- subset(dta, DATE >= 213 & DATE <= 264)
subset5 <- subset(dta, DATE >= 264 & DATE <= 306)
subset6 <- subset(dta, DATE >= 306 & DATE <= 353)
subset7 <- subset(dta, DATE >= 353 & DATE <= 389)
subset8 <- subset(dta, DATE >= 389 & DATE <= 437)
subset9 <- subset(dta, DATE >= 437 & DATE <= 505)
subset10 <- subset(dta, DATE >= 505 & DATE <= 564)
subset11 <- subset(dta, DATE >= 564 & DATE <= 595)

data <- subset1
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset2
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset3
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset4
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset5
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset6
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset7
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset8
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset9
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset10
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset11
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")

#back to full dataset
source("./1_LoadData.R") 
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


### split into intervals of 4 weeks
subset1 <- subset(dta, DATE >= 1 & DATE <= 28)
subset2 <- subset(dta, DATE >= 28 & DATE <= 56)
subset3 <- subset(dta, DATE >= 56 & DATE <= 84)
subset4 <- subset(dta, DATE >= 84 & DATE <= 112)
subset5 <- subset(dta, DATE >= 112 & DATE <= 140)
subset6 <- subset(dta, DATE >= 140 & DATE <= 168)
subset7 <- subset(dta, DATE >= 168 & DATE <= 196)
subset8 <- subset(dta, DATE >= 196 & DATE <= 224)
subset9 <- subset(dta, DATE >= 224 & DATE <= 252)
subset10 <- subset(dta, DATE >= 252 & DATE <= 280)
subset11 <- subset(dta, DATE >= 280 & DATE <= 308)
subset12 <- subset(dta, DATE >= 308 & DATE <= 336)
subset13 <- subset(dta, DATE >= 336 & DATE <= 364)
subset14 <- subset(dta, DATE >= 364 & DATE <= 392)
subset15 <- subset(dta, DATE >= 392 & DATE <= 420)
subset16 <- subset(dta, DATE >= 420 & DATE <= 448)
subset17 <- subset(dta, DATE >= 448 & DATE <= 476)
subset18 <- subset(dta, DATE >= 476 & DATE <= 504)
subset19 <- subset(dta, DATE >= 504 & DATE <= 532)
subset20 <- subset(dta, DATE >= 532 & DATE <= 560)
subset21 <- subset(dta, DATE >= 560 & DATE <= 595)


data <- subset1
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset2
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset3
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset4
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset5
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset6
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset7
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset8
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset9
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset10
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset11
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset12
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset13
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset14
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset15
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset16
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset17
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset18
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset19
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset20
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


data <- subset21
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")


#back to full dataset
source("./1_LoadData.R") 
source("./6_1_Centrality.R")
source("./6_1_NodeLevel.R")
source("./6_1_Communities.R")



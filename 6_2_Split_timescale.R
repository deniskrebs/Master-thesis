
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./0_Start.R")        ################ Skip if not complete data (IF C-C, C-SG, SG-SG, ...) ###########################
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
dynsnap_subset1 <- subset(dta, DATE >= 1 & DATE <= 80)
dynsnap_subset2 <- subset(dta, DATE >= 80 & DATE <= 158)
dynsnap_subset3 <- subset(dta, DATE >= 158 & DATE <= 213)
dynsnap_subset4 <- subset(dta, DATE >= 213 & DATE <= 264)
dynsnap_subset5 <- subset(dta, DATE >= 264 & DATE <= 306)
dynsnap_subset6 <- subset(dta, DATE >= 306 & DATE <= 353)
dynsnap_subset7 <- subset(dta, DATE >= 353 & DATE <= 389)
dynsnap_subset8 <- subset(dta, DATE >= 389 & DATE <= 437)
dynsnap_subset9 <- subset(dta, DATE >= 437 & DATE <= 505)
dynsnap_subset10 <- subset(dta, DATE >= 505 & DATE <= 564)
dynsnap_subset11 <- subset(dta, DATE >= 564 & DATE <= 595)

#data <- subset1
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset2
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset3
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset4
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset5
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset6
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset7
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset8
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset9
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset10
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


#data <- subset11
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")

##back to full dataset
#source("./1_LoadData.R") 
#source("./6_1_Centrality.R")
#source("./6_1_NodeLevel.R")
#source("./6_1_Communities.R")


### split into intervals of 4 weeks
fourweek_subset1 <- subset(dta, DATE >= 1 & DATE <= 28)
fourweek_subset2 <- subset(dta, DATE >= 28 & DATE <= 56)
fourweek_subset3 <- subset(dta, DATE >= 56 & DATE <= 84)
fourweek_subset4 <- subset(dta, DATE >= 84 & DATE <= 112)
fourweek_subset5 <- subset(dta, DATE >= 112 & DATE <= 140)
fourweek_subset6 <- subset(dta, DATE >= 140 & DATE <= 168)
fourweek_subset7 <- subset(dta, DATE >= 168 & DATE <= 196)
fourweek_subset8 <- subset(dta, DATE >= 196 & DATE <= 224)
fourweek_subset9 <- subset(dta, DATE >= 224 & DATE <= 252)
fourweek_subset10 <- subset(dta, DATE >= 252 & DATE <= 280)
fourweek_subset11 <- subset(dta, DATE >= 280 & DATE <= 308)
fourweek_subset12 <- subset(dta, DATE >= 308 & DATE <= 336)
fourweek_subset13 <- subset(dta, DATE >= 336 & DATE <= 364)
fourweek_subset14 <- subset(dta, DATE >= 364 & DATE <= 392)
fourweek_subset15 <- subset(dta, DATE >= 392 & DATE <= 420)
fourweek_subset16 <- subset(dta, DATE >= 420 & DATE <= 448)
fourweek_subset17 <- subset(dta, DATE >= 448 & DATE <= 476)
fourweek_subset18 <- subset(dta, DATE >= 476 & DATE <= 504)
fourweek_subset19 <- subset(dta, DATE >= 504 & DATE <= 532)
fourweek_subset20 <- subset(dta, DATE >= 532 & DATE <= 560)
fourweek_subset21 <- subset(dta, DATE >= 560 & DATE <= 595)

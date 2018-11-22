rm(list =ls())
library(data.table)
library(igraph)

setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


raw <- fread("raw.csv")
dta <- raw[,c("Von", "An", "DATE")]

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



# convert char to num
a <- unique(c(dta$Von, dta$An))
a <- as.data.table(a)
a$number <- c(1:nrow(a))

setnames(a, c("Von", "number"))
dta <- merge(dta, a, by = "Von")
setnames(dta, c("Von", "An", "DATE", "number_Von"))

setnames(a, c("An", "number"))
dta <- merge(dta, a, by = "An")
setnames(dta, c("Von", "An", "DATE", "number_Von", "number_An"))

dta <- dta[, c("number_Von", "number_An", "DATE")] 
setnames(dta, c("Von", "An", "DATE"))

DATE <- seq(as.Date(min(dta$DATE)), as.Date(max(dta$DATE)), "days") 
DATE <- as.data.table(DATE) 
DATE$number <- c(1:nrow(DATE))

dta$DATE <- as.Date(dta$DATE)

dta <- merge(dta, DATE, by = "DATE")
dta <- dta[, c("Von", "An", "number")]
setnames(dta, c("Von", "An", "DATE"))


write.table(dta, file = "dynsnap-master/edgelist.txt", col.names = F, row.names = F)

# in terminal: 
# cd ~C:\Users\Denis Krebs\Desktop\Thesis\dynsnap-master
# python events.py edgelist.txt edgelist.sqlite -t 2 
# python dynsnap.py edgelist.sqlite edgelist.out -p



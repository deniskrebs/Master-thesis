rm(list =ls())

library(igraph)
library(readr)
library(stringi)
library(lubridate)
library(dplyr)
library(ggplot2)
library(plyr)
library(SnowballC)
library(lsa)
library(dygraphs)
library(xts)          # To make the convertion data-frame / xts format
library(tidyverse)
library(data.table)
library(stringr)
library(yaml)
library(DiagrammeR)
library(visNetwork)
library(magrittr)
library(tm)
library(RColorBrewer)
library(wordcloud)
library(wordcloud2)
library(forcats)
library(linkcomm)
library(survival)
library(ggraph)
library(ape)
library(tidygraph)
library(cluster)
library(animation)
library(intergraph)
library(data.table)



# import raw data
#raw <- fread("raw.csv")
#raw <- subset(raw, select = -V1)
#raw <- subset(raw, select = -V1)

#data <- raw[,c("Von", "An", "DATE", "TIME", "Betreff")]
#data <- na.omit(data)
#write.csv(data, file = "data.csv")

data <- fread("data.csv", header = TRUE)   
data <- subset(data, select = -V1)
data <- na.omit(data)
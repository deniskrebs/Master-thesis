
# Set the working directory to the folder containing the workshop files:
setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")

source("./1_LoadData.R") 

# import raw data
raw <- fread("raw.csv")
raw <- subset(raw, select = -V1)
raw <- subset(raw, select = -V1)

table <- raw[,c("Von", "An", "DATE", "TIME", "Betreff")]
table <- na.omit(table)

#Wordcloud
subject <- table$Betreff
subject <- unique(subject)

library(wordcloud2)
library(dplyr)
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

#combining all the subjects
subjects_text <- paste(subject, collapse = " ")
#setting up source and corpus
subjects_source <- VectorSource(subjects_text)
corpus <- Corpus(subjects_source)
#cleaning
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)
#corpus <- tm_map(corpus, removeWords, stopwords("german"))
#corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removeWords, c("zugesagt:", "antwort:", "automatische:", "für", "und", "automatique", "acceptée:", "automatische", "zugesagt", "2017", 
                                        "antwort", "2018", "réponse", "abgelehnt", "acceptée", "von", "vom", "mit", "der", "zur", "pour", "2016", "bei", "bitte", 
                                        "and", "auf", "des", "ist", "die", "zum", "for", "sur", "den", "per", "bis", "akzeptiert", "aus", "über", "herr", "the", 
                                        "neue", "fwd", "avec", "nach", "vorbehalt", "besprechungsweiterleitung", "accepted", "nicht"))
corpus <- tm_map(corpus, PlainTextDocument)
wordcloud(corpus, scale = c(2, 0.5), max.words = 100, random.order = FALSE, rot.per = 0.55, use.r.layout = FALSE, colors = brewer.pal(8, "Dark2"))

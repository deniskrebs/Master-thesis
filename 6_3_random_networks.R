setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./6_3_IBN_plots.R")


##Create random graphs to compare IBN 

#erdös-renyi game

ecount_dyn1 <- ecount(g.simp.un_dyn1)
ecount_dyn2 <- ecount(g.simp.un_dyn2)
ecount_dyn3 <- ecount(g.simp.un_dyn3)
ecount_dyn4 <- ecount(g.simp.un_dyn4)
ecount_dyn5 <- ecount(g.simp.un_dyn5)
ecount_dyn6 <- ecount(g.simp.un_dyn6)
ecount_dyn7 <- ecount(g.simp.un_dyn7)
ecount_dyn8 <- ecount(g.simp.un_dyn8)
ecount_dyn9 <- ecount(g.simp.un_dyn9)
ecount_dyn10 <- ecount(g.simp.un_dyn10)
ecount_dyn11 <- ecount(g.simp.un_dyn11)
ecount_complete <- ecount(g.simp.un)

vcount_dyn1 <- vcount(g.simp.un_dyn1)
vcount_dyn2 <- vcount(g.simp.un_dyn2)
vcount_dyn3 <- vcount(g.simp.un_dyn3)
vcount_dyn4 <- vcount(g.simp.un_dyn4)
vcount_dyn5 <- vcount(g.simp.un_dyn5)
vcount_dyn6 <- vcount(g.simp.un_dyn6)
vcount_dyn7 <- vcount(g.simp.un_dyn7)
vcount_dyn8 <- vcount(g.simp.un_dyn8)
vcount_dyn9 <- vcount(g.simp.un_dyn9)
vcount_dyn10 <- vcount(g.simp.un_dyn10)
vcount_dyn11 <- vcount(g.simp.un_dyn11)
vcount_complete <- vcount(g.simp.un)

random_er_dyn1 <- erdos.renyi.game(vcount_dyn1, ecount_dyn1, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn2 <- erdos.renyi.game(vcount_dyn2, ecount_dyn2, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn3 <- erdos.renyi.game(vcount_dyn3, ecount_dyn3, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn4 <- erdos.renyi.game(vcount_dyn4, ecount_dyn4, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn5 <- erdos.renyi.game(vcount_dyn5, ecount_dyn5, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn6 <- erdos.renyi.game(vcount_dyn6, ecount_dyn6, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn7 <- erdos.renyi.game(vcount_dyn7, ecount_dyn7, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn8 <- erdos.renyi.game(vcount_dyn8, ecount_dyn8, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn9 <- erdos.renyi.game(vcount_dyn9, ecount_dyn9, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn10 <- erdos.renyi.game(vcount_dyn10, ecount_dyn10, type = "gnm", directed = FALSE, loops = FALSE)
random_er_dyn11 <- erdos.renyi.game(vcount_dyn11, ecount_dyn11, type = "gnm", directed = FALSE, loops = FALSE)
random_er_complete <- erdos.renyi.game(vcount_complete, ecount_complete, type = "gnm", directed = FALSE, loops = FALSE)


#degseq

random_degseq_dyn1 <- sample_degseq(degree(g.simp.un_dyn1), in.deg = NULL, method = "simple")
random_degseq_dyn2 <- sample_degseq(degree(g.simp.un_dyn2), in.deg = NULL, method = "simple")
random_degseq_dyn3 <- sample_degseq(degree(g.simp.un_dyn3), in.deg = NULL, method = "simple")
random_degseq_dyn4 <- sample_degseq(degree(g.simp.un_dyn4), in.deg = NULL, method = "simple")
random_degseq_dyn5 <- sample_degseq(degree(g.simp.un_dyn5), in.deg = NULL, method = "simple")
random_degseq_dyn6 <- sample_degseq(degree(g.simp.un_dyn6), in.deg = NULL, method = "simple")
random_degseq_dyn7 <- sample_degseq(degree(g.simp.un_dyn7), in.deg = NULL, method = "simple")
random_degseq_dyn8 <- sample_degseq(degree(g.simp.un_dyn8), in.deg = NULL, method = "simple")
random_degseq_dyn9 <- sample_degseq(degree(g.simp.un_dyn9), in.deg = NULL, method = "simple")
random_degseq_dyn10 <- sample_degseq(degree(g.simp.un_dyn10), in.deg = NULL, method = "simple")
random_degseq_dyn11 <- sample_degseq(degree(g.simp.un_dyn11), in.deg = NULL, method = "simple")
random_degseq_complete <- sample_degseq(degree(g.simp.un), in.deg = NULL, method = "simple")





#source("./6_3_edgelists_IBN_maximization.R")





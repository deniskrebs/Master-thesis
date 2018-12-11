setwd("C:/Users/Denis Krebs/Desktop/Thesis/Analysis")


source("./6_2_Split_timescale.R")
source("./2_LoadData.R")


A <- as_adjacency_matrix(g.simp.un_dyn1,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn1.edges")


A <- as_adjacency_matrix(g.simp.un_dyn2,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn2.edges")


A <- as_adjacency_matrix(g.simp.un_dyn3,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn3.edges")


A <- as_adjacency_matrix(g.simp.un_dyn4,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn4.edges")


A <- as_adjacency_matrix(g.simp.un_dyn5,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn5.edges")


A <- as_adjacency_matrix(g.simp.un_dyn6,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn6.edges")


A <- as_adjacency_matrix(g.simp.un_dyn7,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn7.edges")


A <- as_adjacency_matrix(g.simp.un_dyn8,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn8.edges")


A <- as_adjacency_matrix(g.simp.un_dyn9,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn9.edges")


A <- as_adjacency_matrix(g.simp.un_dyn10,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn10.edges")


A <- as_adjacency_matrix(g.simp.un_dyn11,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "dyn11.edges")


A <- as_adjacency_matrix(g.simp.un,type="both",names=TRUE,sparse=FALSE)
R <- rownames(A)
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- colnames(A)
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "complete.edges")




#random graphs
A <- as_adjacency_matrix(random_degseq_dyn1,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn1.edges")


A <- as_adjacency_matrix(random_degseq_dyn2,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn2.edges")


A <- as_adjacency_matrix(random_degseq_dyn3,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn3.edges")


A <- as_adjacency_matrix(random_degseq_dyn4,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn4.edges")


A <- as_adjacency_matrix(random_degseq_dyn5,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn5.edges")


A <- as_adjacency_matrix(random_degseq_dyn6,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn6.edges")


A <- as_adjacency_matrix(random_degseq_dyn7,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn7.edges")


A <- as_adjacency_matrix(random_degseq_dyn8,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn8.edges")


A <- as_adjacency_matrix(random_degseq_dyn9,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn9.edges")


A <- as_adjacency_matrix(random_degseq_dyn10,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn10.edges")


A <- as_adjacency_matrix(random_degseq_dyn11,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqdyn11.edges")






A <- as_adjacency_matrix(random_er_dyn1,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn1.edges")


A <- as_adjacency_matrix(random_er_dyn2,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn2.edges")


A <- as_adjacency_matrix(random_er_dyn3,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn3.edges")


A <- as_adjacency_matrix(random_er_dyn4,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn4.edges")


A <- as_adjacency_matrix(random_er_dyn5,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn5.edges")


A <- as_adjacency_matrix(random_er_dyn6,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn6.edges")


A <- as_adjacency_matrix(random_er_dyn7,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn7.edges")


A <- as_adjacency_matrix(random_er_dyn8,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn8.edges")


A <- as_adjacency_matrix(random_er_dyn9,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn9.edges")


A <- as_adjacency_matrix(random_er_dyn10,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn10.edges")


A <- as_adjacency_matrix(random_er_dyn11,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "erdyn11.edges")





A <- as_adjacency_matrix(random_er_complete,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "ercomplete.edges")


A <- as_adjacency_matrix(random_degseq_complete,type="both",names=TRUE,sparse=FALSE)
dim(A)
R <- c(1:dim(A))
R <- as.data.frame(R)
R <- as.matrix(as.data.frame(lapply(R, as.numeric)))
C <- c(1:dim(A))
C <- as.data.frame(C)
C <- as.matrix(as.data.frame(lapply(R, as.numeric)))
rownames(A) <-- R*(-1)
colnames(A) <-- C*(-1)
eList <- NULL
for ( i in 1:nrow(A) ){
  for ( j in 1:ncol(A)) {
    eList <- c(eList, rep(paste(dimnames(A) [[1]][i], dimnames(A)[[2]][j] ), A[i,j]))
  }
}
eList
write(eList, file = "degseqcomplete.edges")
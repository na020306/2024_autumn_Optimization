library(lpSolve)

obj<-c(0.3,0.72)
con<-matrix(c(1,3,
              0,1,
              1,0,
              0,1,
              1,0),nrow = 5, byrow = TRUE)
dir <- c("<=",">=","<=",">=","<=")
rhs <- c(15.5,1,5,5,3)

lp("max",obj,con,dir,rhs)
lp("max",obj,con,dir,rhs)$solution


# 강의 자료 3번 13P homework 문제풀이!!
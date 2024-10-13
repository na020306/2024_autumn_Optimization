install.packages("lpSolve")
library(lpSolve)

obj <- c(0.4,0.6)
con <- matrix(c(5,10,
                1,1,
                0,1,
                1,0,
                0,1),nrow = 5,byrow = TRUE)
dir <- c("<=","<=",">=",">=",">=")
rhs <- c(38,
         5,
         1,
         2,
         3)
lp("max",obj,con,dir,rhs)
lp("max",obj,con,dir,rhs)$solution


#R로 lp문제 푸는법
# 1. lpSolve 패키지 설치, 적용
# 2. obj : 목적함수의 계수 (행벡터)
#    con : 제약식 계수 (행렬, nrow, byrow설정)
#    dir : 부등호
#    rhs : 우변벡터 (열벡터)
# 3. lp("max",obj,con,dir,rhs)
#    lp("max",obj,con,dir,rhs)$solution 
# 최적화된 z값과 최적해 구하기
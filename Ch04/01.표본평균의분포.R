### 표본 평균 Xbar의 분포
m10 = rep(NA, 1000)     # m10 = 크기가 10인 표본을 1000번 시행한 사건의 평균
m40 = rep(NA, 1000)     # m40 = 크기가 40인 표본을 1000번 시행한 사건의 평균

set.seed(9)
for (i in 1:1000) {
    m10[i] = mean(rnorm(10)) 
    m40[i] = mean(rnorm(40))
}

# 표본 평균의 평균과 표준편차
options(digits = 4)
c(mean(m10), sd(m10))
c(mean(m40), sd(m40))

par(mfrow=c(2,1))               # 서브플롯 (행, 열)
hist(m10, xlim=c(-1.5, 1.5), main='표본의 크기 : 10', xlab='x', ylab='', col='lightblue', border='navy')
hist(m40, xlim=c(-1.5, 1.5), main='표본의 크기 : 40', xlab='x', ylab='', col='lightblue', border='navy')
par(mfrow=c(1,1))

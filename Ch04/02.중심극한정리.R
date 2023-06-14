##### 중심극한정리
### 모집단이 정규분포일 경우
options(digits = 4)
set.seed(9)
n = 1000
r1.mean = rep(NA, n)
r2.mean = rep(NA, n)

for (i in 1:n) {
    r1.mean[i] = mean(rnorm(4, 3, 1))   # N(3, 1^2)
    r2.mean[i] = mean(rnorm(4,170, 6))  # N(170, 6^2)
}

# 표본평균의 평균과 표준편차
c(mean(r1.mean), sd(r1.mean))           # 3.0212, 0.5106
c(mean(r2.mean), sd(r2.mean))           # 170.031, 2.835

# 그래프로 확인
hist(r1.mean, probability = T, xlab = '표본평균', ylab = '밀도', main = '(3, 1^2)',
     col = 'darkblue', border = 'white')
x1 = seq(min(r1.mean), max(r1.mean), length=n)
y1 = dnorm(x1, 3, 0.5)
lines(x1, y1, lty=2, lwd=2, col='blue')

hist(r2.mean, probability = T, xlab = '표본평균', ylab = '밀도', main = '(170, 6^2)',
     col = 'darkblue', border = 'white')
x1 = seq(min(r2.mean), max(r2.mean), length=n)
y1 = dnorm(x1, 170, 2.8)
lines(x1, y1, lty=2, lwd=2, col='black')

# 모집단이 임의의 분포 (이항분포)일 경우
set.seed(9)
t = 10
p = 0.1
x = 0:10
n = 1000
b2.mean = rep(NA, n)
b4.mean = rep(NA, n)
b32.mean = rep(NA, n)
b64.mean = rep(NA, n)

# 표본 크기별로 1000번의 표본추출로 표본평균을 구함
for (i in 1:n) {
    b2.mean[i] = mean(rbinom(2, t, p))
    b4.mean[i] = mean(rbinom(4, t, p))
    b32.mean[i] = mean(rbinom(32, t, p))
    b64.mean[i] = mean(rbinom(64, t, p))
}

# 표본 평균의 평균 및 표준편차
c(mean(b2.mean), sd(b2.mean))# 1.0090, 0.6763
c(mean(b4.mean), sd(b4.mean))# 1.006, 0.481
c(mean(b32.mean), sd(b32.mean))# 0.9989, 0.1624
c(mean(b64.mean), sd(b64.mean))# 0.9962, 0.1119

# 이항분포 B(10, 0.1)의 평균, 분산, 표준편차
c(10 * 0.1, 10*0.1*0.9, sqrt(10*0.1*0.9))

# 그래프로 확인
par(mfrow = c(2,2))
hist(b2.mean, probability = T, main = '표본크기 : 2', col = 'darkblue', border = 'white',
     xlim = c(0, 4))
x1 = seq(min(b2.mean), max(b2.mean), length=1000)
y1 = dnorm(x1, 1, sqrt(0.9)/sqrt(2))
lines(x1, y1, lty=2, lwd=2, col='blue')

hist(b4.mean, probability = T, main = '표본크기 : 4', col = 'darkblue', border = 'white',
     xlim = c(0, 4))
x2 = seq(min(b4.mean), max(b4.mean), length=1000)
y2 = dnorm(x2, 1, sqrt(0.9)/sqrt(4))
lines(x2, y2, lty=2, lwd=2, col='blue')

hist(b32.mean, probability = T, main = '표본크기 : 32', col = 'darkblue', border = 'white',
     xlim = c(0, 4))
x1 = seq(min(b32.mean), max(b32.mean), length=1000)
y1 = dnorm(x1, 1, sqrt(0.9)/sqrt(32))
lines(x1, y1, lty=2, lwd=2, col='blue')

hist(b64.mean, probability = T, main = '표본크기 : 64', col = 'darkblue', border = 'white',
     xlim = c(0, 4))
x1 = seq(min(b64.mean), max(b64.mean), length=1000)
y1 = dnorm(x1, 1, sqrt(0.9)/sqrt(64))
lines(x1, y1, lty=2, lwd=2, col='blue')
par(mfrow = c(1,1))











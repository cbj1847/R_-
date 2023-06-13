pop = read.csv('data/2010년 인구사항.csv', header=FALSE, na.strings = '.')
str(pop)

pop$V1 = factor(pop$V1, levels = c(1, 2), labels = c('남자', '여자'))
head(pop, 2)

pop$V3 = factor(pop$V3, levels=c(1:14), labels=c("가구주", "가구주의 배우자", "자녀", "자녀의 배우자", "가구주의 부모", "배우자의 부모", 
"손자녀, 그 배우자", "증손자녀, 그 배우자","조부모", "형제자매, 그 배우자","형제자매의 자녀,그 배우자","부모의 형제자매, 그 배우자",
"기타 친인척", "그외같이사는사람"))
head(pop, 2)

pop$V4 = factor(pop$V4, levels=c(1:8), labels=c("안 받았음", "초등학교", "중학교","고등학교", "대학-4년제 미만", "대학-4년제 이상", 
                                                   "석사과정", "박사과정"))
head(pop, 2)

# binary file로 저장
save.image('data/pop.rda')

load('data/pop.rda')
tableV1=table(pop$V1)
barplot(tableV1, main='남여인구수', xlab='성별', ylab='인구', col='navy')

tableV5 = table(pop$V5)
tableV5
barplot(tableV5, main='출생아별 빈도', xlab='출생아수', ylab='빈도', col='navy')

hist(pop$V2, main='연령별 분포', xlab='연령', ylab='빈도', col='navy')
hist(pop$V2, main='연령별 분포', xlab='연령', ylab='빈도', col='navy', breaks = seq(0,90,10), right=F, )
hist(pop$V2, main='연령별 분포', xlab='연령', ylab='밀도', col='navy', breaks = seq(0,90,10), probability = T, )

tableV4 = table(pop$V4)
tableV4
pie(tableV4, main='학력별 비중', cex=0.8)

install.packages('ggplot2')


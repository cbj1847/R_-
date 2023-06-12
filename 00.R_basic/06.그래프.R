##### Scatter
plot(c(1:10), c(3:12), pch=0, col="red", main='산점도', xlab='X_label', ylab='Y_label')

##### Linegraph
plot(c(0:10),c(0:10)**2, type="l", lwd=3, col='blue', xlab='X_label', ylab='Y_label')

##### Piechart
x = c(10, 20, 30, 40)
pie(x, init.angle = 90, labels=c("Apples", "Bananas", "Cherries", "Dates"), main='My favorite fruits')

##### Barchart
x = c('A', 'B', 'C', 'D')
y = c(3, 4, 6, 7)
barplot(y, names.arg = x, col='orange')


## 1
father = c(150, 160, 170, 180, 190)
son = c(176, 179, 182, 181, 185)

lm(son ~ father)
y = 0.2*x + 146.6
0.2*165 + 146.6 # 179.6


## 2
mi = c(100, 200, 300, 400, 500)
cu = c(30, 70, 85, 140, 197)
lm(cu ~ mi)
y = 0.404*x -16.800
0.404*250-16.800 # 84.2만원

## 3
head(mtcars)
q3 = lm(hp ~ disp, data=mtcars)
q3$coefficients
# hp = 0.4376 * disp + 45.7345
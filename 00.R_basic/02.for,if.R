##### 조건문
a = 33
b = 200

if (a < b) {
    print("b is greater than a")
}

# R은 indentation 무관
if (a < b) {
    print("b is greater than a")
} else if (a == b) {
    print("b equal to a")
} else {
    print('a is greater than b')
}

##### While 반복문
# 1에서 몇까지 더하면 1000을 넘길까
cum.sum = 0
i = 1
while(cum.sum <= 1000) {
     cum.sum = cum.sum + i
     i = i + 1
}
print(paste(i, cum.sum))

cum.sum = 0
i = 1
while(1) {
    if (cum.sum > 1000) {
        break
    }
    cum.sum = cum.sum + i
    i = i + 1
}
print(paste(i, cum.sum))

##### For 반복문
for (x in 1:10) {       # 1 ~ 10까지의 sequence
    print(x)
}

# vector
dice = c(1, 2, 3, 4, 5, 6)      # <- vector
for (x in dice) {
    print(x)
}

# list
fruits = list('apple', 'banana', 'cherry')
for (fruit in fruits) {
    print(fruit)
}

# suquence
for (i in seq(1, 10, 2)) {
    print(i)
}
for (i in 1:10) {
    if (i %% 2 == 0) {
        next
    }
    print(i)
}

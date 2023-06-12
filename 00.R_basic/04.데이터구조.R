##### Vectors
fruits = c('apple', 'banana', 'cherry')
numbers = c(1, 2, 3L)
numbers

seqs = 1:10     # 시작:끝
seqs = 6:1
nums = 1.5:5.5
print(nums)

# sequence
seq(from=1, to=10, by=2)    # == seq(1, 10, 2)
seq(0, 1, 0.1)
seq(0, 1, length.out=11)    # == np.linspace(0, 1, 11) / python

# repeat
rep(c(1:3), times=2)
rep(c(1:3), each=2)

##### Sorting
fruits = c('apple', 'banana', 'cherry', 'mango', 'melon')
numbers = c(1, 2, 13, 5, 7, 20)
sort(fruits)        # 오름차순
sort(numbers)   
numbers             # sort() 함수는 자기 파괴적이지 않음

##### Indexing
fruits[1]           # 첫번째 요소, banana
fruits[-1]          # temp[-n] : n번째요소를 제외한 나머지

##### Slicing
fruits[2:4]

##### Selection
fruits[c(1, 4, 5)]

##### 값 변경
fruits[1] = 'pear'

##### List
numbers = list(1, 2, 3L, 4+3i)

##### 요소의 갯수
length(fruits)
length(numbers)

##### Matrix
m1 = matrix(c(1:6), nrow=2, ncol=3)
m1
m2 = matrix(c(1:6), nrow=3, ncol=2)
m2
##### indexing
m1[1, 2]
m2[3, 1]

##### 행/열 단위의 인덱싱
thismatrix <- matrix(c('apple', 'banana', 'cherry', 'mango', 'melon'))
thismatrix
thismatrix[c(1,2),]

##### bind
v1 = c(10, 20, 30)
m1 = rbind(m1, v1)      # 행 단위로 바인딩
m1
m1 = cbind(m1, c(100, 200, 300))    # 열을 갖다 붙임
m1

# 행렬 곱
m1 = matrix(c(1:6), nrow=2, ncol=3)
m1
m2 = matrix(c(1:6), nrow=3, ncol=2)
m2
m1 %*% m2

# 전치행렬
t(m1)

# Array
arr = array(1:24, dim=c(2,3,4))
arr
dim(arr)
length(arr)

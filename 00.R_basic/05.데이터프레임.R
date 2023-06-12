##### Data Frame
name = c('James', 'Maria', 'Brian')
age = c(22, 20, 25)
gender = factor(c('M', 'F', "M"))   # 범주형 데이터
blood = factor(c('A', 'O', 'B'))

patients = data.frame(name, age, gender, blood)
patients

# 이름 열
patients$name
typeof(patients$name)
typeof(patients$gender)

# 행, 열을 인덱싱으로 선택할 수도 있음
patients[, 1]
patients[1, ]

# 하나의 값을 인덱싱 - 마리아의 나이
patients$age[2]
patients[2, 2]

# Filtering
patients[patients$gender == 'F',]
patients[patients$blood == 'A',]

# Selection
patients[, c('age', 'gender', 'blood')]

# Filtering and Selection
patients[patients$gender == 'M', c('age', 'gender', 'blood')]
patients[c(1,3), c(2:4)]

# 레코드 추가 (행 추가)
length(patients)
patients[length(patients$name)+1, ] = c('Emma', 24, 'F', 'A')
patients

# 컬럼 추가
patients['country'] = c('UK', 'US', 'AU', 'US')
patients

# 크기
dim(patients)

##### Factor
genre = factor(c('Jazz', 'Rock', 'Classic', 'Classic', 'Pop', 'Jazz', 'Rock', 'Jazz'))
genre
levels(genre)

##### R dataset
head(cars)
tail(cars)
mean(cars$speed)
max(cars$dist)

tail(airquality)
mean(airquality$Ozone)

### 결측치(NA) 처리
# 1. 결측치 확인
str(airquality)
sum(is.na(airquality))                      # 전체에서 결측치가 있는지 확인
for (i in 1:length(airquality)) {           # 컬럼별로 결측치가 있는지 확인
    print(sum(is.na(airquality[, i])))    
}
for (col in colnames(airquality)) {
    print(paste(col, sum(is.na(airquality[, col]))))
}

# 2. 결측치 처리
# Ozone 결측치 mean값으로 대체
mean(airquality$Ozone, na.rm = TRUE)        # 결측치를 제외한 평균
airquality$Ozone = ifelse(is.na(airquality$Ozone),
                          mean(airquality$Ozone, na.rm = TRUE), airquality$Ozone)  # 조건, 참일때값, 거짓일때값
sum(is.na(airquality$Ozone))

# Solar.R 결측치를 median값으로 대체
median(airquality$Solar.R, na.rm = TRUE)
airquality$Solar.R = ifelse(is.na(airquality$Solar.R),
                            median(airquality$Solar.R, na.rm = TRUE), airquality$Solar.R)
sum(is.na(airquality$Solar.R))

# 맨 마지막줄에 결측치 데이터를 추가한 후 제거
airquality[length(airquality$Ozone)+1,] = c(NA,NA,NA,NA,NA,NA)
tail(airquality)
airquality = tail(na.omit(airquality))
tail(airquality, 3)

##### R 변수
name <- 'James'
age = 25        # 할당 연산자로 <-, = 사용가능

name
age
print(age)
print(name, age)    # 자바, R에서 print함수에 하나의 인자밖에 못씀
print(paste(name, age))     # "James 25"
print(paste0(name, age))    # "James25"

# 변수명 - 단어와 단어 사이의 구분자로 .을 주로 사용
person.name <- 'Maria'
person.gender <- "Female"
person.age <- 23

##### R 데이터 타입
# 1. numeric
x = 10.5
class(x)

# 2. integer (정수형숫자뒤에 L붙여줘야 정수형으로 지정됨)
y = 100L
class(y)

# 3. complex(복소수)
z = 9 + 3i
class(z)
print(z**2)

# 4. character/string(문자열)
s = "R is exciting"
class(s)

# 5. logical/boolean(TRUE, FALSE, T, F)
class(T)

##### Type conversion
as.numeric(y)       #100
as.numeric(TRUE)    #1
as.character(F)     #"FALSE"

##### Math
10 + 5
'10' + '5'      # string concatenation은 paste함수를 사용
max(5, 10, 15)  #15
min(5, 10 , 15) #5
sqrt(16)        #4
ceiling(1.4)    #2
floor(2.6)      #2

##### Strings
str <- "Lorem ipsum dolor sit amet,    
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."       # multi-line string
strsplit(str, "\n")     # \n
cat(str)                # \n 대신에 출력에 줄바꿈이 들어감
length(str)             # 1
nchar(str)              # 123 / 문자의 갯수

##### Oeprator
# 1. 산술연산자 : +, -, *, /
2 ^ 5           # 32 / exponent
5 %% 2          # 1 / modulo
5 %/% 2         # 2 / 몫 

# 2. 비교연산자 : 파이썬과 동일

# 3. 논리연산자 : &, &&, |, ||, !
x > 10 && x < 20                # Logical AND, 10 < x < 20
person.age > 24 || age > 24     # Logical OR
(!nchar(s) > 5)                 # Logical NOT

c(F, F, T, T) & c(F, T ,F, T)
c(F, F, T, T) | c(F, T ,F, T)

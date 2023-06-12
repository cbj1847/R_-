##### 함수
hello_fnc = function() {
    print('Hello World')
}
hello_fnc()

# 파라메터 전달
add_fnc = function(a, b) {
    return(a + b)
}
add_fnc(13, 5)

# Default parameter
my_fnc = function(country = 'korea') {
    return(paste("i'm from", country))
}
my_fnc('mars')
my_fnc()

# Recursion : Fibonacci
fibo = function(n) {
    if (n == 1 || n == 2) {
        return(1)
    }
    return(fibo(n-1) + fibo(n-2))
}
for (i in 1:10) {
    print(paste(i, fibo(i)))
}

##### global variables
txt = 'glob_var'
my_fnc2 = function() {
    txt = 'fantastic'
    print(paste('R is', txt))
}
my_fnc2()
print(txt)

let n = Int(readLine()!)!
var fibo = Array(repeating: 0, count: 46)
fibo[1] = 1

for i in 2...n {
    fibo[i] = fibo[i-1]+fibo[i-2]
}

print(fibo[n])
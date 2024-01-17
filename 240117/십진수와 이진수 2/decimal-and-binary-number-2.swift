let input = readLine()!.map{Int(String($0))!}
var temp = 0, n = 1

for i in input.reversed() {
    temp += i*n
    n*=2
}

temp *= 17
var result = ""

while temp > 0 {
    result += "\(temp%2)"
    temp /= 2
}

print(String(result.reversed()))
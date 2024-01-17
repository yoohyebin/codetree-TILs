var input = readLine()!.map{Int(String($0))!}
var result = 0
var n = 1

for i in input.reversed() {
    result += n*i
    n *= 2
}

print(result)